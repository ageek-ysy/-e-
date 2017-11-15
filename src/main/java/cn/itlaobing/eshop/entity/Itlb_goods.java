package cn.itlaobing.eshop.entity;

public class Itlb_goods {
  private Long id;
  private Long dep_id;
  private Long shop_id;
  private String good_name;
  private Long is_show;
  private Double orders_weight;
  private Double price;
  private String remark;
  private String detail;
  private Long status_line;
  private String good_new;
  private String logic_category;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public Long getDep_id() {
    return dep_id;
  }

  public void setDep_id(Long dep_id) {
    this.dep_id = dep_id;
  }

  public Long getShop_id() {
    return shop_id;
  }

  public void setShop_id(Long shop_id) {
    this.shop_id = shop_id;
  }

  public String getGood_name() {
    return good_name;
  }

  public void setGood_name(String good_name) {
    this.good_name = good_name;
  }

  public Long getIs_show() {
    return is_show;
  }

  public void setIs_show(Long is_show) {
    this.is_show = is_show;
  }

  public Double getOrders_weight() {
    return orders_weight;
  }

  public void setOrders_weight(Double orders_weight) {
    this.orders_weight = orders_weight;
  }

  public Double getPrice() {
    return price;
  }

  public void setPrice(Double price) {
    this.price = price;
  }

  public String getRemark() {
    return remark;
  }

  public void setRemark(String remark) {
    this.remark = remark;
  }

  public String getDetail() {
    return detail;
  }

  public void setDetail(String detail) {
    this.detail = detail;
  }

  public Long getStatus_line() {
    return status_line;
  }

  public void setStatus_line(Long status_line) {
    this.status_line = status_line;
  }

  public String getGood_new() {
    return good_new;
  }

  public void setGood_new(String good_new) {
    this.good_new = good_new;
  }

  public String getLogic_category() {
    return logic_category;
  }

  public void setLogic_category(String logic_category) {
    this.logic_category = logic_category;
  }
}
