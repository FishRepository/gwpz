package org.europeguy.controller;


import org.europeguy.common.AjaxResult;
import org.europeguy.common.Constant;

public abstract class BaseController {


    public <T> AjaxResult successData(T data){
        AjaxResult result=new AjaxResult();
        result.setCode(Constant.SUCCESS_CODE);
        result.setData(data);
        return result;
    }

    public <T> AjaxResult errorData(T data){
        AjaxResult result=new AjaxResult();
        result.setCode(Constant.ERROR_CODE);
        result.setData(data);
        return result;
    }

    public AjaxResult success(){
        AjaxResult result=new AjaxResult();
        result.setCode(Constant.SUCCESS_CODE);
        return result;
    }

    public AjaxResult errorMsg(String msg){
        AjaxResult result=new AjaxResult();
        result.setCode(Constant.ERROR_CODE);
        result.setMsg(msg);
        return result;
    }

    public AjaxResult error(){
        AjaxResult result=new AjaxResult();
        result.setCode(Constant.ERROR_CODE);
        result.setMsg(Constant.SYSTEM_ERROR);
        return result;
    }
}
