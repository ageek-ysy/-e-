package cn.itlaobing.eshop.entity;

import java.io.Serializable;
import java.util.Date;

/**
* Created by Administrator on 2017/11/3 0003.
*/
public class BaseGoods implements Serializable {

    private Long goodsid ; // id
    private String goodsNumber ; // 商品内部编号
    private String goodsBarNo ; // 商品条码
    private String goodsName ; // 商品名称
    private String goodsForShort ; // 商品简称
    private String goodsPinYin ; // 商品名拼音
    private Double goodsPurchasePrice ; // 商品进货价
    private Double goodsSellingPrice ; // 商品零售价
    private Double goodsMemberPrice ; // 商品会员价
    private String goodsPlaceOfOrigin ; // 商品原产地
    private String goodsSpecification ; // 商品规格
    private String goodsGrade ; // 商品等级
    private Long goods_pUnit_Id ; // 商品单位Id
    private Float goodsInputTax ; // 商品进项税
    private Float goodsOutputTax ; // 商品销项税
    private Long goods_Brand_Id ; // 商品品牌Id
    private Long goods_GosCte_Id ; // 商品类别Id
    private Long goods_Provider_Id ; // 商品默认供应商Id
    private Long goodsIsNew ; // 商品是否是新品
    private Long goodsAllowAccumulatePoints ; // 商品是否允许积分
    private Long goodsAllowDiscount ; // 商品是否允许打折
    private Long goodsAllowMemberPrice ; // 商品是否启用会员价
    private Long goodsState ; // 商品状态
    private String goodsMemo ; // 备注
    private String brandName ; // 品牌名
    private String goodsCteNumber ; // 类别编号
    private String goodsCteName ; // 类别名
    private String providerNumber ; // 供应商编号
    private String providerName ; // 供应商名

    public Long getgoodsid() {
        return goodsid;
    }
    public void setgoodsid(Long goodsid) {
        this.goodsid = goodsid;
    }
    public String getgoodsNumber() {
        return goodsNumber;
    }
    public void setgoodsNumber(String goodsNumber) {
        this.goodsNumber = goodsNumber;
    }
    public String getgoodsBarNo() {
        return goodsBarNo;
    }
    public void setgoodsBarNo(String goodsBarNo) {
        this.goodsBarNo = goodsBarNo;
    }
    public String getgoodsName() {
        return goodsName;
    }
    public void setgoodsName(String goodsName) {
        this.goodsName = goodsName;
    }
    public String getgoodsForShort() {
        return goodsForShort;
    }
    public void setgoodsForShort(String goodsForShort) {
        this.goodsForShort = goodsForShort;
    }
    public String getgoodsPinYin() {
        return goodsPinYin;
    }
    public void setgoodsPinYin(String goodsPinYin) {
        this.goodsPinYin = goodsPinYin;
    }
    public Double getgoodsPurchasePrice() {
        return goodsPurchasePrice;
    }
    public void setgoodsPurchasePrice(Double goodsPurchasePrice) {
        this.goodsPurchasePrice = goodsPurchasePrice;
    }
    public Double getgoodsSellingPrice() {
        return goodsSellingPrice;
    }
    public void setgoodsSellingPrice(Double goodsSellingPrice) {
        this.goodsSellingPrice = goodsSellingPrice;
    }
    public Double getgoodsMemberPrice() {
        return goodsMemberPrice;
    }
    public void setgoodsMemberPrice(Double goodsMemberPrice) {
        this.goodsMemberPrice = goodsMemberPrice;
    }
    public String getgoodsPlaceOfOrigin() {
        return goodsPlaceOfOrigin;
    }
    public void setgoodsPlaceOfOrigin(String goodsPlaceOfOrigin) {
        this.goodsPlaceOfOrigin = goodsPlaceOfOrigin;
    }
    public String getgoodsSpecification() {
        return goodsSpecification;
    }
    public void setgoodsSpecification(String goodsSpecification) {
        this.goodsSpecification = goodsSpecification;
    }
    public String getgoodsGrade() {
        return goodsGrade;
    }
    public void setgoodsGrade(String goodsGrade) {
        this.goodsGrade = goodsGrade;
    }
    public Long getgoods_pUnit_Id() {
        return goods_pUnit_Id;
    }
    public void setgoods_pUnit_Id(Long goods_pUnit_Id) {
        this.goods_pUnit_Id = goods_pUnit_Id;
    }
    public Float getgoodsInputTax() {
        return goodsInputTax;
    }
    public void setgoodsInputTax(Float goodsInputTax) {
        this.goodsInputTax = goodsInputTax;
    }
    public Float getgoodsOutputTax() {
        return goodsOutputTax;
    }
    public void setgoodsOutputTax(Float goodsOutputTax) {
        this.goodsOutputTax = goodsOutputTax;
    }
    public Long getgoods_Brand_Id() {
        return goods_Brand_Id;
    }
    public void setgoods_Brand_Id(Long goods_Brand_Id) {
        this.goods_Brand_Id = goods_Brand_Id;
    }
    public Long getgoods_GosCte_Id() {
        return goods_GosCte_Id;
    }
    public void setgoods_GosCte_Id(Long goods_GosCte_Id) {
        this.goods_GosCte_Id = goods_GosCte_Id;
    }
    public Long getgoods_Provider_Id() {
        return goods_Provider_Id;
    }
    public void setgoods_Provider_Id(Long goods_Provider_Id) {
        this.goods_Provider_Id = goods_Provider_Id;
    }
    public Long getgoodsIsNew() {
        return goodsIsNew;
    }
    public void setgoodsIsNew(Long goodsIsNew) {
        this.goodsIsNew = goodsIsNew;
    }
    public Long getgoodsAllowAccumulatePoints() {
        return goodsAllowAccumulatePoints;
    }
    public void setgoodsAllowAccumulatePoints(Long goodsAllowAccumulatePoints) {
        this.goodsAllowAccumulatePoints = goodsAllowAccumulatePoints;
    }
    public Long getgoodsAllowDiscount() {
        return goodsAllowDiscount;
    }
    public void setgoodsAllowDiscount(Long goodsAllowDiscount) {
        this.goodsAllowDiscount = goodsAllowDiscount;
    }
    public Long getgoodsAllowMemberPrice() {
        return goodsAllowMemberPrice;
    }
    public void setgoodsAllowMemberPrice(Long goodsAllowMemberPrice) {
        this.goodsAllowMemberPrice = goodsAllowMemberPrice;
    }
    public Long getgoodsState() {
        return goodsState;
    }
    public void setgoodsState(Long goodsState) {
        this.goodsState = goodsState;
    }
    public String getgoodsMemo() {
        return goodsMemo;
    }
    public void setgoodsMemo(String goodsMemo) {
        this.goodsMemo = goodsMemo;
    }
    public String getbrandName() {
        return brandName;
    }
    public void setbrandName(String brandName) {
        this.brandName = brandName;
    }
    public String getgoodsCteNumber() {
        return goodsCteNumber;
    }
    public void setgoodsCteNumber(String goodsCteNumber) {
        this.goodsCteNumber = goodsCteNumber;
    }
    public String getgoodsCteName() {
        return goodsCteName;
    }
    public void setgoodsCteName(String goodsCteName) {
        this.goodsCteName = goodsCteName;
    }
    public String getproviderNumber() {
        return providerNumber;
    }
    public void setproviderNumber(String providerNumber) {
        this.providerNumber = providerNumber;
    }
    public String getproviderName() {
        return providerName;
    }
    public void setproviderName(String providerName) {
        this.providerName = providerName;
    }

}
