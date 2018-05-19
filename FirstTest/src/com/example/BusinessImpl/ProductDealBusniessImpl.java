package com.example.BusinessImpl;

import com.example.Busniess.ProductDealBusniess;
import com.example.DAO.ProductDealDAO;
import com.example.DAO.ProductDAO;
import com.example.bean.ProductDealModel;
import com.example.bean.ProductDetailModel;
import com.example.dto.ProductDetailDTO;

import java.util.List;
import java.util.Map;

/**
 * Created by Folio 9480 on 3/24/2018.
 */
public class ProductDealBusniessImpl implements ProductDealBusniess {
    ProductDealDAO productDealDAO;

    public ProductDealDAO getProductDealDAO() {
        return productDealDAO;
    }

    public void setProductDealDAO(ProductDealDAO productDealDAO) {
        this.productDealDAO = productDealDAO;
    }


    @Override
    public List<ProductDAO> listProduct() throws Exception {
        return null;
    }

    @Override
    public void saveDeal(ProductDealModel productDealModel) throws Exception {
        productDealDAO.saveDeal(productDealModel);
    }

    @Override
    public void updateDeal(ProductDealModel productDealModel) throws Exception {

    }

    @Override
    public void deleteDeal(String productId) throws Exception {

    }


    @Override
     public Map<String, List<ProductDetailDTO>> getProductDealHashMap()   throws Exception {
        return productDealDAO.getProductDealHashMap();
    }
}
