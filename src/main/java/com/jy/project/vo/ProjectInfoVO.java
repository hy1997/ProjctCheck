package com.jy.project.vo;

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
public class ProjectInfoVO {

    private String id;

    private Integer projectId;

    private String projectName;

    private String projectCode;

    private String videoSurveillanceInfo;

    private String realNameSurveillanceInfo;

    private String environmentSurveillanceInfo;

    private String highFormworkSurveillanceInfo;

    private String tbmSurveillanceInfo;

    private String vehicleManagementInfo;

    private String hydropowerMonitoringInfo;

    private String smokeDetectionInfo;

    private String standardCuringroomMonitoringInfo;

    private String integratorLeader;

    private String remarks;

    private String problemDescription;

    private String cause;

    private String estimatedRepairtime;

    private Date createtime;
}
