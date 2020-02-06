package com.product.stock_Management.service;

import java.util.List;

import com.product.stock_Management.model.ProductDTO;
import com.product.stock_Management.model.SignUp;

public interface MyService {
	
	public boolean signup(SignUp sdto);
	public SignUp login(String user,String password);
	public List<ProductDTO> product();
	public boolean addProduct(ProductDTO pdto);
	public ProductDTO addtocart(int id);
	public ProductDTO add(ProductDTO dto);
	public ProductDTO update(int id);
	public boolean modifyProduct(ProductDTO pdto);
	public boolean updateproduct(ProductDTO dto);
	public List<ProductDTO> search(String search);
	public ProductDTO delete(int id);


}
