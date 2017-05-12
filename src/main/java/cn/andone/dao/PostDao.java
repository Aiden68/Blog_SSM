package cn.andone.dao;

import cn.andone.model.Post;
import cn.andone.model.Statics;
import cn.andone.util.PageUtil;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by JLL on 2017/4/18.
 */
@Repository
public interface PostDao {

    @Select("select * from posts")
    List<Post> getAllPost();

    @Select("select * from posts order by createTime desc limit #{start}, #{offset}")
    List<Post> getPostByPage(@Param("start") int start, @Param("offset") int offset);

    @Select("select * from posts where catName = #{catName} order by createTime desc limit #{start}, #{offset}")
    List<Post> getPostByPageAndCategory(@Param("start") int start, @Param("offset") int offset, @Param("catName") String catName);

    @Select("select * from posts where content like #{key} or catName like #{key} order by createTime desc limit #{start}, #{offset}")
    List<Post> getPostByPageAndKey(@Param("start") int start, @Param("offset") int offset, @Param("key") String key);

    @Select("select * from posts where id = #{id}")
    Post getPostById(int id);

    @Select("select count(id) from posts")
    Integer getPostNum();

    @Select("select year(CreateTime) year, month(CreateTime) month,count(id) total from posts group by year(CreateTime),month(CreateTime) order by createTime desc limit 6")
    List<Statics> getPostByMonth();

    @Insert("insert into posts(id, title, catName, content, createTime, updateTime) values(" +
            "#{id}, #{title}, #{catName}, #{content}, #{createTime}, #{updateTime})")
    Integer addPost(Post post);

    @Delete("delete from posts where id = #{id}")
    void deletePost(Integer id);

    @Update("update posts set comSize = comSize + 1 where id = #{id}")
    void updateComSizeById(int id);

    @Update("update posts set visitor = visitor + 1 where id = #{id}")
    void updateVisitorById(int id);
}
