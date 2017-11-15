/**
 * FileName: EntityGenerater
 * Author:   Ageek-姚树友
 * Date:     17-11-13 下午4:38
 * Description:
 */

package entity;

import cn.itlaobing.eshop.dao.BaseDao;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.log4j.Logger;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.Velocity;
import org.apache.velocity.app.VelocityEngine;
import org.junit.Test;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.*;
import java.sql.SQLException;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EntityGenerater extends BaseDao {
    private Logger logger = Logger.getLogger(EntityGenerater.class);

    @Test
    public void entityGenerater() throws SQLException, IOException {
        String tableName = "itlb_focuss";
        String ddl = getCreateTableDdl(tableName);
        //显示sql语句
      //  logger.info(ddl);
        List<TableFiled> fieldList = getTableFiledList(ddl);
        String entityClassName = tableNameToClassName(tableName);
        logger.info(entityClassName);//显示转化过来的实体类的类名
        //使用VelocityEngine生成模板类文件
        VelocityEngine velocityEngine = new VelocityEngine();
        Properties properties = new Properties();
        properties.setProperty("file.resource.loader.class",
                "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");
        properties.setProperty(Velocity.ENCODING_DEFAULT,"utf-8");
        properties.setProperty(Velocity.OUTPUT_ENCODING,"utf-8");
        velocityEngine.init(properties);
        Template template = velocityEngine.getTemplate("template/tpl_entity.vm");
        VelocityContext vc = new VelocityContext();
        vc.put("entityClassName",entityClassName);
        vc.put("fieldList",fieldList);
    logger.info(fieldList);

        String projectRootPath = getProjectRootDir();
        ///home/ysy/Documents/11_idea-workspaces/e_shop/src/main/java/cn/itlaobing/eshop/entity
        File entityPackageDir=new File(projectRootPath,"/src/main/java/cn/itlaobing/eshop/entity");

        File entityClassFile=new File(entityPackageDir,entityClassName+".java");

        FileWriter fileWriter=new FileWriter(entityClassFile);
        template.merge(vc, fileWriter);
        fileWriter.close();

    }

    private String getProjectRootDir() {
        URL url= this.getClass().getResource("/");
        return url.toString().replace("file:/","/").replace("target/test-classes","");
    }

    /**
     * 将得到的创建表的语句存到list集合中
     * @param ddl
     * @return
     */
    private List<TableFiled> getTableFiledList(String ddl) {
        List<TableFiled> filedList = new ArrayList<TableFiled>();
        logger.info(ddl);
        String  rex = "`(\\w+)` (.+?) .+COMMENT '(.+?)'";
        Pattern pattern = Pattern.compile(rex);
        Matcher matcher = pattern.matcher(ddl);
        while (matcher.find()){
            logger.info(matcher.group(1));
            logger.info(matcher.group(2));
            logger.info(matcher.group(3));

            TableFiled tableFiled = new TableFiled();
            tableFiled.setFiledName(matcher.group(1));
            tableFiled.setDataType(matcher.group(2));
            tableFiled.setComment(matcher.group(3));
            filedList.add(tableFiled);
        }
        return filedList;
    }

    /**
     * 将数据库中的表名转化为实体类的类名
     * 首字母变成大写
     * 去掉表名中的"_"
     * @param tableName
     * @return
     */
    private String tableNameToClassName(String tableName) {
        StringBuffer sb = new StringBuffer(tableName);
        //首字母变成大写
        Character firstLetter = sb.charAt(0);
        sb.replace(0,1,firstLetter.toString().toUpperCase());
        while(sb.indexOf("_")!=-1){
            int idx = sb.indexOf("_");
            Character followLetter = sb.charAt(idx+1);
            sb.replace(idx,idx+2,followLetter.toString().toUpperCase());
        }
        return sb.toString();
    }

    /**
     * 得到创建表的sql语句
     * @param tableName
     * @return
     * @throws SQLException
     */
    private String getCreateTableDdl(String tableName) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(this.getDataSource());
        String sql = "show create table " + tableName;
        MapHandler mapHandler = new MapHandler();
        Map<String,Object> map = queryRunner.query(sql,mapHandler);
        if (map==null || map.size()==0){
            throw  new RuntimeException("数据库中的表"+tableName+"不存在");
        }
        return map.get("Create table").toString();
    }
}
