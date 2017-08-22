package com.zoey.service.impl;

import com.zoey.dao.TypeDao;
import com.zoey.entity.PageBean;
import com.zoey.entity.Type;
import com.zoey.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/19.
 */

@Service("typeService")
public class TypeServiceImpl implements TypeService {

    @Autowired
    private TypeDao typeDao;

    public List<Type> listType(PageBean pageBean) {
        HashMap<String,Object> param=new HashMap<String, Object>();
        param.put("start",pageBean.getStart());
        param.put("rows",pageBean.getPageSize());
        return typeDao.listType(param);
    }

    public Integer getTypeCount() {
        return typeDao.getTypeCount();
    }

    public int addType(Type type) {
        return typeDao.addType(type);
    }

    public int updateType(Type type) {
        return typeDao.updateType(type);
    }

    public int deleteType(int typeId) {
        return typeDao.deleteType(typeId);
    }

    public Type getTypeById(Integer blogId) {
        return typeDao.getTypeById(blogId);
    }

    public List<Type> typeComboList(HashMap<String, Object> param) {
        return typeDao.listType(param);
    }


}
