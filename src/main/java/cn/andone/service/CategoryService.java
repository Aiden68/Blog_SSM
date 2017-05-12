package cn.andone.service;

import cn.andone.dao.CategoryDao;
import cn.andone.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by JLL on 2017/4/22.
 */
@Service
public class CategoryService {

    @Autowired
    CategoryDao categoryDao;

    public List<Category> getAllCategory(){
        return categoryDao.getAllCategory();
    }

    public void addCategory(String catName){
        categoryDao.addCategory(catName);
    }
}
