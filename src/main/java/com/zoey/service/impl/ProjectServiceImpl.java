package com.zoey.service.impl;

import com.zoey.dao.ProjectDao;
import com.zoey.entity.Project;
import com.zoey.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by LSY on 2017/8/18.
 */

@Service("projectService")
public class ProjectServiceImpl implements ProjectService {

    @Autowired
    private ProjectDao projectDao;

    public List<Project> listProject() {
        return projectDao.listProject();
    }
}
