package com.example.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Folio 9480 on 3/17/2018.
 */

/**
 * This is One To Many Relation Ship
 * between ProductModel
 * and Product Model Detail
 **/
public class ProductDetailModel extends Model implements Serializable {


    private String prodDetailId;

    /**
     * PK
     */
    private String prodDetailName;
    private String prodDetailprice;
    private String prodDetailstatus;
    private Date createdDate;
    private String createdBy;
    private Date modifiedDate;
    private String modifiedBy;
    private String parentProd;
    private String status;
    private ProductModel productModel;


    /**
     * Product Table Reference(productModel)
     **/




    public String getParentProd() {
        return parentProd;
    }

    public void setParentProd(String parentProd) {
        this.parentProd = parentProd;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }





    public String getProdDetailId() {
        return prodDetailId;
    }

    public void setProdDetailId(String prodDetailId) {
        this.prodDetailId = prodDetailId;
    }

    public String getProdDetailName() {
        return prodDetailName;
    }

    public void setProdDetailName(String prodDetailName) {
        this.prodDetailName = prodDetailName;
    }

    public String getProdDetailprice() {
        return prodDetailprice;
    }

    public void setProdDetailprice(String prodDetailprice) {
        this.prodDetailprice = prodDetailprice;
    }

    public String getProdDetailstatus() {
        return prodDetailstatus;
    }

    public void setProdDetailstatus(String prodDetailstatus) {
        this.prodDetailstatus = prodDetailstatus;
    }

    @Override
    public Date getCreatedDate() {
        return createdDate;
    }

    @Override
    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    @Override
    public String getCreatedBy() {
        return createdBy;
    }

    @Override
    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    @Override
    public Date getModifiedDate() {
        return modifiedDate;
    }

    @Override
    public void setModifiedDate(Date modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    @Override
    public String getModifiedBy() {
        return modifiedBy;
    }

    @Override
    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    public ProductModel getProductModel() {
        return productModel;
    }

    public void setProductModel(ProductModel productModel) {
        this.productModel = productModel;
    }
}
