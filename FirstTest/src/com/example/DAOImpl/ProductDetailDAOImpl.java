package com.example.DAOImpl;

import com.example.DAO.ProductDAO;
import com.example.DAO.ProductDetailDAO;
import com.example.bean.ProductDetailModel;
import com.example.bean.ProductModel;
import com.example.dto.ProductDetailDTO;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Projections;
import org.hibernate.transform.Transformers;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.ArrayList;

import java.util.List;

/**
 * Created by Folio 9480 on 3/17/2018.
 */
public class ProductDetailDAOImpl extends HibernateDaoSupport implements ProductDetailDAO {
    @Override
    public List<ProductDAO> listProductDetail() throws Exception {
        return null;
    }

    @Override
    public void saveProductDetail(ProductDetailModel productDetailModel) throws Exception {
        getHibernateTemplate().save(productDetailModel);
    }

    @Override
    public void updateProductDetail(ProductDetailModel productDetailModel) throws Exception {
        getHibernateTemplate().update(productDetailModel);
    }

    @Override
    public void deleteProductDetail(String productId, String productdetailId) throws Exception {
        Session session = getHibernateTemplate().getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        StringBuilder queryBilder = new StringBuilder("Delete from ProductDetailModel where product_Id=:product_Id and pd_Id=:pd_Id");
        Query query = session.createQuery(queryBilder.toString());
        query.setParameter("product_Id", productId);
        query.setParameter("pd_Id", productdetailId);
        int result = query.executeUpdate();
        transaction.commit();
    }

    @Override
    public ArrayList<ProductDetailDTO> getAllProductDataList() throws Exception {


        StringBuffer queryBuilder = new StringBuffer(" SELECT pr.product_name,prd.pd_id ,pd_name,pd_price ,prd.product_id FROM product_detail prd LEFT JOIN product pr ");
        queryBuilder.append(" ON prd.product_id=pr.product_id ");

        Session session = getHibernateTemplate().getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        SQLQuery query = session.createSQLQuery(queryBuilder.toString());

        ArrayList<ProductDetailDTO> productDetailDTOList = new ArrayList<ProductDetailDTO>();


        List<Object[]> list = query.list();

        for (int index = 0; index < list.size(); index++) {
            Object[] productDetailObj = list.get(index);


            ProductDetailDTO productDetailDTO = new ProductDetailDTO();
            productDetailDTO.setProductName(productDetailObj[0].toString());
            productDetailDTO.setProductDetailId(productDetailObj[1].toString());
            productDetailDTO.setProductDetailName(productDetailObj[2].toString());
            productDetailDTO.setProductDetailprice(productDetailObj[3].toString());
            productDetailDTO.setProductId(productDetailObj[4].toString());/***Parent Product Id**/

            productDetailDTOList.add(productDetailDTO);
        }


        session.close();
        return productDetailDTOList;


    }

    @Override
    public List<ProductModel> getProduct() {
        Session session = getHibernateTemplate().getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        Criteria criteria = session.createCriteria(ProductModel.class).setProjection(Projections.projectionList()
                .add(Projections.property("productId"), "productId")
                .add(Projections.property("productName"), "productName"))
                .setResultTransformer(Transformers.aliasToBean(ProductModel.class));
        List<ProductModel> productdetailList = criteria.list();
        session.close();
        return productdetailList;
    }


}
