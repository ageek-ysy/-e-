/**
 * FileName: TableFiled
 * Author:   Ageek-姚树友
 * Date:     17-11-13 下午4:21
 * Description:
 */

package entity;

/**
 * 得到表中的字段名,数据类型和注释等
 */
public class TableFiled {
    private String filedName;
    private String dataType;
    private String comment;

    public String getFiledName() {
        return filedName;
    }

    public void setFiledName(String filedName) {
        this.filedName = filedName;
    }

    public String getDataType() {
        return dataType;
    }

    public void setDataType(String dataType) {
        this.dataType = dataType;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    /**
     * 根据数据库中额数据类型得到实体类中的数据类型
     * @return
     */
    public String getJavaType(){
        if (dataType.contains("int")){
            return "Long";
        }
        if (dataType.contains("float")){
            return "Float";
        }
        if (dataType.contains("double")){
            return "Double";
        }
        if (dataType.contains("varchar")){
            return "String";
        }
        if (dataType.contains("datetime")){
            return "Date";
        }
        return "";
    }

    public String getFiledNameUpcase() {
        if (filedName != null) {
            StringBuffer sb = new StringBuffer(filedName);
            Character character = sb.charAt(0);
            sb.replace(0, 1, character.toString().toUpperCase());
            return sb.toString();
        }
        return filedName;
    }
}
