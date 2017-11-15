/**
 * FileName: SlideShowDao
 * Author:   Ageek-姚树友
 * Date:     17-11-14 下午2:20
 * Description:
 */

package cn.itlaobing.eshop.dao;

import cn.itlaobing.eshop.entity.ItlbFocuss;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

/**
 *
 */
public class SlideShowDao extends BaseDao {

    /**
     * 查询所有的轮播图片
     * @return
     * @throws SQLException
     */
    public List<ItlbFocuss> queryAllPhoto() throws SQLException {
        String sql = "SELECT * FROM `itlb_focuss`";
        QueryRunner queryRunner = new QueryRunner(getDataSource());
        BeanListHandler<ItlbFocuss> beanListHandler = new BeanListHandler<ItlbFocuss>(ItlbFocuss.class);
        List<ItlbFocuss> list = queryRunner.query(sql,beanListHandler);
        return list;
    }
}
