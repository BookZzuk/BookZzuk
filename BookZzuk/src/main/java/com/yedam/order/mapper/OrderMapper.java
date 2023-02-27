package com.yedam.order.mapper;

import java.util.List;

import com.yedam.order.vo.OrderVO;
import com.yedam.order.vo.OrderDetailVO;

public interface OrderMapper {
	public List<OrderVO> orderList(String userId); //배송조회
	 public List<OrderDetailVO> getOrder(int orderNum); //배송상세조회
}
