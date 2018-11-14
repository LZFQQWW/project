package pers.jing.service;

import java.util.List;

import pers.jing.entity.Category;
import pers.jing.entity.PageBean;
import pers.jing.entity.Product;

public interface ProductService {
	
	public List<Product> findHotProductList();
	
	public List<Product> findNewProductList0();
	
	public List<Product> findNewProductList2();
	
	public List<Product> findNewProductList4();
	
	public List<Category> findAllCategoryList();
	
	public PageBean<Product> findProductListByCid(String cid,int currentPage, int currentCount);
	
	public Product findProductById(String pid);

}
