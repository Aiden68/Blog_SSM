package cn.andone.service;

import java.util.List;

import cn.andone.pojo.Catagory;

public interface CatagoryService {

	List<Catagory> queryAll();
	
	Catagory queryById(int id);
}
