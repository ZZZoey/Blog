package com.zoey.entity;

/**
 * Created by LSY on 2017/8/17.
 */
public class Project extends BaseEntity {
    private Integer projectId;
    private String title;
    private String summary;
    private String coverImage;


    public Integer getProjectId() {
        return projectId;
    }

    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getCoverImage() {
        return coverImage;
    }

    public void setCoverImage(String coverImage) {
        this.coverImage = coverImage;
    }


    public Project() {
    }

    public Project(Integer projectId, String title, String summary) {
        this.projectId = projectId;
        this.title = title;
        this.summary = summary;
    }
}
