package com.example.BusinessImpl;

import com.example.Busniess.ProductBillBusniess;
import com.example.DAO.ProductBillDAO;
import com.example.dto.ProductDetailDTO;

import java.util.List;
import java.util.Map;

/**
 * Created by Folio 9480 on 5/12/2018.
 */
public class ProductBillBusniessImpl implements ProductBillBusniess {

    ProductBillDAO productBillDAO;

    public ProductBillDAO getProductBillDAO() {
        return productBillDAO;
    }

    public void setProductBillDAO(ProductBillDAO productBillDAO) {
        this.productBillDAO = productBillDAO;
    }


    @Override
    public Map<String, List<ProductDetailDTO>> getProductDealHashMap()   throws Exception {
        return productBillDAO.getProductDealHashMap();
    }
}
