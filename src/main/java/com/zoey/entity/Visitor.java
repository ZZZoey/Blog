package com.zoey.entity;

import java.util.Date;

/**
 * Created by LSY on 2017/8/17.
 */
public class Visitor {
    private Integer visitorId;
    private String visitorIp;
    private Date createTime;

    public Integer getVisitorId() {
        return visitorId;
    }

    public void setVisitorId(Integer visitorId) {
        this.visitorId = visitorId;
    }

    public String getVisitorIp() {
        return visitorIp;
    }

    public void setVisitorIp(String visitorIp) {
        this.visitorIp = visitorIp;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
