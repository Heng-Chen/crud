package com.ch.crud.bean;

import java.util.HashMap;
import java.util.Map;

public class Msg {

    private int code;

    private String msg;

    private Map<String,Object> map = new HashMap<>();

    public static Msg success(){
        Msg result =new Msg();
        result.setCode(100);
        result.setMsg("success");
        return result;
    }
    public static Msg desuccess(){
        Msg result =new Msg();
        result.setCode(200);
        result.setMsg("desuccess");
        return result;
    }

    public Msg add(String key,Object value){
        this.getMap().put(key,value);
        return this;
    }
    public Msg() {
    }

    public Msg(int code, String msg, Map<String, Object> map) {
        this.code = code;
        this.msg = msg;
        this.map = map;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Map<String, Object> getMap() {
        return map;
    }

    public void setMap(Map<String, Object> map) {
        this.map = map;
    }
}
