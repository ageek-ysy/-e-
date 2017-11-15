/**
 * FileName: GoodsDao
 * Author:   Ageek-姚树友
 * Date:     17-11-14 上午9:01
 * Description:
 */

package cn.itlaobing.eshop.dao;

import cn.itlaobing.eshop.entity.Itlb_goods;
import cn.itlaobing.eshop.entity.dto.GoodsDto;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class GoodsDao extends BaseDao {


    /**
     * 查询商品明细
     * @return
     * @throws SQLException
     */
    public Itlb_goods detailGoods(Long id) throws SQLException {
        String sql = "SELECT * FROM `itlb_goods` where  id=?";
        QueryRunner queryRunner = new QueryRunner(getDataSource());
        BeanHandler<Itlb_goods> goodsBeanHandler = new BeanHandler<Itlb_goods>(Itlb_goods.class);
        Itlb_goods itlbGoods = queryRunner.query(sql,goodsBeanHandler,id);
        return  itlbGoods;
    }

    /**
     * 查询热销产品
     * @return
     * @throws SQLException
     */
    public List<GoodsDto> queryHot() throws SQLException {
        String sql = " SELECT g.`id`,g.`price`,g.`good_name`,p.`picUrl` FROM itlb_goods g LEFT JOIN " +
                "(SELECT good_id,SUM(buy_count)sales_count  " +
                "FROM itlb_order_details GROUP BY good_id)s " +
                "ON g.`id`=s.good_id " +
                "LEFT JOIN `itlb_goods_pic` p  " +
                "ON g.`id`=p.`goodsId` " +
                "WHERE g.`status_line`=1 " +
                "ORDER BY s.sales_count DESC limit 0,6";
        QueryRunner queryRunner = new QueryRunner(getDataSource());
        BeanListHandler<GoodsDto> beanListHandler = new BeanListHandler<GoodsDto>(GoodsDto.class);
        List<GoodsDto> list = queryRunner.query(sql,beanListHandler);
        return list;
    }

    /**
     * 查询最新上架的商品
     * @return
     * @throws SQLException
     */
    public List<GoodsDto> queryNew() throws SQLException {
        String sql = "SELECT g.`id`,g.`price`,g.`good_name`,p.`picUrl` FROM itlb_goods g LEFT JOIN " +
                "(SELECT good_id,SUM(buy_count)sales_count  " +
                "FROM itlb_order_details GROUP BY good_id)s " +
                "ON g.`id`=s.good_id " +
                "LEFT JOIN `itlb_goods_pic` p  " +
                "ON g.`id`=p.`goodsId` " +
                "WHERE g.`good_new`=b'1' " +
                "ORDER BY s.sales_count limit 0,6";
        QueryRunner queryRunner = new QueryRunner(getDataSource());
        BeanListHandler<GoodsDto> beanListHandler = new BeanListHandler<GoodsDto>(GoodsDto.class);
        List<GoodsDto> list = queryRunner.query(sql,beanListHandler);
        return list;
    }
}
