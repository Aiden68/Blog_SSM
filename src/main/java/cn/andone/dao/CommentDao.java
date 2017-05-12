package cn.andone.dao;

import cn.andone.model.Comment;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by JLL on 2017/4/30.
 */
@Repository
public interface CommentDao {

    @Insert("insert into comment(name, email, pid, createTime, content)" +
            " values(#{name}, #{email}, #{pid}, #{createTime}, #{content})")
    public int addComment(Comment comment);

    @Select("select * from comment where pid = #{pid}")
    public List<Comment> getCommentList(int pid);

    @Select("select * from comment")
    public List<Comment> getCommentByPage();

    @Select("select * from comment where id=#{id}")
    public Comment getCommentById(int id);
}
