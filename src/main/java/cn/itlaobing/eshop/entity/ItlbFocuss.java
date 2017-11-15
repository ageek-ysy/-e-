package cn.itlaobing.eshop.entity;

import java.io.Serializable;
import java.util.Date;

/**
* Created by Administrator on 2017/11/3 0003.
*/
public class ItlbFocuss implements Serializable{

    private Long id ; // Id
    private String title ; // 标题
    private String img ; // 图片
    private String target_url ; // 链接URL
    private Double weight ; // 权重
    private Long platform ; // 应用平台@@PC/APP
    private Long position ; // 显示位置@@首页/其它

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getTarget_url() {
        return target_url;
    }

    public void setTarget_url(String target_url) {
        this.target_url = target_url;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public Long getPlatform() {
        return platform;
    }

    public void setPlatform(Long platform) {
        this.platform = platform;
    }

    public Long getPosition() {
        return position;
    }

    public void setPosition(Long position) {
        this.position = position;
    }
}
