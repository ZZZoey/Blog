package com.zoey.service.impl;

import com.zoey.dao.ProjectDao;
import com.zoey.entity.Project;
import com.zoey.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/18.
 */

@Service("projectService")
public class ProjectServiceImpl implements ProjectService {

    @Autowired
    private ProjectDao projectDao;

    public List<Project> listProject(HashMap<String,Object> param) {
        return projectDao.listProject(param);
    }

    public int getProjectCount() {
        return projectDao.getProjectCount();
    }

    public int addProject(Project project) {
        return projectDao.addProject(project);
    }

    public int updateProject(Project project) {
        return projectDao.updateProject(project);
    }

    public int deleteProject(int projectId) {
        return projectDao.deleteProject(projectId);
    }
}
