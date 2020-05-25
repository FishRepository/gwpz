package org.europeguy.common;

import lombok.Data;
import org.springframework.http.HttpStatus;

import java.io.Serializable;

@Data
public class AjaxResult<T> implements Serializable {

    private static final long serialVersionUID = 80629816069662096L;
    private String msg;

    private T data;

    private int code;

    public AjaxResult(String msg, T data, int code) {
        this.msg = msg;
        this.data = data;
        this.code = code;
    }

    public AjaxResult<Void> error(){
        AjaxResult<Void> result = new AjaxResult<>();
        result.setCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
        result.setMsg("error");
        return result;
    }

    public AjaxResult<Void> success(){
        AjaxResult<Void> result = new AjaxResult<>();
        result.setCode(HttpStatus.OK.value());
        result.setMsg("success");
        return result;
    }

    public AjaxResult<T> success(T t){
        AjaxResult<T> result = new AjaxResult<>();
        result.setCode(HttpStatus.OK.value());
        result.setMsg("success");
        result.setData(t);
        return result;
    }
}
