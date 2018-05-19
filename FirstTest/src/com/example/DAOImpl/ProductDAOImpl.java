package com.example.DAOImpl;

import com.example.DAO.ProductDAO;
import com.example.bean.ProductModel;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * Created by Folio 9480 on 2/10/2018.
 */
public class ProductDAOImpl extends HibernateDaoSupport implements ProductDAO {

    @Override
    public List<ProductDAO> listProduct() {
        return null;
    }

    @Override
    public void saveProduct(ProductModel productModel) {
        getHibernateTemplate().save(productModel);
    }

    @Override
    public void updateProduct(ProductModel productModel) {
        getHibernateTemplate().update(productModel);

    }

    @Override
    public void deleteProduct(String productId) {
        Session session=getHibernateTemplate().getSessionFactory().getCurrentSession();
        Transaction transaction=session.beginTransaction();
        StringBuilder queryBilder=new StringBuilder("Delete from ProductModel where product_Id=:product_Id");
        Query query=session.createQuery(queryBilder.toString());
        query.setParameter("product_Id",productId);
        int result=query.executeUpdate();
        transaction.commit();
    }

    @Override
        public ArrayList<ProductModel> getAllProductDataList() {
        StringBuffer query=new StringBuffer("from ProductModel Order by productId desc");
        ArrayList<ProductModel> productList= (ArrayList<ProductModel>) getHibernateTemplate().find(query.toString());
        return productList;
    }

}
