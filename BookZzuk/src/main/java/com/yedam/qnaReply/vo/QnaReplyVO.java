package com.yedam.qnaReply.vo;

import lombok.Data;

@Data
public class QnaReplyVO {
	private int replyNum;
	private int articleNum;
	private String userId;
	private String writeDate;
	private String contents;
}
