package com.yedam.order.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.book.mapper.BookMapper;
import com.yedam.common.DataSource;
import com.yedam.order.vo.OrderVO;

public class OrderServiceImpl implements OrderService {
	SqlSession session = DataSource.getInstance().openSession(true);
	BookMapper mapper = session.getMapper(BookMapper.class);
	
	@Override
	public List<OrderVO> getAllOrder() {
		return mapper.getAllOrder();
	}
	
	
}