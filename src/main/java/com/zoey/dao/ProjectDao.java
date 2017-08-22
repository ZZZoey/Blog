package com.zoey.dao;

import com.zoey.entity.Project;

import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/17.
 */
public interface ProjectDao {

    List<Project> listProject(HashMap<String,Object> param);

    int getProjectCount();

    int addProject(Project project);

    int updateProject(Project project);

    int deleteProject(int projectId);
    

}
