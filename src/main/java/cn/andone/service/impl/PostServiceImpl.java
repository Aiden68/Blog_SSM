package cn.andone.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.lang.model.element.PackageElement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.andone.dao.PostsMapper;
import cn.andone.pojo.Posts;
import cn.andone.pojo.PostsExample;
import cn.andone.pojo.PostsExample.Criteria;
import cn.andone.service.PostService;
import cn.andone.util.Pager;

@Service
public class PostServiceImpl implements PostService{

	@Autowired
	private PostsMapper postDao;
	
	@Override
	public List<Posts> queryAll() {
		PostsExample example = new PostsExample();
//		Criteria criteria = example.createCriteria();
		return postDao.selectByExample(example);
	}

	@Override
	public Posts queryById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Posts updatePost(Posts post) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deletePostById(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Pager queryByPage(int currentPage, int pageSize) {
		PostsExample example = new PostsExample();
		int totalSize = postDao.countByExample(example);
		int totalPage = totalSize / pageSize;
		List<Posts> resultList = null;
		if(totalSize % pageSize != 0){
			totalPage++;
		}
		Pager<Posts> pager = new Pager<>(pageSize, currentPage, totalSize, totalPage, resultList);
		int start = (currentPage - 1) * pageSize;
		Map<String, Integer> map = new HashMap<>();
		map.put("start", start);
		map.put("end", pageSize);
		pager.setResultList(postDao.selectByPage(map));
		return pager;
	}

	@Override
	public Pager queryByPageAndCatName(int currentPage, int pageSize, String catName) {
		PageHelper.startPage(currentPage, pageSize);
		PostsExample example = new PostsExample();
		Criteria criteria = example.createCriteria();
		criteria.andCatnameEqualTo(catName);
		List<Posts> list = postDao.selectByExample(example);
		/*PageInfo<Posts> pageInfo = new PageInfo<>(list);
		System.out.println(pageInfo.getTotal());
		System.out.println(list.size());*/
		Pager pager = new Pager<>(pageSize, currentPage,
				list.size(), list.size() / pageSize, list);
		return pager;
	}

	@Override
	public Posts queryPostandCommentById(String id) {
		return postDao.selectAndCommentByPrimaryKey(Integer.parseInt(id));
	}

}
