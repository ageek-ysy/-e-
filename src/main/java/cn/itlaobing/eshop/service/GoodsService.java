package cn.itlaobing.eshop.service;

import cn.itlaobing.eshop.entity.Itlb_goods;
import cn.itlaobing.eshop.entity.dto.GoodsDto;
import cn.itlaobing.eshop.exception.MyBizException;

import java.util.List;

public interface GoodsService {
    public List<GoodsDto> queryHot()throws MyBizException;
    public List<GoodsDto> queryNew()throws MyBizException;
    public Itlb_goods detailGoods(Long id) throws MyBizException;
}
