package com.example.bean;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Folio 9480 on 2/10/2018.
 */

/**
 * This is One To Many Relation Ship
 * between ProductModel
 * and Product Model Detail
 **/
public class ProductModel extends Model implements Serializable {

    private String productId;
    /**
     * PK
     */
    private String productName;
    private String productDesc;
    private String status;
    private byte productImage[];

    //private Set<ProductDetailModel> productDetailModelSet = new HashSet<ProductDetailModel>(0);

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

    public String getProductDesc() {
        return productDesc;
    }

    public void setProductDesc(String productDesc) {
        this.productDesc = productDesc;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public byte[] getProductImage() {
        return productImage;
    }

    public void setProductImage(byte[] productImage) {
        this.productImage = productImage;
    }

   /* public Set<ProductDetailModel> getProductDetailModelSet() {
        return productDetailModelSet;
    }

    public void setProductDetailModelSet(Set<ProductDetailModel> productDetailModelSet) {
        this.productDetailModelSet = productDetailModelSet;
    }*/
}
