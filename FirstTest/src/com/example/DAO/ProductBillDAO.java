package com.example.DAO;

        import com.example.bean.ProductDealModel;
        import com.example.dto.ProductDetailDTO;

        import java.util.List;
        import java.util.Map;

/**
 * Created by Folio 9480 on 5/12/2018.
 */
public interface ProductBillDAO {

    public Map<String, List<ProductDetailDTO>> getProductDealHashMap() throws Exception;
    public  List<ProductDealModel> getAllProductDeal() throws Exception;
}
