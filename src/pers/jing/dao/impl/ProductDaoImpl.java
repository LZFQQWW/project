package pers.jing.dao.impl;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import pers.jing.dao.ProductDao;
import pers.jing.entity.Category;
import pers.jing.entity.Product;
import pers.jing.utils.DataSourceUtils;

public class ProductDaoImpl implements ProductDao {

	@Override
	public List<Product> findHotProducts() throws SQLException {
		// TODO Auto-generated method stub
		// 查询最热商品：is_hot（0代表不热门商品，1代表热门商品，显示9条数据）
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where is_hot = ? limit ?,?";
		Object[] params = { 1, 0, 2 };
		return qr.query(sql, new BeanListHandler<Product>(Product.class), params);
	}

	@Override
	public List<Product> findNewProducts0() throws SQLException {
		// TODO Auto-generated method stub
		// 查询最新商品:pdate（降序排序，筛选前9条数据）
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where is_hot = ? order by pdate desc limit ?,?";
		Object[] params = { 0, 0, 2 };
		return qr.query(sql, new BeanListHandler<Product>(Product.class), params);
	}

	@Override
	public List<Product> findNewProducts2() throws SQLException {
		// TODO Auto-generated method stub
		// 查询最新商品:pdate（降序排序，筛选前9条数据）
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where is_hot = ? order by pdate desc limit ?,?";
		Object[] params = { 0, 2, 2 };
		return qr.query(sql, new BeanListHandler<Product>(Product.class), params);
	}

	@Override
	public List<Product> findNewProducts4() throws SQLException {
		// TODO Auto-generated method stub
		// 查询最新商品:pdate（降序排序，筛选前9条数据）
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where is_hot = ? order by pdate desc limit ?,?";
		Object[] params = { 0, 4, 2 };
		return qr.query(sql, new BeanListHandler<Product>(Product.class), params);
	}

	@Override
	public List<Category> findAllCategorys() throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from category";
		return qr.query(sql, new BeanListHandler<Category>(Category.class));
	}

	@Override
	public List<Product> findProductListByPage(String cid, int start, int count) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where cid = ? and is_hot = ? limit ?,?";
		Object[] params = { cid, 0, start, count };
		return qr.query(sql, new BeanListHandler<Product>(Product.class), params);
	}

	@Override
	public int getCount(String cid) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) from product where cid = ? and is_hot = ?";
		Object[] params = { cid, 0 };
		Long row = (Long) qr.query(sql, new ScalarHandler(), params);
		return row.intValue();
	}

	@Override
	public Product findProductById(String pid) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where pid = ?";
		Object[] params = { pid };
		return qr.query(sql, new BeanHandler<>(Product.class), params);
	}

}
