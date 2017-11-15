package cn.itlaobing.eshop.service;

import cn.itlaobing.eshop.exception.MyBizException;

public interface UserService {
    public int signup(String account,String password)throws MyBizException;
}
