package cn.andone.controller;

import cn.andone.dao.PostDao;
import cn.andone.model.Post;
import cn.andone.model.Statics;
import cn.andone.service.CommentService;
import cn.andone.service.PostService;
import cn.andone.util.DataTablesResult;
import cn.andone.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by JLL on 2017/4/18.
 */
@Controller
public class PostController {

    @Autowired
    private PostService postService;

    @Autowired
    private CommentService commentService;

    @RequestMapping("")
    public String index(){
        return "front/index";
    }

    @RequestMapping("/list")
    public String list(Integer currentPage, Integer pageSize, Model model){
        PageUtil<Post> page = postService.getPostByPage(currentPage, pageSize);
        List<Statics> statics = postService.getPostByMonth();
        model.addAttribute("page", page);
        model.addAttribute("statics",statics);
        return "front/list";
    }

    @RequestMapping("/detail")
    public String detail(Integer id, Model model){
        postService.updateVisitorById(id);
        Post post = postService.getPostById(id);
        post.setCommentList(commentService.getCommentList(id));
        model.addAttribute("post", post);
        return "front/detail";
    }

    @RequestMapping("backIndex")
    public String backIndex(){

        return "back/index";
    }

    @RequestMapping("backIndexV1")
    public String backIndexV1(){
        return "forward:/WEB-INF/template/back/index_v1.jsp";
    }

    @RequestMapping("backUeditor")
    public String ueditor(){
        return "forward:/WEB-INF/template/back/ueditor.jsp";
    }

    @RequestMapping("backAddPost")
    public String addPost(Post post){
        Date date = new Date();
        post.setCreateTime(date);
        post.setUpdateTime(date);
        postService.addPost(post);
        return "forward:/WEB-INF/template/back/index_v1.jsp";
    }

    @RequestMapping("backListPost")
    public String backListPost(Integer currentPage, Integer pageSize,Model model){
        if(pageSize == null || pageSize == 0){
            pageSize = 10;
        }
        PageUtil<Post> page = postService.getPostByPage(currentPage, pageSize);
        List<Integer> pageList = new ArrayList<>();
        System.out.println(page.getTotalPage());
        for(int i = 0; i < page.getTotalPage(); i++){
            pageList.add(i);
        }
        model.addAttribute("pageList", pageList);
        model.addAttribute("page", page);
        return "forward:/WEB-INF/template/back/listPost.jsp";
    }


    @RequestMapping("backDeletePost")
    public String deletePost(Integer id, Integer currentPage, Integer pageSize,Model model){
        postService.deletePostById(id);
        if(pageSize == null || pageSize == 0){
            pageSize = 10;
        }
        PageUtil<Post> page = postService.getPostByPage(currentPage, pageSize);

        return "forward:backListPost";
    }
}
