package cn.andone.service;

import java.util.List;

import cn.andone.pojo.Comment;

public interface CommentService {
	void addComment(Comment comment);
	
	void deleteCommentByid(String id);
	
	void updateComment(Comment comment);
	
	List<Comment> queryComment();
	
	Comment queryCommentById(String id);
}
