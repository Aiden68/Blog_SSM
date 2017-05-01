package cn.andone.service;

import cn.andone.dao.PostDao;
import cn.andone.model.Post;
import cn.andone.model.Statics;
import cn.andone.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by JLL on 2017/4/18.
 */
@Service
public class PostService {

    @Autowired
    PostDao postDao;

    public Integer addPost(Post post){
        return postDao.addPost(post);
    }
    public List<Post> getAllPost(){
        return postDao.getAllPost();
    }

    public Post getPostById(int id){
        return postDao.getPostById(id);
    }

    public List<Statics> getPostByMonth(){
        return postDao.getPostByMonth();
    }

    public void updateComSizeById(int id){
        postDao.updateComSizeById(id);
    }

    public void updateVisitorById(int id){
        postDao.updateVisitorById(id);
    }

    public void deletePostById(int id){
        postDao.deletePost(id);
    }

    public PageUtil<Post> getPostByPage(Integer currentPage, Integer pageSize){
        if(currentPage == null || currentPage == 0){
            currentPage = 1;
        }
        if(pageSize == null || pageSize == 0){
            pageSize = 6;
        }
        List<Post> postList = postDao.getPostByPage((currentPage - 1) * pageSize, pageSize);
        for(Post post: postList){
            if(post.getContent()==null){
                continue;
            }
            String content = post.getContent();
            String regex = "<[^>]*>";
            String temp = content.replaceAll(regex, "");
            temp += "......";
            if(temp.length() > 250){
                post.setSummary(temp.substring(0, 250) + "......");
            }
            else{
                post.setSummary(temp);
            }
        }
        int totalNum = postDao.getPostNum();
        int totalPage = totalNum / pageSize;
        if(totalNum % pageSize != 0){
            totalPage++;
        }
        PageUtil<Post> page = new PageUtil<>(totalPage, totalNum, currentPage, pageSize, postList);

        return page;
    }
}
