package com.example.dto;

/**
 * Created by Folio 9480 on 3/23/2018.
 */
public class ProductDetailDTO {

    private String productId; //parent productId
    private String productName; //parent  productName
    private String productDetailId; //child productId
    private String productDetailName; //child productName
    private String productDetailprice; //parent productPrice

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductDetailId() {
        return productDetailId;
    }

    public void setProductDetailId(String productDetailId) {
        this.productDetailId = productDetailId;
    }

    public String getProductDetailName() {
        return productDetailName;
    }

    public void setProductDetailName(String productDetailName) {
        this.productDetailName = productDetailName;
    }

    public String getProductDetailprice() {
        return productDetailprice;
    }

    public void setProductDetailprice(String productDetailprice) {
        this.productDetailprice = productDetailprice;
    }
}
