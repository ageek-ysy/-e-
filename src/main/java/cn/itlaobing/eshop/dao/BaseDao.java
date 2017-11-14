/**
 * FileName: BaseDao
 * Author:   Ageek-姚树友
 * Date:     17-11-13 下午4:39
 * Description:
 */

package cn.itlaobing.eshop.dao;

import com.alibaba.druid.pool.DruidDataSource;

import javax.sql.DataSource;

public class BaseDao {
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/itlaobing_eshop";
    private static final String USER = "root";
    private static final String PWD = "root";
    private DataSource dataSource = null;

    /**
     * 数据池连接
     * @return
     */
    public DataSource getDataSource() {
        if (dataSource!=null){
            return dataSource;
        }
        DruidDataSource dds = new DruidDataSource();
        dds.setDriverClassName(DRIVER);
        dds.setUrl(URL);
        dds.setUsername(USER);
        dds.setPassword(PWD);
        this.dataSource = dds;
        return dataSource;
    }
}
