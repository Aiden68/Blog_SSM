package cn.andone.service;

import cn.andone.dao.CommentDao;
import cn.andone.model.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by JLL on 2017/4/30.
 */
@Service
public class CommentService {

    @Autowired
    private CommentDao commentDao;

    public void addComment(Comment comment){
        commentDao.addComment(comment);
    }

    public List<Comment> getCommentList(int pid){
        return commentDao.getCommentList(pid);
    }

    public List<Comment> getCommentListByPage(){
        return commentDao.getCommentByPage();
    }

    public Comment getCommentById(int id){
        return commentDao.getCommentById(id);
    }
}
