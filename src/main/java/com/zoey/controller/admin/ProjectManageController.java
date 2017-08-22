package com.zoey.controller.admin;

import com.zoey.entity.PageBean;
import com.zoey.entity.Project;
import com.zoey.entity.Result;
import com.zoey.service.BlogService;
import com.zoey.service.ProjectService;
import com.zoey.util.DateUtil;
import com.zoey.util.JsonUtil;
import com.zoey.util.ResponseUtil;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class ProjectManageController {

    @Autowired
    private ProjectService projectService;

    @Autowired
    private BlogService blogService;

    @RequestMapping("/project/list")
    public void listProject(Integer page, Integer rows, HttpServletResponse response) {
        PageBean pageBean = new PageBean(page, rows);
        HashMap<String, Object> param = new HashMap<String, Object>();
        param.put("start", pageBean.getStart());
        param.put("rows", pageBean.getPageSize());
        List<Project> projectList = projectService.listProject(param);
        Integer total = projectService.getProjectCount();
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("rows", projectList);
        result.put("total", total);
        ResponseUtil.write(response, JsonUtil.getJsonFromObject(result));
    }

    @RequestMapping("/project/save")
    public void saveProject(@RequestParam(value = "file", required = true) MultipartFile file, @RequestParam(value = "projectId", required = false) Integer projectId,
                            String title, String summary, HttpServletRequest request, HttpServletResponse response) throws IOException {
        Project project = new Project(projectId, title, summary);
        String path = request.getSession().getServletContext().getRealPath("/");
        String fileName = file.getOriginalFilename();
        String imageName= DateUtil.getCurrentDateStr();
        project.setCoverImage("/images/"+imageName+"."+fileName.split("\\.")[1]);
        String filePath=path+"/images/"+imageName+"."+fileName.split("\\.")[1];
        request.setAttribute("coverImage", project.getCoverImage());
        //把文件上传至path的路径
        File localFile = new File(filePath);
        file.transferTo(localFile);
        if (project.getProjectId() == null) {
            projectService.addProject(project);
        } else {
            projectService.updateProject(project);
        }
        ResponseUtil.write(response, JsonUtil.getJsonFromObject(Result.ok()));
    }

    @RequestMapping("/project/delete")
    public void deleteProject(String ids, HttpServletResponse response) {
        int resultNums = 0;
        for (String projectId : ids.split(",")) {
            HashMap<String, Object> param = new HashMap<String, Object>();
            param.put("projectId", Integer.parseInt(projectId));
            int exist = blogService.getBlogCount(param);
            if (exist > 0) {
                ResponseUtil.write(response, JsonUtil.getJsonFromObject(Result.ok("删除失败，该项目下有博文")));
                return;
            } else {
                resultNums += projectService.deleteProject(Integer.parseInt(projectId));
            }
        }
        if (resultNums > 0) {
            ResponseUtil.write(response, JsonUtil.getJsonFromObject(Result.ok()));
        } else {
            ResponseUtil.write(response, JsonUtil.getJsonFromObject(Result.error()));
        }

    }
}
