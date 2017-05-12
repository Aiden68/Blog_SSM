package cn.andone.dao;

import cn.andone.model.Category;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by JLL on 2017/4/22.
 */
@Repository
public interface CategoryDao {

    @Select("select catName from catagory")
    List<Category> getAllCategory();

    @Insert("insert catagory(catName) values(#{catName})")
    void addCategory(String catName);
}
