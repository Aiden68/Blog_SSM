package cn.andone.controller;

import cn.andone.model.Category;
import cn.andone.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by JLL on 2017/4/22.
 */
@Controller
public class CategoryController {

    @Autowired
    CategoryService categoryService;

    @ResponseBody
    @RequestMapping("listCategory")
    public List<Category> listCategory(){
        return categoryService.getAllCategory();
    }

    @RequestMapping("addCategory")
    public String addCategory(String newcatName){
        categoryService.addCategory(newcatName);
        return "forward:listCategory";
    }
}
