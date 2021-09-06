package com.jy.project.po;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName(value = "project")
public class ProjectPO {

    @TableId(value = "id",type = IdType.AUTO)
    private Integer id;

    @TableField(value = "project_code")
    private String projectCode;

    @TableField(value = "project_name")
    private String projectName;

    @TableField(value = "video_surveillance")
    private String videoSurveillance;

    @TableField(value = "real_name_surveillance")
    private String realNameSurveillance;

    @TableField(value = "environment_surveillance")
    private String environmentSurveillance;

    @TableField(value = "high_formwork_surveillance")
    private String highFormworkSurveillance;

    @TableField(value = "tbm_surveillance")
    private String tbmSurveillance;

    @TableField(value = "vehicle_management")
    private String vehicleManagement;

    @TableField(value = "hydropower_monitoring")
    private String hydropowerMonitoring;
    @TableField(value = "smoke_detection")
    private String smokeDetection;
    @TableField(value = "standard_curingroom_monitoring")
    private String StandardCuringroomMonitoring;
    @TableField(value = "affiliated_company")
    private String affiliatedCompany;
    @TableField(value = "integrator")
    private String integrator;
    @TableField(value = "contract_status")
    private String contractStatus;
    @TableField(value = "payment_status")
    private String paymentStatus;
    @TableField(value = "installation")
    private String installation;
    @TableField(value = "installation_time")
    private String installationTime;
    @TableField(value = "problem_description")
    private String problemDescription;
}
