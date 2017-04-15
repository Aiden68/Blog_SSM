package cn.andone.service.impl;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.andone.dao.ImageMapper;
import cn.andone.pojo.Image;
import cn.andone.pojo.ImageExample;
import cn.andone.pojo.ImageExample.Criteria;
import cn.andone.service.ImageService;



public class ImageServiceImpl implements ImageService {

	@Autowired
	private ImageMapper imageDao;
	
	@Override
	public List<Image> findAllImage() {
		ImageExample example = new ImageExample();
		return imageDao.selectByExample(example);
	}

	@Override
	public ArrayList<Image> getByUserId(int userId) {
		return null;
	}

	@Override
	public void addImage(Image image, InputStream inputStream) {
		imageDao.insert(image);
	}

	@Override
	public void delByIdsAndUrls(String ids, String urls) {
		ImageExample example = new ImageExample();
		example.createCriteria().andUrlEqualTo(urls).andIdEqualTo(Integer.parseInt(ids));
		imageDao.deleteByExample(example);
	}

}
