package com.ecommerce.chaijaai;

import java.util.HashSet;
import java.util.Set;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.SecurityAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.format.support.FormattingConversionServiceFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

import com.ecommerce.chaijaai.model.ProductCategory;
import com.ecommerce.chaijaai.model.ProductFlavor;
import com.ecommerce.chaijaai.model.ProductType;
import com.ecommerce.chaijaai.model.ProductUnit;
import com.ecommerce.chaijaai.utils.StringToEntityConverter;


@Controller
@EnableAutoConfiguration
@SpringBootApplication(exclude = {SecurityAutoConfiguration.class })
public class ChaiJaaiApplication extends SpringBootServletInitializer {

	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder applicationBuilder) {
		return applicationBuilder.sources(ChaiJaaiApplication.class);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(ChaiJaaiApplication.class, args);
	}
	
	@Bean
	public TilesConfigurer tilesConfigurer() {
		TilesConfigurer tilesConfigurer = new TilesConfigurer();
		System.err.println("in tiles config");
		String def[] = {"/WEB-INF/tiles/admin.xml","/WEB-INF/tiles/user.xml"};
		tilesConfigurer.setDefinitions(def);
		return tilesConfigurer;
	}
	
	@Bean
	public UrlBasedViewResolver tilesViewResolver() {
		UrlBasedViewResolver tilesViewResolver = new UrlBasedViewResolver();
		tilesViewResolver.setViewClass(TilesView.class);
		return tilesViewResolver;
	}
	
	@Bean(name="conversionService")
	public FormattingConversionServiceFactoryBean converter() {
		FormattingConversionServiceFactoryBean conversionService = new FormattingConversionServiceFactoryBean();
		
		StringToEntityConverter categoryConverter = new StringToEntityConverter(ProductCategory.class);
		StringToEntityConverter typeConverter = new StringToEntityConverter(ProductType.class);
		StringToEntityConverter unitConverter = new StringToEntityConverter(ProductUnit.class);
		StringToEntityConverter flavorConverter = new StringToEntityConverter(ProductFlavor.class);

		
		Set<StringToEntityConverter> converters = new HashSet<>();
		converters.add(categoryConverter);
		converters.add(typeConverter);
		converters.add(unitConverter);
		converters.add(flavorConverter);
		
		conversionService.setConverters(converters);
		return conversionService;
	}
}
