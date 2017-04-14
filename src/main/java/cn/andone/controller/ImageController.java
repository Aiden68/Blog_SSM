package cn.andone.controller;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ImageController {

	@RequestMapping("image")
	public String imageList(){
		return "frontImageList";
	}
}
