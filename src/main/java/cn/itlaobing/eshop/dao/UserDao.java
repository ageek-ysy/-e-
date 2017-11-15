/**
 * FileName: UserDao
 * Author:   Ageek-姚树友
 * Date:     17-11-15 下午7:45
 * Description:
 */

package cn.itlaobing.eshop.dao;

import cn.itlaobing.eshop.entity.Users;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class UserDao extends BaseDao {

    /**
     * 注册用户
     * @return
     */
    public int singup(String account,String password) throws SQLException {
        String sql= "INSERT INTO users VALUES(NUll,?,?,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)";
        QueryRunner queryRunner = new QueryRunner(getDataSource());
        BeanHandler<Users> beanHandler = new BeanHandler<Users>(Users.class);
        int i = queryRunner.execute(sql,account,password);
        return i;
    }

}
