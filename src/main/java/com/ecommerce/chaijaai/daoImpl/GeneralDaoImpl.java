package com.ecommerce.chaijaai.daoImpl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.ecommerce.chaijaai.dao.GeneralDao;
import com.ecommerce.chaijaai.model.Product;

@Repository
@Transactional
public class GeneralDaoImpl implements GeneralDao{

	@PersistenceContext
	EntityManager em;
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> productsOnType(String type) {
		Query query = em.createQuery("Select p  from Product p where p.type.name = :name").setParameter("name",type);
		return query.getResultList();
		
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Product> productsOnFlavor(String flavor) {
		Query query = em.createQuery("Select p  from Product p where p.flavor.name = :name").setParameter("name",flavor);
		return query.getResultList();
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> productsOnTypeAndFlavour(String type,String flavor){
		Query query = em.createQuery("Select p from Product p where p.type.name = :type and p.flavor.name = :flavor")
									.setParameter("type", type).setParameter("flavor",flavor);
		return query.getResultList();
	}
}
