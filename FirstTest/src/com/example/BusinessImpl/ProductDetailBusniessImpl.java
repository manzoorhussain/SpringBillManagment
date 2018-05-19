package com.example.BusinessImpl;

import com.example.Busniess.ProductDetailBusniess;
import com.example.DAO.ProductDetailDAO;
import com.example.bean.ProductDetailModel;
import com.example.bean.ProductModel;
import com.example.dto.ProductDetailDTO;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Folio 9480 on 3/17/2018.
 */
public class ProductDetailBusniessImpl implements ProductDetailBusniess {
    ProductDetailDAO productDetailDAO;

    public ProductDetailDAO getProductDetailDAO() {
        return productDetailDAO;
    }

    public void setProductDetailDAO(ProductDetailDAO productDetailDAO) {
        this.productDetailDAO = productDetailDAO;
    }

    @Override
    public List<ProductDetailModel> listProductDetail() {
        return null;
    }

    @Override
    public void saveProductDetail(ProductDetailModel productDetailModel) throws Exception{
        productDetailDAO.saveProductDetail(productDetailModel);
    }

    @Override
    public void updateProductDetail(ProductDetailModel productDetailModel) throws Exception{
        productDetailDAO.updateProductDetail(productDetailModel);
    }

    @Override
    public ArrayList<ProductDetailDTO> getAllProductDataList()throws Exception {
        return productDetailDAO.getAllProductDataList();
    }

    @Override
    public void deleteProductDetail(String productId,String productDetailId) throws Exception{
        productDetailDAO.deleteProductDetail(productId,productDetailId);
    }

    @Override
    public List<ProductModel> getProduct()throws Exception {
        return productDetailDAO.getProduct();
    }
}
