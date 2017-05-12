package cn.andone.dao;

import cn.andone.model.Image;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.io.InputStream;
import java.util.List;

/**
 * Created by JLL on 2017/5/10.
 */
@Repository
public interface ImageDao {

    @Select("select * from image")
    List<Image> findAllImage();

    @Select("select * from image where user_id = userId")
    List<Image> getByUserId(int userId);

    @Insert("insert into image(name, url, date) values(#{name}, #{url}, #{date})")
    void addImage(Image image);

    @Delete("delete from image where id = #{id} and url = url")
    void delByIdsAndUrls(@Param("id") String id,@Param("url") String url);
}
