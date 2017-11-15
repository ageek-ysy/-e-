/**
 * FileName: SlideShowService
 * Author:   Ageek-姚树友
 * Date:     17-11-14 下午2:26
 * Description:
 */

package cn.itlaobing.eshop.service;

import cn.itlaobing.eshop.dao.SlideShowDao;
import cn.itlaobing.eshop.entity.ItlbFocuss;
import cn.itlaobing.eshop.exception.MyBizException;

import java.sql.SQLException;
import java.util.List;

public class SlideShowService {
    private SlideShowDao dao = new SlideShowDao();

    /**
     * 查询轮播图的图片
     * @return
     * @throws MyBizException
     */
    public List<ItlbFocuss> queryAllPhoto() throws MyBizException{
        List<ItlbFocuss> list = null;
        try {
            list = dao.queryAllPhoto();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new MyBizException(e.getMessage());
        }
        return list;
    }
}
