/**
 * FileName: TestGoods
 * Author:   Ageek-姚树友
 * Date:     17-11-14 上午10:29
 * Description:
 */

package test;

import cn.itlaobing.eshop.entity.dto.GoodsDto;
import cn.itlaobing.eshop.exception.MyBizException;
import cn.itlaobing.eshop.service.impl.GoodsServiceImpl;
import cn.itlaobing.eshop.service.GoodsService;
import org.apache.log4j.Logger;
import org.junit.Assert;
import org.junit.Test;

import java.util.List;

public class TestGoods {
    private GoodsService service = new GoodsServiceImpl();
    private Logger logger = Logger.getLogger(Logger.class);

    @Test
    public void test() throws MyBizException {
        List<GoodsDto> list = service.queryAll();
        Assert.assertNotNull(list);
        logger.info(list);
    }
}
