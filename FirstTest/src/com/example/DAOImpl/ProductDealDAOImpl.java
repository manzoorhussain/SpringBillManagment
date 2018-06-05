package com.example.DAOImpl;

import com.example.DAO.ProductDAO;
import com.example.DAO.ProductDealDAO;
import com.example.bean.ProductDealModel;
import com.example.bean.ProductDetailModel;
import com.example.bean.ProductModel;
import com.example.dto.ProductDetailDTO;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Folio 9480 on 3/24/2018.
 */
public class ProductDealDAOImpl extends HibernateDaoSupport implements ProductDealDAO {
    @Override
    public List<ProductDAO> listProduct() throws Exception {
        return null;
    }

    @Override
    public void saveDeal(ProductDealModel productDealModel) throws Exception {
        getHibernateTemplate().save(productDealModel);
    }

    @Override
    public void updateDeal(ProductDealModel productDealModel) throws Exception {

    }

    @Override
    public void deleteDeal(String productId) {

    }

    @Override
    public ArrayList<ProductDealModel> getAllProductDataList() throws Exception {
        return null;
    }

    /***
     * This Method return HashMap of Product
     * with the key
     * key is parent product
     * value is list of child product
     **/
    @Override
    public Map<String, List<ProductDetailDTO>> getProductDealHashMap() throws Exception {

        Map<String, List<ProductDetailDTO>> productDetailHasMap = new HashMap<String, List<ProductDetailDTO>>();
        List<ProductModel> productModelList = getListOfAllProduct();
        for (int index = 0; index < productModelList.size(); index++) {
            String productCode = productModelList.get(index).getProductId();
            String productDesc = productModelList.get(index).getProductDesc();
            List<ProductDetailDTO> productDetailModelList = getListOfAllProductDetail(productCode);
            productDetailHasMap.put(productCode + "~" + productDesc, productDetailModelList);
        }
        return productDetailHasMap;
    }

    private List<ProductModel> getListOfAllProduct() throws Exception {
        StringBuffer query = new StringBuffer("from ProductModel Order by productId desc");
        ArrayList<ProductModel> productList = (ArrayList<ProductModel>) getHibernateTemplate().find(query.toString());
        return productList;
    }


    private List<ProductDetailDTO> getListOfAllProductDetail(String parentProductId) throws Exception {

        StringBuffer queryBuilder = new StringBuffer("SELECT pr.product_name,prd.product_id,prd.pd_id,prd.pd_name,prd.pd_price,prd.pd_price FROM product_detail prd ");
        queryBuilder.append("  LEFT JOIN product pr  ON prd.product_id=pr.product_id where prd.product_id ='").append(parentProductId).append("'");

        Session session = getHibernateTemplate().getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        SQLQuery query = session.createSQLQuery(queryBuilder.toString());

        ArrayList<ProductDetailDTO> productDetailModelsList = new ArrayList<ProductDetailDTO>();


        List<Object[]> list = query.list();

        for (int index = 0; index < list.size(); index++) {
            Object[] productDetailObj = list.get(index);


            ProductDetailDTO productDetailModel = new ProductDetailDTO();
            productDetailModel.setProductName(productDetailObj[0].toString());
            productDetailModel.setProductId(productDetailObj[1].toString());
            productDetailModel.setProductDetailId(productDetailObj[2].toString());
            productDetailModel.setProductDetailName(productDetailObj[3].toString());
            productDetailModel.setProductDetailprice(productDetailObj[4].toString());
            productDetailModelsList.add(productDetailModel);
        }


        session.close();
        return productDetailModelsList;


    }


}
