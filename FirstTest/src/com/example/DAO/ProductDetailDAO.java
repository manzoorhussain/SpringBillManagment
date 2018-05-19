package com.example.DAO;

import com.example.bean.ProductDetailModel;
import com.example.bean.ProductModel;
import com.example.dto.ProductDetailDTO;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Folio 9480 on 3/17/2018.
 */
public interface ProductDetailDAO {

    List<ProductDAO> listProductDetail() throws Exception;
    public void saveProductDetail(ProductDetailModel productDetailModel) throws Exception;
    public void updateProductDetail(ProductDetailModel productDetailModel)throws Exception;
    public void deleteProductDetail(String productId,String productdetailId)throws Exception;
    public ArrayList<ProductDetailDTO> getAllProductDataList()throws Exception;
    List<ProductModel> getProduct()throws Exception;

}
