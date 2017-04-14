package cn.andone.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.andone.dao.AdminMapper;
import cn.andone.pojo.Admin;
import cn.andone.pojo.AdminExample;
import cn.andone.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminDao;
	
	@Override
	public Admin adminLogin(String username, String password) {
		AdminExample example = new AdminExample();
		example.createCriteria().andUsernameEqualTo(username).andPwdEqualTo(password);
		List<Admin> list = adminDao.selectByExample(example);
		if(list.isEmpty()){
			return null;
		}
		return list.get(0);
	}

}
