package com.example.action;

import com.example.Busniess.ProductDealBusniess;
import com.example.bean.ProductDealModel;
import com.example.bean.ProductDetailModel;
import com.example.dto.ProductDetailDTO;
import com.opensymphony.xwork2.ActionSupport;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by Folio 9480 on 3/24/2018.
 */
public class ProductDealAction extends ActionSupport {
    ProductDealBusniess productDealBusniess;
    private Map<String, List<String>> dealDetailHashMap;
    private String peroductdealId;
    private String productdealName;
    private String productdealTitle;
    private String productdealPrice;
    private String productdealValue;
    private String productdealStatus;

    private String userName;

    Map<String, List<ProductDetailDTO>> productDetailMap;

    public Map<String, List<String>> getDealDetailHashMap() {
        return dealDetailHashMap;
    }

    public void setDealDetailHashMap(Map<String, List<String>> dealDetailHashMap) {
        this.dealDetailHashMap = dealDetailHashMap;
    }

    public ProductDealBusniess getProductDealBusniess() {
        return productDealBusniess;
    }

    public void setProductDealBusniess(ProductDealBusniess productDealBusniess) {
        this.productDealBusniess = productDealBusniess;
    }

    public Map<String, List<ProductDetailDTO>> getProductDetailMap() {
        return productDetailMap;
    }

    public void setProductDetailMap(Map<String, List<ProductDetailDTO>> productDetailMap) {
        this.productDetailMap = productDetailMap;
    }

    public String getPeroductdealId() {
        return peroductdealId;
    }

    public void setPeroductdealId(String peroductdealId) {
        this.peroductdealId = peroductdealId;
    }

    public String getProductdealName() {
        return productdealName;
    }

    public void setProductdealName(String productdealName) {
        this.productdealName = productdealName;
    }

    public String getProductdealTitle() {
        return productdealTitle;
    }

    public void setProductdealTitle(String productdealTitle) {
        this.productdealTitle = productdealTitle;
    }

    public String getProductdealPrice() {
        return productdealPrice;
    }

    public void setProductdealPrice(String productdealPrice) {
        this.productdealPrice = productdealPrice;
    }

    public String getProductdealValue() {
        return productdealValue;
    }

    public void setProductdealValue(String productdealValue) {
        this.productdealValue = productdealValue;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getProductdealStatus() {
        return productdealStatus;
    }

    public void setProductdealStatus(String productdealStatus) {
        this.productdealStatus = productdealStatus;
    }

    public String saveProductDeal() {
        try {
            ProductDealModel productDealModel = new ProductDealModel();
            productDealModel.setDealId(peroductdealId);
            productDealModel.setDealName(productdealName);
            productDealModel.setDealTitle(productdealTitle);
            productDealModel.setDealPrice(productdealPrice);
            productDealModel.setDealValue(productdealValue);
            productDealModel.setCreatedDate(new Date());
            productDealModel.setCreatedBy(userName);
            productDealModel.setModifiedDate(null);
            productDealModel.setModifiedBy(null);
            productDealModel.setStatus(productdealStatus);
            productDealBusniess.saveDeal(productDealModel);
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }
    }

    public String productDealDetail() {
        try {
            productDetailMap = productDealBusniess.getProductDealHashMap();
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }
    }


}
