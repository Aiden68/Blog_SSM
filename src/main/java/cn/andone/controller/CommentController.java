package cn.andone.controller;

import cn.andone.model.Comment;
import cn.andone.model.Post;
import cn.andone.service.CommentService;
import cn.andone.service.PostService;
import org.apache.ibatis.annotations.Insert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;

/**
 * Created by JLL on 2017/4/30.
 */
@Controller
public class CommentController {

    @Autowired
    private CommentService commentService;

    @Autowired
    private PostService postService;

    @RequestMapping("addComment")
    public String addComment(Integer id, Comment comment){
        postService.updateComSizeById(id);
        System.out.println(comment.getName());
        comment.setPid(id);
        Date date = new Date();
        comment.setCreateTime(date);
        commentService.addComment(comment);
        String tid = id.toString();
        return "redirect:/detail?id=" + tid + "#commentId";
    }

    @RequestMapping("backCommentList")
    public String commentList(Model model){
        List<Comment> commentList = commentService.getCommentListByPage();
        model.addAttribute("commentList", commentList);
        return "forward:/WEB-INF/template/back/mailbox.jsp";
    }

    @RequestMapping("backCommentDetail")
    public String commentDetail(Integer id, Model model){
        Comment comment = commentService.getCommentById(id);
        Post post = postService.getPostById(comment.getPid());
        model.addAttribute("comment", comment);
        model.addAttribute("post", post);
        return "forward:/WEB-INF/template/back/mail_detail.jsp";
    }
}
