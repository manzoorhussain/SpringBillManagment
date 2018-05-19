package com.example.action;

import com.example.Busniess.ProductBusniess;
import com.example.bean.ProductModel;
import com.opensymphony.xwork2.ActionSupport;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;

/**
 * Created by Folio 9480 on 2/10/2018.
 */
public class ProductAction extends ActionSupport {


    private String prodId;
    private String prodName;
    private String prodDesc;
    private String status;
    private String userName;
    ProductBusniess productBusniess;
    private ArrayList<ProductModel> productList;

    private File prodImageUpload;
    private String imageUploadContentType;
    private String imageUploadFileName;

    public String getAciontype() {
        return aciontype;
    }

    public void setAciontype(String aciontype) {
        this.aciontype = aciontype;
    }

    private String aciontype;

    public ProductAction() {


    }

    public ArrayList<ProductModel> getProductList() {
        return productList;
    }

    public void setProductList(ArrayList<ProductModel> productList) {
        this.productList = productList;
    }


    public ProductBusniess getProductBusniess() {
        return productBusniess;
    }

    public void setProductBusniess(ProductBusniess productBusniess) {
        this.productBusniess = productBusniess;
    }


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }


    public String getProdDesc() {
        return prodDesc;
    }

    public void setProdDesc(String prodDesc) {
        this.prodDesc = prodDesc;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public File getProdImageUpload() {
        return prodImageUpload;
    }

    public void setProdImageUpload(File prodImageUpload) {
        this.prodImageUpload = prodImageUpload;
    }

    public String getImageUploadContentType() {
        return imageUploadContentType;
    }

    public void setImageUploadContentType(String imageUploadContentType) {
        this.imageUploadContentType = imageUploadContentType;
    }

    public String getImageUploadFileName() {
        return imageUploadFileName;
    }

    public void setImageUploadFileName(String imageUploadFileName) {
        this.imageUploadFileName = imageUploadFileName;
    }

    public String saveProduct() {

        try {

            ProductModel productModel = new ProductModel();
            productModel.setProductId(prodId);
            productModel.setProductName(prodName);
            productModel.setProductDesc(prodDesc);
            productModel.setStatus(status);
            productModel.setCreatedDate(new Date());
            productModel.setCreatedBy(userName);
            productModel.setModifiedDate(null);
            productModel.setModifiedBy(null);
           // productModel.setProductImage(imageUploadFileName);
            productBusniess.saveProduct(productModel);
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }

    }

    public String updateProduct() {

        try {

            ProductModel productModel = new ProductModel();
            productModel.setProductId(getProdId());
            productModel.setProductName(getProdName());
            productModel.setProductDesc(getProdDesc());
            productModel.setStatus(getStatus());
            productModel.setCreatedDate(null);
            productModel.setCreatedBy(null);
            productModel.setModifiedDate(new Date());
            productModel.setModifiedBy(userName);
            productBusniess.updateProduct(productModel);
            return SUCCESS;
        } catch (Exception e) {

            return ERROR;
        }
    }

    public String deleteProduct() {
        try {
            productBusniess.deleteProduct(prodId);

            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }


    }

    public String mainMenu() {
        return SUCCESS;
    }
}
