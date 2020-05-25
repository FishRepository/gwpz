package org.europeguy.entity;

import java.io.Serializable;

/**
 * 职业(Career)实体类
 *
 * @author makejava
 * @since 2019-08-09 17:07:21
 */
public class Career implements Serializable {
    private static final long serialVersionUID = -64039017881085657L;
    //主键
    private Integer id;
    //职业名称
    private String name;
    //职业图片
    private String imgUrl;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

}