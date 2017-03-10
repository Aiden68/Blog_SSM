package cn.andone.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.andone.pojo.Catagory;
import cn.andone.pojo.Comment;
import cn.andone.pojo.Posts;
import cn.andone.service.CatagoryService;
import cn.andone.service.PostService;
import cn.andone.service.impl.CatagoryServiceImpl;
import cn.andone.service.impl.PostServiceImpl;
import cn.andone.util.Constant;
import cn.andone.util.Pager;



@Controller
@RequestMapping("/")
public class PostController {

	@Autowired
	private PostService postService = new PostServiceImpl();
	
	@Autowired
	private CatagoryService catagoryService = new CatagoryServiceImpl();
	
	@SuppressWarnings("unchecked")
	@RequestMapping("list")
	public String postList(HttpServletRequest request,
			String pageNum, String pageSizeStr, String catName, Model model) throws UnsupportedEncodingException{
		int pageSize = Constant.DEFAULT_PAGE_SIZE;
		if(pageSizeStr!=null && !"".equals(pageSizeStr.trim())){
			pageSize = Integer.parseInt(pageSizeStr);
		}
		int currentPage = Constant.DEFAULT_PAGE_NUM; //显示第几页数据
		if(pageNum!=null && !"".equals(pageNum.trim())){
			currentPage = Integer.parseInt(pageNum);
		}
		Pager<Posts> result = null;
		System.out.println(catName);
		if(catName != null && !catName.equals("")){
			catName = new String(catName.getBytes("ISO-8859-1"), "utf-8");
			result = postService.queryByPageAndCatName(currentPage, pageSize, catName);	
		}
		else{
			result = postService.queryByPage(currentPage, pageSize);
		}	
		for(Posts post:result.getResultList()){
			if(post.getContent()==null){
				continue;
			}
			String content = post.getContent();
			String regex = "<[^>]*>";
			String temp = content.replaceAll(regex, "");
			temp += "......";
			if(temp.length() > 200){
				post.setSummary(temp.substring(0, 200) + "......");
			}
			else{
				post.setSummary(temp);
			}
		}
		List<Catagory> catList = catagoryService.queryAll();
		model.addAttribute("result", result);
		model.addAttribute("catList", catList);
		return "frontList";
	}
	
	@RequestMapping("")
	public String index(){
		return "index";
	}
	
	@RequestMapping("postdetail")
	public String detail(String id, Model model){
		Posts post = postService.queryPostandCommentById(id);
		model.addAttribute("post",post);
		List<Catagory> catList = catagoryService.queryAll();
		model.addAttribute("catList", catList);
		model.addAttribute("commentSize", post.getCommentList().size());
		return "forward:/WEB-INF/jsp/frontDetail.jsp";
	}
}
