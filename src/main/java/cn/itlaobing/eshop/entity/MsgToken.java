/**
 * FileName: MsgToken
 * Author:   Ageek-姚树友
 * Date:     17-11-15 上午10:54
 * Description:
 */

package cn.itlaobing.eshop.entity;

import java.io.Serializable;

public class MsgToken implements Serializable {

    private String phone;//手机号
    private String msgCode;//手机验证码
    private Long createAt;//注册时间

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMsgCode() {
        return msgCode;
    }

    public void setMsgCode(String msgCode) {
        this.msgCode = msgCode;
    }

    public Long getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Long createAt) {
        this.createAt = createAt;
    }
}
