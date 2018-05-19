package com.example.action;

import com.example.Busniess.ProductBusniess;
import com.example.bean.ProductModel;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import java.util.ArrayList;
import java.util.Map;


public class LoginAction extends ActionSupport implements SessionAware {


    /**
     * Manzoor Hussain
     */

    private static final long serialVersionUID = 1L;
    private String userName;
    private String password;
    private SessionMap<String, Object> sessionMap;
        private String savedone;
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

    ProductBusniess productBusniess;
    private ArrayList<ProductModel> productList;


    public LoginAction() {

    }

    public String getSavedone() {
        return savedone;
    }

    public void setSavedone(String savedone) {
        this.savedone = savedone;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public String wellCome() {

        if ("MANZOOR".equalsIgnoreCase(getUserName()) && "12345".equalsIgnoreCase(getPassword())) {
            System.out.println(getUserName());
            sessionMap.put("userName", getUserName());
            return SUCCESS;
        }
        return ERROR;
    }

    public String showLogin() {
        return SUCCESS;
    }


    public String logOut() {
        System.out.print("LogOut");
        return SUCCESS;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        sessionMap = (SessionMap) map;

    }

    public String productList() {

        try {
            productList = productBusniess.getAllProductDataList();
            return SUCCESS;
        } catch (Exception e) {
          System.out.println(e.getMessage());
            return ERROR;
        }
    }


}
