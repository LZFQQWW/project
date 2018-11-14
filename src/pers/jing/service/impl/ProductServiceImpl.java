package pers.jing.service.impl;

import java.sql.SQLException;
import java.util.List;

import pers.jing.dao.ProductDao;
import pers.jing.dao.impl.ProductDaoImpl;
import pers.jing.entity.Category;
import pers.jing.entity.PageBean;
import pers.jing.entity.Product;
import pers.jing.service.ProductService;

public class ProductServiceImpl implements ProductService {

	private ProductDao productDao = new ProductDaoImpl();

	@Override
	public List<Product> findHotProductList() {
		// TODO Auto-generated method stub
		List<Product> hotProductList = null;
		try {
			hotProductList = productDao.findHotProducts();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return hotProductList;
	}

	@Override
	public List<Product> findNewProductList0() {
		// TODO Auto-generated method stub
		List<Product> newProductList = null;
		try {
			newProductList = productDao.findNewProducts0();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return newProductList;
	}

	@Override
	public List<Product> findNewProductList2() {
		// TODO Auto-generated method stub
		List<Product> newProductList = null;
		try {
			newProductList = productDao.findNewProducts2();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return newProductList;
	}

	@Override
	public List<Product> findNewProductList4() {
		// TODO Auto-generated method stub
		List<Product> newProductList = null;
		try {
			newProductList = productDao.findNewProducts4();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return newProductList;
	}

	@Override
	public List<Category> findAllCategoryList() {
		// TODO Auto-generated method stub
		List<Category> allCategorylist = null;
		try {
			allCategorylist = productDao.findAllCategorys();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return allCategorylist;
	}

	@Override
	public PageBean<Product> findProductListByCid(String cid, int currentPage, int currentCount) {
		// TODO Auto-generated method stub
		PageBean<Product> pageBean = new PageBean<Product>();
		// 当前页数
		// int currentPage = 1;
		pageBean.setCurrentPage(currentPage);
		// 当前条数
		// int currentCount = 6;
		pageBean.setCurrentCount(currentCount);
		// 总条数
		int totalCount = 0;
		try {
			totalCount = productDao.getCount(cid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		pageBean.setTotalCount(totalCount);
		// 总页数
		int totalPage = (int) (totalCount / currentCount + Math.ceil(totalCount % currentCount));
		pageBean.setTotalPage(totalPage);
		// 当页显示的对象集合
		int start = (currentPage - 1) * currentCount;
		List<Product> list = null;
		try {
			list = productDao.findProductListByPage(cid, start, currentCount);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		pageBean.setList(list);
		return pageBean;
	}

	@Override
	public Product findProductById(String pid) {
		// TODO Auto-generated method stub
		Product product = null;
		try {
			product = productDao.findProductById(pid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return product;
	}

}
