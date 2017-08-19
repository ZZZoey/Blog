package com.zoey.entity;

/**
 * Created by LSY on 2017/8/19.
 */
public class Blogger {

    private Integer id;
    private String bloggerName;
    private String password;

    public Blogger() {
    }

    public Blogger(String bloggerName, String password) {
        this.bloggerName = bloggerName;
        this.password = password;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBloggerName() {
        return bloggerName;
    }

    public void setBloggerName(String bloggerName) {
        this.bloggerName = bloggerName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
