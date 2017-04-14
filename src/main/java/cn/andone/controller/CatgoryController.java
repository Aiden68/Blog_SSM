package cn.andone.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.andone.pojo.Catagory;
import cn.andone.service.CatagoryService;

@Controller
@RequestMapping("/")
public class CatgoryController {

	@Autowired
	private CatagoryService catagoryService;
	
	@RequestMapping("catlist")
	@ResponseBody
	List<Catagory> catList(){
		
		return catagoryService.queryAll();
	}
}
