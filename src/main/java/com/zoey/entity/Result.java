package com.zoey.entity;

/**
 * Created by LSY on 2017/8/20.
 */
public class Result {

    private String msg;
    private Boolean success;

    public Result(){};
    public Result(Boolean success){
        this.success=success;
    }
    public Result(Boolean success,String msg){
        this.success=success;
        this.msg=msg;
    }

    public static Result ok(){
        return new Result(true);
    }

    public static Result ok(String msg){return new Result(true,msg); }

    public static Result error(String msg){
        return new Result(false,msg);
    }

    public static Result error(){
        return new Result(false);
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Boolean getSuccess() {
        return success;
    }

    public void setSuccess(Boolean success) {
        this.success = success;
    }
}
