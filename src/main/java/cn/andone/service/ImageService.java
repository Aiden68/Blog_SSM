package cn.andone.service;

import cn.andone.dao.ImageDao;
import cn.andone.model.Image;
import cn.andone.util.ImageUtil;
import org.apache.ibatis.annotations.Insert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.InputStream;
import java.util.List;

/**
 * Created by JLL on 2017/5/10.
 */
@Service
public class ImageService {

    @Autowired
    private ImageDao imageDao;

    public List<Image> getAllImage(){
        return imageDao.findAllImage();
    }

    public List<Image> getImageByUserId(int userId){
        return imageDao.getByUserId(userId);
    }

    public void addImage(Image image, InputStream inputStream){
        imageDao.addImage(image);
        ImageUtil.upload(inputStream, image.getUrl());
    }

    public void deleteImage(String id, String url){
        imageDao.delByIdsAndUrls(id, url);
    }
}
