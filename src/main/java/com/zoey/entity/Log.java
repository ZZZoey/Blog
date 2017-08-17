package com.zoey.entity;

/**
 * Created by LSY on 2017/8/17.
 */
public class Log extends BaseEntity {
    private Integer logId;
    private String content;

    public Integer getLogId() {
        return logId;
    }

    public void setLogId(Integer logId) {
        this.logId = logId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
