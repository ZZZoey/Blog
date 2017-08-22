package com.zoey.dao;

import com.zoey.entity.Type;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/17.
 */
public interface TypeDao {

    List<Type> listType(HashMap<String,Object> param);

    Integer getTypeCount();

    int addType(Type type);

    int updateType(Type type);

    int deleteType(int typeId);

    Type getTypeById(@Param("typeId") Integer typeId);

}
