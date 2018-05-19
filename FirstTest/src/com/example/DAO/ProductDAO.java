package com.example.DAO;

import com.example.bean.ProductModel;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Folio 9480 on 2/10/2018.
 */
public interface ProductDAO {

    List<ProductDAO> listProduct();
    public void saveProduct(ProductModel productModel);
    public void updateProduct(ProductModel productModel);
    public void deleteProduct(String productId);
    public ArrayList<ProductModel> getAllProductDataList();
}
