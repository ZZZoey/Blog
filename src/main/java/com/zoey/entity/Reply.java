package com.zoey.entity;

public class Reply {

    private Integer replId;
    private String content;
    private Integer commentId;

    public Integer getReplId() {
        return replId;
    }

    public void setReplId(Integer replId) {
        this.replId = replId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }
}
