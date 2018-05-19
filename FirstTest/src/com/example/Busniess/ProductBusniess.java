package com.example.Busniess;

import com.example.bean.ProductModel;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Folio 9480 on 2/10/2018.
 */
public interface ProductBusniess {

    List<ProductModel> listProduct();
    public void saveProduct(ProductModel productModel);
    public void updateProduct(ProductModel productModel);
    public ArrayList<ProductModel> getAllProductDataList();
    public void deleteProduct(String productId);

}
