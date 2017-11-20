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

import javax.jws.soap.SOAPBinding;
import java.sql.SQLException;

public class UserDao extends BaseDao {

    /**
     * 验证手机号码是否存在
     * @param account
     * @return
     * @throws SQLException
     */
    public Users getUser(String account) throws SQLException {
        String sql = "select * from users where userAccount=?";
        QueryRunner queryRunner = new QueryRunner(getDataSource());
        BeanHandler<Users> beanHandler = new BeanHandler<Users>(Users.class);
        Users user = queryRunner.query(sql,beanHandler,account);
        return user;
    }

    /**
     * 登录
     * @param account
     * @param password
     * @return
     * @throws SQLException
     */
    public Users signin(String account,String password) throws SQLException {
        String sql = "select * from users where userAccount=? and userPassword=?";
        QueryRunner queryRunner = new QueryRunner(getDataSource());
        BeanHandler<Users> beanHandler = new BeanHandler<Users>(Users.class);
        Users user = queryRunner.query(sql,beanHandler,account,password);
        return user;
    }

    /**
     * 注册用户
     * @return
     */
    public int singup(String account,String password) throws SQLException {
        String sql= "INSERT INTO users VALUES(NUll,?,?,NOW(),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)";
        QueryRunner queryRunner = new QueryRunner(getDataSource());
        int i = queryRunner.execute(sql,account,password);
        return i;
    }

}
