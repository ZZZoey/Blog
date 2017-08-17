package com.zoey.entity;

/**
 * Created by LSY on 2017/8/17.
 */
public class Type extends BaseEntity {
    private Integer typeId;
    private String name;

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
