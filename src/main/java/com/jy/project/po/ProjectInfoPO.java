package com.jy.project.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 * 　* @className: ProjectInfo
 *
 * @description: 　* @author: lj
 * 　* @date: 2021/09/03 11:50
 */
@Data
@TableName(value = "PROJECTINFO")
public class ProjectInfoPO {

    @TableId(value = "id",type = IdType.AUTO)
    private String id;

    @TableField(value = "project_id")
    private Integer projectId;

    @TableField(value = "video_surveillance_info")
    private String videoSurveillanceInfo;

    @TableField(value = "real_name_surveillance_info")
    private String realNameSurveillanceInfo;

    @TableField(value = "environment_surveillance_info")
    private String environmentSurveillanceInfo;

    @TableField(value = "high_formwork_surveillance_info")
    private String highFormworkSurveillanceInfo;

    @TableField(value = "tbm_surveillance_info")
    private String tbmSurveillanceInfo;

    @TableField(value = "vehicle_management_info")
    private String vehicleManagementInfo;

    @TableField(value = "hydropower_monitoring_info")
    private String hydropowerMonitoringInfo;

    @TableField(value = "smoke_detection_info")
    private String smokeDetectionInfo;

    @TableField(value = "standard_curingroom_monitoring_info")
    private String standardCuringroomMonitoringInfo;

    @TableField(value = "integrator_leader")
    private String integratorLeader;

    @TableField(value = "remarks")
    private String remarks;

    @TableField(value = "problem_description")
    private String problemDescription;

    @TableField(value = "cause")
    private String cause;

    @TableField(value = "estimated_repairtime")
    private String estimatedRepairtime;

    @TableField(value = "createtime")
    private Date createtime;
    private String projectName;
    private String projectCode;

    private String start;

    private String end;

}
