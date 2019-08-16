package com.zit.itmp.db1.entity;

import java.io.Serializable;
import java.math.BigDecimal;

public class SceneInfo implements Serializable {
    /**
     * id
     */
    private Long id;

    /**
     * 场景名称
     */
    private String name;

    /**
     * 场景标签名称
     */
    private String placeLabel;

    /**
     * 场景标签基础分值
     */
    private BigDecimal placeScore;

    /**
     * 动态标签名称
     */
    private String dynamicLabel;

    /**
     * 动态标签基础分值
     */
    private BigDecimal dynamicScore;

    /**
     * 人员标签名称
     */
    private String personLabel;

    /**
     * 人员标签基础分值
     */
    private BigDecimal personScore;

    /**
     * 人员标签权重
     */
    private BigDecimal personWeight;

    /**
     * 车辆标签名称
     */
    private String vehicleLabel;

    /**
     * 车辆标签基础分值
     */
    private BigDecimal vehicleScore;

    /**
     * 车辆标签权重
     */
    private BigDecimal vehicleWeight;

    /**
     * 总分
     */
    private BigDecimal total;

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPlaceLabel() {
        return placeLabel;
    }

    public void setPlaceLabel(String placeLabel) {
        this.placeLabel = placeLabel == null ? null : placeLabel.trim();
    }

    public BigDecimal getPlaceScore() {
        return placeScore;
    }

    public void setPlaceScore(BigDecimal placeScore) {
        this.placeScore = placeScore;
    }

    public String getDynamicLabel() {
        return dynamicLabel;
    }

    public void setDynamicLabel(String dynamicLabel) {
        this.dynamicLabel = dynamicLabel == null ? null : dynamicLabel.trim();
    }

    public BigDecimal getDynamicScore() {
        return dynamicScore;
    }

    public void setDynamicScore(BigDecimal dynamicScore) {
        this.dynamicScore = dynamicScore;
    }

    public String getPersonLabel() {
        return personLabel;
    }

    public void setPersonLabel(String personLabel) {
        this.personLabel = personLabel == null ? null : personLabel.trim();
    }

    public BigDecimal getPersonScore() {
        return personScore;
    }

    public void setPersonScore(BigDecimal personScore) {
        this.personScore = personScore;
    }

    public BigDecimal getPersonWeight() {
        return personWeight;
    }

    public void setPersonWeight(BigDecimal personWeight) {
        this.personWeight = personWeight;
    }

    public String getVehicleLabel() {
        return vehicleLabel;
    }

    public void setVehicleLabel(String vehicleLabel) {
        this.vehicleLabel = vehicleLabel == null ? null : vehicleLabel.trim();
    }

    public BigDecimal getVehicleScore() {
        return vehicleScore;
    }

    public void setVehicleScore(BigDecimal vehicleScore) {
        this.vehicleScore = vehicleScore;
    }

    public BigDecimal getVehicleWeight() {
        return vehicleWeight;
    }

    public void setVehicleWeight(BigDecimal vehicleWeight) {
        this.vehicleWeight = vehicleWeight;
    }

    public BigDecimal getTotal() {
        return total;
    }

    public void setTotal(BigDecimal total) {
        this.total = total;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", name=").append(name);
        sb.append(", placeLabel=").append(placeLabel);
        sb.append(", placeScore=").append(placeScore);
        sb.append(", dynamicLabel=").append(dynamicLabel);
        sb.append(", dynamicScore=").append(dynamicScore);
        sb.append(", personLabel=").append(personLabel);
        sb.append(", personScore=").append(personScore);
        sb.append(", personWeight=").append(personWeight);
        sb.append(", vehicleLabel=").append(vehicleLabel);
        sb.append(", vehicleScore=").append(vehicleScore);
        sb.append(", vehicleWeight=").append(vehicleWeight);
        sb.append(", total=").append(total);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}