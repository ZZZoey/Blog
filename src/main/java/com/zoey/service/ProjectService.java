package com.zoey.service;

import com.zoey.entity.Project;

import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/18.
 */
public interface ProjectService {

    List<Project> listProject(HashMap<String,Object> param);

    int getProjectCount();

    int addProject(Project project);

    int updateProject(Project project);

    int deleteProject(int projectId);

}
