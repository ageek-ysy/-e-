package cn.itlaobing.eshop.entity;

import java.io.Serializable;

public class Users implements Serializable {
  private Long userid;
  private String useraccount;
  private String userpassword;
  private java.sql.Timestamp userregdatetime;
  private java.sql.Timestamp userlastlogindatetime;
  private Long userlogincount;
  private String userempname;
  private Long user_usergroup_id;
  private Long user_storehouse_id;
  private Long userflag;
  private String userstate;
  private String usermemo;
  private Long user_ps_id;
  private String userspare_1;
  private String userspare_2;
  private String userspare_3;

  public Long getUserid() {
    return userid;
  }

  public void setUserid(Long userid) {
    this.userid = userid;
  }

  public String getUseraccount() {
    return useraccount;
  }

  public void setUseraccount(String useraccount) {
    this.useraccount = useraccount;
  }

  public String getUserpassword() {
    return userpassword;
  }

  public void setUserpassword(String userpassword) {
    this.userpassword = userpassword;
  }

  public java.sql.Timestamp getUserregdatetime() {
    return userregdatetime;
  }

  public void setUserregdatetime(java.sql.Timestamp userregdatetime) {
    this.userregdatetime = userregdatetime;
  }

  public java.sql.Timestamp getUserlastlogindatetime() {
    return userlastlogindatetime;
  }

  public void setUserlastlogindatetime(java.sql.Timestamp userlastlogindatetime) {
    this.userlastlogindatetime = userlastlogindatetime;
  }

  public Long getUserlogincount() {
    return userlogincount;
  }

  public void setUserlogincount(Long userlogincount) {
    this.userlogincount = userlogincount;
  }

  public String getUserempname() {
    return userempname;
  }

  public void setUserempname(String userempname) {
    this.userempname = userempname;
  }

  public Long getUser_usergroup_id() {
    return user_usergroup_id;
  }

  public void setUser_usergroup_id(Long user_usergroup_id) {
    this.user_usergroup_id = user_usergroup_id;
  }

  public Long getUser_storehouse_id() {
    return user_storehouse_id;
  }

  public void setUser_storehouse_id(Long user_storehouse_id) {
    this.user_storehouse_id = user_storehouse_id;
  }

  public Long getUserflag() {
    return userflag;
  }

  public void setUserflag(Long userflag) {
    this.userflag = userflag;
  }

  public String getUserstate() {
    return userstate;
  }

  public void setUserstate(String userstate) {
    this.userstate = userstate;
  }

  public String getUsermemo() {
    return usermemo;
  }

  public void setUsermemo(String usermemo) {
    this.usermemo = usermemo;
  }

  public Long getUser_ps_id() {
    return user_ps_id;
  }

  public void setUser_ps_id(Long user_ps_id) {
    this.user_ps_id = user_ps_id;
  }

  public String getUserspare_1() {
    return userspare_1;
  }

  public void setUserspare_1(String userspare_1) {
    this.userspare_1 = userspare_1;
  }

  public String getUserspare_2() {
    return userspare_2;
  }

  public void setUserspare_2(String userspare_2) {
    this.userspare_2 = userspare_2;
  }

  public String getUserspare_3() {
    return userspare_3;
  }

  public void setUserspare_3(String userspare_3) {
    this.userspare_3 = userspare_3;
  }
}
