package cn.itlaobing.eshop.entity;

import java.io.Serializable;
import java.util.Date;

/**
* Created by Administrator on 2017/11/3 0003.
*/
public class ItlbGoodsPic implements Serializable {

    private Long picId ; // 图片ID
    private Long goodsId ; // 商品ID，用以关联商品
    private String picUrl ; // 图片地址，数据格式为json如{pic1:xxxxxxx,pic2:ccccccc,pic3:mmmmmm}

    public Long getPicId() {
        return picId;
    }

    public void setPicId(Long picId) {
        this.picId = picId;
    }

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public String getPicUrl() {
        return picUrl;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }
}
