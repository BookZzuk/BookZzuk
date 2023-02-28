package com.yedam.order.service;

import java.util.List;

import com.yedam.order.vo.OrderVO;
import com.yedam.order.vo.OrderDetailVO;

public interface OrderService {
	public List<OrderVO> orderList(String userId); //배송조회
	public List<OrderDetailVO> getOrder(int orderNum); //배송상세조회
	public int addOrder(OrderVO vo);
	public int addDetail(OrderDetailVO detailVo);

	
}
