package com.example.Busniess;

import com.example.DAO.ProductDAO;
import com.example.bean.ProductDealModel;
import com.example.bean.ProductDetailModel;
import com.example.dto.ProductDetailDTO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by Folio 9480 on 3/24/2018.
 */
public interface ProductDealBusniess {
    List<ProductDAO> listProduct()throws Exception;

    public void saveDeal(ProductDealModel productDealModel)throws Exception;

    public void updateDeal(ProductDealModel productDealModel)throws Exception;

    public void deleteDeal(String productId)throws Exception;

    public Map<String, List<ProductDetailDTO>> getProductDealHashMap() throws Exception;
}
