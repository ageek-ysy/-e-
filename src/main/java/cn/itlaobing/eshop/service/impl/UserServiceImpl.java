/**
 * FileName: UserServiceImpl
 * Author:   Ageek-姚树友
 * Date:     17-11-15 下午8:05
 * Description:
 */

package cn.itlaobing.eshop.service.impl;

import cn.itlaobing.eshop.dao.UserDao;
import cn.itlaobing.eshop.entity.Users;
import cn.itlaobing.eshop.exception.MyBizException;
import cn.itlaobing.eshop.service.UserService;

import java.sql.SQLException;

public class UserServiceImpl implements UserService {
    @Override
    public int signup(String account, String password) throws MyBizException {
        UserDao dao = new UserDao();
        int value = 0;
        try {
            value = dao.singup(account,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return value;
    }

    /**
     * 验证手机号是否存在
     * @param account
     * @return
     * @throws MyBizException
     */
    @Override
    public Users getUser(String account) throws MyBizException {
        UserDao dao = new UserDao();
        Users user = null;
        try {
            user = dao.getUser(account);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    /**
     * 用户登录
     * @param account
     * @param password
     * @return
     * @throws MyBizException
     */
    @Override
    public Users signin(String account, String password) throws MyBizException {
        UserDao dao = new UserDao();
        Users user = null;
        try {
            user = dao.signin(account,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}
