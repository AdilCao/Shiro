package com.itheima.domain.system;

import java.io.Serializable;

/**
 * <Description>
 *
 * @author hzb@itcast.cn
 * @version 1.0
 * @taskId: <br>
 * @createDate 2019/08/20 15:46
 * @see com.itheima.domain.system
 */
public class Dept implements Serializable {
    private String id;//主键
    private String deptName; //部门名称  顺义事业部

    //private String parent_id;//上级部门的id
    //一对多 : list集合
    //一对一 : 对象
    private Dept parent;//父部门对象  北京事业部数据

    private String state;//数据的状态
    private String companyId;//企业id
    private String companyName;//企业名称


    @Override
    public String toString() {
        return "Dept{" +
                "id='" + id + '\'' +
                ", deptName='" + deptName + '\'' +
                ", parent=" + parent +
                ", state='" + state + '\'' +
                ", companyId='" + companyId + '\'' +
                ", companyName='" + companyName + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public Dept getParent() {
        return parent;
    }

    public void setParent(Dept parent) {
        this.parent = parent;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }
}
