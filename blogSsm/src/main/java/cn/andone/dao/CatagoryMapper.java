package cn.andone.dao;

import cn.andone.pojo.Catagory;
import cn.andone.pojo.CatagoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CatagoryMapper {
    int countByExample(CatagoryExample example);

    int deleteByExample(CatagoryExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Catagory record);

    int insertSelective(Catagory record);

    List<Catagory> selectByExample(CatagoryExample example);

    Catagory selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Catagory record, @Param("example") CatagoryExample example);

    int updateByExample(@Param("record") Catagory record, @Param("example") CatagoryExample example);

    int updateByPrimaryKeySelective(Catagory record);

    int updateByPrimaryKey(Catagory record);
}