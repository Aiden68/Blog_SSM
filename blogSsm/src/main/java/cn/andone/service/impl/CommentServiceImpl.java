package cn.andone.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.andone.dao.CommentMapper;
import cn.andone.pojo.Comment;
import cn.andone.pojo.CommentExample;
import cn.andone.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService{

	@Autowired
	private CommentMapper commentDao;
	
	@Override
	public void addComment(Comment comment) {
		commentDao.insert(comment);
	}

	@Override
	public void deleteCommentByid(String id) {
		commentDao.deleteByPrimaryKey(Integer.parseInt(id));
	}

	@Override
	public void updateComment(Comment comment) {
		commentDao.updateByPrimaryKey(comment);
	}

	@Override
	public List<Comment> queryComment() {
		CommentExample example = new CommentExample();
		return commentDao.selectByExample(example);
	}

	@Override
	public Comment queryCommentById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
