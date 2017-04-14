package cn.andone.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.andone.dao.CatagoryMapper;
import cn.andone.pojo.Catagory;
import cn.andone.pojo.CatagoryExample;
import cn.andone.service.CatagoryService;

@Service
public class CatagoryServiceImpl implements CatagoryService {

	@Autowired
	private CatagoryMapper catagoryDao;
	
	@Override
	public List<Catagory> queryAll() {
		CatagoryExample example = new CatagoryExample();
		return catagoryDao.selectByExample(example);
	}

	@Override
	public Catagory queryById(int id) {
		// TODO Auto-generated method stub
		return catagoryDao.selectByPrimaryKey(id);
	}

}
