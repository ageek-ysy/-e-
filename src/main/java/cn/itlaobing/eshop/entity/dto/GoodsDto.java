/**
 * FileName: GoodsDto
 * Author:   Ageek-姚树友
 * Date:     17-11-14 上午9:11
 * Description:
 */

package cn.itlaobing.eshop.entity.dto;

public class GoodsDto {
    private Long id;
    private Double price;
    private String good_name;
    private String picUrl;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getGood_name() {
        return good_name;
    }

    public void setGood_name(String good_name) {
        this.good_name = good_name;
    }

    public String getPicUrl() {
        return picUrl;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }

    @Override
    public String toString() {
        return "GoodsDto{" +
                "id=" + id +
                ", price=" + price +
                ", good_name='" + good_name + '\'' +
                ", picUrl='" + picUrl + '\'' +
                '}';
    }
}
