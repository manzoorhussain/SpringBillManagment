package com.example.BusinessImpl;

import com.example.Busniess.ProductBusniess;
import com.example.DAO.ProductDAO;
import com.example.bean.ProductModel;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Folio 9480 on 2/10/2018.
 */
public class ProductBusniessImpl implements ProductBusniess {

    ProductDAO productDAO;

    public ProductDAO getProductDAO() {
        return productDAO;
    }

    public void setProductDAO(ProductDAO productDAO) {
        this.productDAO = productDAO;
    }

    @Override
    public List<ProductModel> listProduct() {
        return null;
    }

    @Override
    public void saveProduct(ProductModel productModel) {
        productDAO.saveProduct(productModel);
    }

    @Override
    public void updateProduct(ProductModel productModel) {
        productDAO.updateProduct(productModel);
    }

    @Override
    public ArrayList<ProductModel> getAllProductDataList() {
        return productDAO.getAllProductDataList();
    }

    @Override
    public void deleteProduct(String productId) {
        productDAO.deleteProduct(productId);
    }
}
