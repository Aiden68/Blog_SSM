package cn.andone.dao;

import cn.andone.pojo.Posts;
import cn.andone.pojo.PostsExample;
import cn.andone.util.Pager;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface PostsMapper {
    int countByExample(PostsExample example);

    int deleteByExample(PostsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Posts record);

    int insertSelective(Posts record);

    List<Posts> selectByExampleWithBLOBs(PostsExample example);

    List<Posts> selectByExample(PostsExample example);
    
    List<Posts> selectByPage(Map<String, Integer> map);

    Posts selectByPrimaryKey(Integer id);

    Posts selectAndCommentByPrimaryKey(Integer id);
    
    int updateByExampleSelective(@Param("record") Posts record, @Param("example") PostsExample example);

    int updateByExampleWithBLOBs(@Param("record") Posts record, @Param("example") PostsExample example);

    int updateByExample(@Param("record") Posts record, @Param("example") PostsExample example);

    int updateByPrimaryKeySelective(Posts record);

    int updateByPrimaryKeyWithBLOBs(Posts record);

    int updateByPrimaryKey(Posts record);
}