package cn.andone.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.http.HttpResponse;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.andone.pojo.Comment;
import cn.andone.service.CommentService;

@Controller
public class CommentController {

	@Autowired
	private CommentService commentService;
	
	@RequestMapping("/addcomment")
	public String addComment(String pid, Integer comSize, Comment comment){
		comment.setCreatetime(new Date());
		commentService.addComment(comment);
		return "forward:/postdetail?id="+pid;
	}
	
	
}
