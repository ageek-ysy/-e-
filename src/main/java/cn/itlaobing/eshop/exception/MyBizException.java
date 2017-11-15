/**
 * FileName: MyBizException
 * Author:   Ageek-姚树友
 * Date:     17-11-14 上午9:09
 * Description:
 */

package cn.itlaobing.eshop.exception;

/**
 * 自定义异常
 */
public class MyBizException extends Exception {
    public MyBizException(){}
    public MyBizException(String msg){
        super(msg);
    }
}
