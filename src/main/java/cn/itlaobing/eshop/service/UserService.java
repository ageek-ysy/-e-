package cn.itlaobing.eshop.service;

import cn.itlaobing.eshop.entity.Users;
import cn.itlaobing.eshop.exception.MyBizException;

public interface UserService {
    public int signup(String account,String password)throws MyBizException;
    public Users getUser(String account)throws MyBizException;
    public Users signin(String account,String password)throws MyBizException;
}
