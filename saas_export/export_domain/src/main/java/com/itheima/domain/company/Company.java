package com.itheima.domain.company;

import java.io.Serializable;
import java.util.Date;

/**
 * 企业数据
 */
public class Company   implements Serializable {
    private String id;// ID
    private String name;// 公司名称
    private Date expirationDate;// 到期时间
    private String address;// 公司地址
    private String licenseId;// 营业执照-图片
    private String representative;// 法人代表
    private String phone;// 公司电话
    private String companySize;// 公司规模
    private String industry;// 所属行业
    private String remarks;// 备注
    private Integer state;// 状态
    private Double balance;// 当前余额
    private String city;//城市

    @Override
    public String toString() {
        return "Company{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", expirationDate=" + expirationDate +
                ", address='" + address + '\'' +
                ", licenseId='" + licenseId + '\'' +
                ", representative='" + representative + '\'' +
                ", phone='" + phone + '\'' +
                ", companySize='" + companySize + '\'' +
                ", industry='" + industry + '\'' +
                ", remarks='" + remarks + '\'' +
                ", state=" + state +
                ", balance=" + balance +
                ", city='" + city + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }



    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLicenseId() {
        return licenseId;
    }

    public void setLicenseId(String licenseId) {
        this.licenseId = licenseId;
    }

    public String getRepresentative() {
        return representative;
    }

    public void setRepresentative(String representative) {
        this.representative = representative;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCompanySize() {
        return companySize;
    }

    public void setCompanySize(String companySize) {
        this.companySize = companySize;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public Date getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(Date expirationDate) {
        this.expirationDate = expirationDate;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
