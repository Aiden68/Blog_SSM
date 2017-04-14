package cn.andone.service;

import java.util.List;

import cn.andone.pojo.Posts;
import cn.andone.util.Pager;

public interface PostService {

	List<Posts> queryAll();
	
	Posts queryById(String id);
	
	Posts queryPostandCommentById(String id);
	
	Posts updatePost(Posts post);
	
	void deletePostById(String id);
	
	Pager queryByPage(int currentPage, int pageSize);
	
	Pager queryByPageAndCatName(int currentPage, int pageSize, String catName);
}
