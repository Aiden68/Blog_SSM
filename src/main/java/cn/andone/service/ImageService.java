package cn.andone.service;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import cn.andone.pojo.Image;


public interface ImageService {

	List<Image> findAllImage();
	
	ArrayList<Image> getByUserId(int userId);
	
	void addImage(Image image, InputStream inputStream);
	
	void delByIdsAndUrls(String ids, String urls);
	
}
