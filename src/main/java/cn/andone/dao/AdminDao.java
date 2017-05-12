package cn.andone.dao;

import cn.andone.model.Admin;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * Created by JLL on 2017/4/27.
 */
@Repository
public interface AdminDao {

    @Select("select * from admin where username = #{username} and pwd = #{password}")
    public Admin getAdminByNameAndPwd(@Param("username") String username, @Param("password") String password);
}
