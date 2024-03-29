package com.yedam.order.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.order.mapper.OrderMapper;
import com.yedam.order.vo.OrderVO;
import com.yedam.order.vo.OrderDetailVO;

public class OrderServiceImpl implements OrderService {
	SqlSession session = DataSource.getInstance().openSession(true);
	OrderMapper mapper = session.getMapper(OrderMapper.class);
	
	@Override
	public List<OrderVO> orderList(String userId) {
		return mapper.orderList(userId);
	}
  
	 @Override 
	 public List<OrderDetailVO> getOrder(String orderNum) { 
		 return mapper.getOrder(orderNum); 
	 }

	@Override
	public int addOrder(OrderVO vo) {
		return mapper.addOrder(vo);
	}

	@Override
	public int addDetail(OrderDetailVO detailVo) {
		return mapper.addDetail(detailVo);
	}
}