package com.example.action;

import com.example.Busniess.ProductDetailBusniess;
import com.example.bean.ProductDetailModel;
import com.example.bean.ProductModel;
import com.example.dto.ProductDetailDTO;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Folio 9480 on 3/17/2018.
 */
public class ProductDetailAction extends ActionSupport {

    ProductDetailBusniess productDetailBusniess;


    private List<ProductModel> productList;
    private HashMap<String, String> productListHashMap = new HashMap<>();


    private ArrayList<ProductDetailDTO> productDetailList;
    private String parentProd;
    private String prodId;
    private String prodName;
    private String prodPrice;
    private String status;
    private String userName;

    public List<ProductModel> getProductList() {
        return productList;
    }

    public void setProductList(List<ProductModel> productList) {
        this.productList = productList;
    }


    public HashMap<String, String> getProductListHashMap() {
        return productListHashMap;
    }


    public void setProductListHashMap(HashMap<String, String> productListHashMap) {
        this.productListHashMap = productListHashMap;
    }

    public String getParentProd() {
        return parentProd;
    }

    public void setParentProd(String parentProd) {
        this.parentProd = parentProd;
    }

    public String getProdId() {
        return prodId;
    }

    public void setProdId(String prodId) {
        this.prodId = prodId;
    }

    public String getProdName() {
        return prodName;
    }

    public void setProdName(String prodName) {
        this.prodName = prodName;
    }

    public String getProdPrice() {
        return prodPrice;
    }

    public void setProdPrice(String prodPrice) {
        this.prodPrice = prodPrice;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public ArrayList<ProductDetailDTO> getProductDetailList() {
        return productDetailList;
    }

    public void setProductDetailList(ArrayList<ProductDetailDTO> productDetailList) {
        this.productDetailList = productDetailList;
    }


    /**
     * Product Detail for ComboBox in ProductDetail Screen
     */
    public String productListForDetail() {
        return SUCCESS;
    }

    public ProductDetailBusniess getProductDetailBusniess() {
        return productDetailBusniess;
    }

    public void setProductDetailBusniess(ProductDetailBusniess productDetailBusniess) {
        this.productDetailBusniess = productDetailBusniess;
    }

    public String productDetailList() {

        try {
            productList = productDetailBusniess.getProduct();
            for (int index = 0; index < productList.size(); index++) {
                productListHashMap.put(productList.get(index).getProductId(), productList.get(index).getProductName());
            }

            productDetailList = productDetailBusniess.getAllProductDataList();
            return SUCCESS;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ERROR;
        }
    }


    public String saveProductDetail() {

        try {
            ProductModel productModel = new ProductModel();
            productModel.setProductId(getParentProd());

            ProductDetailModel productDetailModel = new ProductDetailModel();
            productDetailModel.setProdDetailId(prodId);
            productDetailModel.setProdDetailName(prodName);
            productDetailModel.setProdDetailprice(prodPrice);
            productDetailModel.setStatus(status);
            productDetailModel.setCreatedBy(userName);
            productDetailModel.setCreatedDate(new Date());
            productDetailModel.setModifiedBy(null);
            productDetailModel.setModifiedDate(null);
            productDetailModel.setParentProd(parentProd);

            productDetailBusniess.saveProductDetail(productDetailModel);
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }
    }


    public String deleteProductDetail() {
        try {
            productDetailBusniess.deleteProductDetail(parentProd, prodId);
            return SUCCESS;
        } catch (Exception e) {
            return ERROR;
        }
    }

    public String updateProductDetail() {

        try {
            //   ProductModel productModel = new ProductModel();
            //  productModel.setProductId(getParentProd());

            ProductDetailModel productDetailModel = new ProductDetailModel();
            productDetailModel.setProdDetailId(prodId);
            productDetailModel.setProdDetailName(prodName);
            productDetailModel.setProdDetailprice(prodPrice);
            productDetailModel.setStatus(status);
            productDetailModel.setCreatedBy(null);
            productDetailModel.setCreatedDate(null);
            productDetailModel.setModifiedBy(userName);
            productDetailModel.setModifiedDate(new Date());
            productDetailModel.setParentProd(parentProd);

            productDetailBusniess.updateProductDetail(productDetailModel);
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }
    }


}