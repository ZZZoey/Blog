package com.zoey.entity;

/**
 * Created by LSY on 2017/8/17.
 */
public class Comment extends BaseEntity{
    private Integer commentId;
    private String visitorIp;
    private String visitorName;
    private String email;
    private String visitorImage;
    private String content;
    private Integer blogId;

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public String getVisitorIp() {
        return visitorIp;
    }

    public void setVisitorIp(String visitorIp) {
        this.visitorIp = visitorIp;
    }

    public String getVisitorName() {
        return visitorName;
    }

    public void setVisitorName(String visitorName) {
        this.visitorName = visitorName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getVisitorImage() {
        return visitorImage;
    }

    public void setVisitorImage(String visitorImage) {
        this.visitorImage = visitorImage;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getBlogId() {
        return blogId;
    }

    public void setBlogId(Integer blogId) {
        this.blogId = blogId;
    }
}
