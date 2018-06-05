package com.example.action;

import com.example.Busniess.ProductBillBusniess;
import com.example.bean.ProductDealModel;
import com.example.dto.ProductDetailDTO;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;
import java.util.Map;

/**
 * Created by Folio 9480 on 5/12/2018.
 */
public class BillAction extends ActionSupport {
    ProductBillBusniess productBillBusniess;
    Map<String, List<ProductDetailDTO>> productDetailMap;
    List<ProductDealModel> productDealModelList;

    public ProductBillBusniess getProductBillBusniess() {
        return productBillBusniess;
    }

    public void setProductBillBusniess(ProductBillBusniess productBillBusniess) {
        this.productBillBusniess = productBillBusniess;
    }

    public Map<String, List<ProductDetailDTO>> getProductDetailMap() {
        return productDetailMap;
    }

    public void setProductDetailMap(Map<String, List<ProductDetailDTO>> productDetailMap) {
        this.productDetailMap = productDetailMap;
    }


    public List<ProductDealModel> getProductDealModelList() {
        return productDealModelList;
    }

    public void setProductDealModelList(List<ProductDealModel> productDealModelList) {
        this.productDealModelList = productDealModelList;
    }

    public String productDetailForBill() {
        try {
            productDetailMap = productBillBusniess.getProductDealHashMap();
            productDealModelList=productBillBusniess.getAllProductDeal();
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }
    }
}
