package pers.jing.dao;

import java.sql.SQLException;
import java.util.List;

import pers.jing.entity.Category;
import pers.jing.entity.Product;

public interface ProductDao {

	public List<Product> findHotProducts() throws SQLException;

	public List<Product> findNewProducts0() throws SQLException;

	public List<Product> findNewProducts2() throws SQLException;

	public List<Product> findNewProducts4() throws SQLException;

	public List<Category> findAllCategorys() throws SQLException;

	public int getCount(String cid) throws SQLException;

	public List<Product> findProductListByPage(String cid, int start, int count) throws SQLException;

	public Product findProductById(String pid) throws SQLException;
}
