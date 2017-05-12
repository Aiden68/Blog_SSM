package cn.andone.controller;

import cn.andone.model.Image;
import cn.andone.service.ImageService;
import com.alibaba.fastjson.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by JLL on 2017/5/10.
 */
@Controller
public class ImageController {

    @Autowired
    private ImageService imageService;

    @RequestMapping("image")
    String image(Model model){
        List<Image> imageList = imageService.getAllImage();
        model.addAttribute("imageList", imageList);
        return "front/image";
    }

    @RequestMapping("addImage")
    @ResponseBody
    public String addImage(@RequestParam(value = "image", required = false)MultipartFile file, String image_name, Model model) throws IOException, ServletException {
//        Part image = request.getPart("image");
//        InputStream inputStream = image.getInputStream();
        InputStream inputStream = file.getInputStream();
        Image img = new Image();
        img.setDate(new Date());
        if(image_name != null){
            img.setName(image_name);
        }
        else {
            img.setName("admin");
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        img.setUrl(sdf.format(new Date()).toString() + "/" + UUID.randomUUID());
        List<String> urlList = new ArrayList<String>();
        urlList.add(img.getUrl());
        imageService.addImage(img, inputStream);
//          request.getSession().setAttribute("imageList", imageService.getByUserId(img.getUser().getId()));
        model.addAttribute("image", img);
        String url = img.getUrl();
        return url;
    }

    @RequestMapping("deleteImage")
    public void deleteImage(String ids, String urls){
        
    }
}
