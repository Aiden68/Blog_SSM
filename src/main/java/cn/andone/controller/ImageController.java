package cn.andone.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ImageController {

	@RequestMapping("image")
	public String imageList(){
		return "frontImageList";
	}
	
	@RequestMapping("imageManage")
	public String imageManage(){
		return "backImageList";
	}
}
