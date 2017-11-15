/**
 * FileName: GoodsServiceImpl
 * Author:   Ageek-姚树友
 * Date:     17-11-14 上午9:45
 * Description:
 */

package cn.itlaobing.eshop.service.impl;

import cn.itlaobing.eshop.dao.GoodsDao;
import cn.itlaobing.eshop.entity.Itlb_goods;
import cn.itlaobing.eshop.entity.dto.GoodsDto;
import cn.itlaobing.eshop.exception.MyBizException;
import cn.itlaobing.eshop.service.GoodsService;

import java.sql.SQLException;
import java.util.List;

public class GoodsServiceImpl implements GoodsService {
    @Override
    public List<GoodsDto> queryHot() throws MyBizException {
        GoodsDao goodsDao = new GoodsDao();
        List<GoodsDto> list = null;
        try {
            list = goodsDao.queryHot();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<GoodsDto> queryNew() throws MyBizException {
        GoodsDao goodsDao = new GoodsDao();
        List<GoodsDto> list = null;
        try {
            list = goodsDao.queryNew();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new MyBizException(e.getMessage());
        }
        return list;
    }

    @Override
    public Itlb_goods detailGoods(Long id) throws MyBizException {
        GoodsDao goodsDao = new GoodsDao();
        Itlb_goods itlbGoods = null;
        try {
            itlbGoods = goodsDao.detailGoods(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return itlbGoods;
    }
}
