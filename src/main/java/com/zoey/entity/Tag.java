package com.zoey.entity;

/**
 * Created by LSY on 2017/8/17.
 */
public class Tag extends BaseEntity{
    private Integer tagId;
    private String name;

    public Integer getTagId() {
        return tagId;
    }

    public void setTagId(Integer tagId) {
        this.tagId = tagId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
