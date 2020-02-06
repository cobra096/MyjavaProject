package com.product.stock_Management.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.product.stock_Management.dao.MyDAO;
import com.product.stock_Management.model.ProductDTO;
import com.product.stock_Management.model.SignUp;
@Component
public class MyServiceImp1 implements MyService{
     
	@Autowired
	MyDAO mdao;
	
	@Override
	public boolean signup(SignUp sdto) {
		boolean b=mdao.signup(sdto);
		return b;
	}

	@Override
	public SignUp login(String user, String password) {
		SignUp sdto=mdao.login(user, password);
		return sdto;
	}
	
	@Override
	public List<ProductDTO> product() {
		return mdao.product();
	}
	
	@Override
	public boolean addProduct(ProductDTO pdto) {
		boolean b=mdao.addProduct(pdto);
		return b;
	}

	@Override
	public boolean modifyProduct(ProductDTO pdto) {
		mdao.modifyProduct(pdto);
		return true;
	}

	@Override
	public List<ProductDTO> search(String search) {
		List<ProductDTO> list=mdao.search(search);
		return list;
	}

	@Override
	public ProductDTO update(int id) {
		
		return mdao.update(id);
	}

	@Override
	public boolean updateproduct(ProductDTO dto) {
		boolean b=mdao.updateproduct(dto);
		return b;
	}

	@Override
	public ProductDTO addtocart(int id) {
		
		return mdao.addtocart(id);
	}

	@Override
	public ProductDTO add(ProductDTO dto) {
		
		return mdao.add(dto);
	}

	@Override
	public ProductDTO delete(int id) {
		
		return mdao.delete(id);
	}

	
      
}
