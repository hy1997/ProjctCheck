package com.jy.project.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.CollectionUtils;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.jy.project.mapper.ProjectCheckMapper;
import com.jy.project.mapper.ProjectInfoMapper;
import com.jy.project.po.ProjectInfoPO;
import com.jy.project.po.ProjectPO;
import com.jy.project.utils.JsonUtil;
import com.jy.project.utils.UrlUtils;
import com.jy.project.vo.ProjectInfoVO;
import javafx.beans.binding.StringBinding;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpURL;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.time.LocalDate;
import java.util.*;

@Service
public class ProjectCheckService {

    @Autowired
    ProjectCheckMapper projectCheckMapper;

    @Autowired
    ProjectInfoMapper projectInfoMapper;

    @Value("${environment.url}")
    private String environmentUrl;

    @Value("${environment.historicalAirQuality}")
    private String historicalAirQuality;

    @Value("${environment.getAll}")
    private String getAll;


    @Value("${realname.personGoInTodayList}")
    private String personGoInTodayList;

    @Value("${realname.todayTeamAttendance}")
    private String todayTeamAttendance;

    @Value("${realname.typeOfWorkStatistics}")
    private String typeOfWorkStatistics;

    @Value("${realname.ageDistribution}")
    private String ageDistribution;

    @Value("${realname.todayAttendance}")
    private String todayAttendance;


    public Integer add(ProjectPO po) {
        return projectCheckMapper.insert(po);
    }

    public String projectCheck(ProjectPO po) throws Exception {
        List<ProjectPO> projectPOS = projectCheckMapper.selectList(null);
        List<String> params = new ArrayList<>();
        for (ProjectPO projectPO : projectPOS) {
            if(StringUtils.isNoneBlank(projectPO.getProjectCode())){
                StringBuilder sb = new StringBuilder();
                ProjectInfoPO infoPo = new ProjectInfoPO();
                infoPo.setProjectId(projectPO.getId());
                infoPo.setCreatetime(new Date());
                if ("1".equals(projectPO.getEnvironmentSurveillance())) {
                    //环境接口调用
                    //扬尘，TPS，噪音
                    boolean environmentAllflg = true;
                    Map<String, Object> environmentAll = JsonUtil.jsonToMap(UrlUtils.sendPost(environmentUrl, String.format(historicalAirQuality, projectPO.getProjectCode())));
                    if (Integer.parseInt(environmentAll.get("code").toString()) != 200 && CollectionUtils.isEmpty((ArrayList) environmentAll.get("data"))) {
                        environmentAllflg = false;
                    }
                    //环境
                    Map<String, Object> environmentMap = JsonUtil.jsonToMap(UrlUtils.sendPost(environmentUrl, String.format(getAll, projectPO.getProjectCode(), LocalDate.now())));
                    if (Integer.parseInt(environmentMap.get("code").toString()) != 200 && CollectionUtils.isEmpty((LinkedHashMap) environmentMap.get("data"))) {
                        environmentAllflg = false;
                    }
                    if (environmentAllflg) {
                        //环境接口正常
                        sb.append("环境检测接口正常");
                        infoPo.setEnvironmentSurveillanceInfo("正常");
                    } else {
                        sb.append("环境检测接口异常");
                        infoPo.setEnvironmentSurveillanceInfo("异常");
                    }
                }else{
                    infoPo.setEnvironmentSurveillanceInfo("不用检测");
                }
                if ("1".equals(projectPO.getRealNameSurveillance())) {
                    boolean realanameflg = true;
                    Map<String, Object> stringObjectMap = JsonUtil.jsonToMap(UrlUtils.sendPost(environmentUrl, String.format(personGoInTodayList, LocalDate.now(), projectPO.getProjectCode())));
                    if (Integer.parseInt(stringObjectMap.get("code").toString()) != 200 && CollectionUtils.isEmpty((ArrayList) stringObjectMap.get("data"))) {
                        realanameflg = false;
                    }
                    Map<String, Object> stringObjectMap1 = JsonUtil.jsonToMap(UrlUtils.sendPost(environmentUrl, String.format(todayTeamAttendance, projectPO.getProjectCode())));
                    if (Integer.parseInt(stringObjectMap1.get("code").toString()) != 200 && CollectionUtils.isEmpty((LinkedHashMap) stringObjectMap1.get("data"))) {
                        realanameflg = false;
                    }
                    Map<String, Object> stringObjectMap2 = JsonUtil.jsonToMap(UrlUtils.sendPost(environmentUrl, String.format(typeOfWorkStatistics, projectPO.getProjectCode())));
                    if (Integer.parseInt(stringObjectMap2.get("code").toString()) != 200 && CollectionUtils.isEmpty((ArrayList) stringObjectMap2.get("data"))) {
                        realanameflg = false;
                    }
                    Map<String, Object> stringObjectMap3 = JsonUtil.jsonToMap(UrlUtils.sendPost(environmentUrl, String.format(ageDistribution, projectPO.getProjectCode())));
                    if (Integer.parseInt(stringObjectMap3.get("code").toString()) != 200 && CollectionUtils.isEmpty((LinkedHashMap) stringObjectMap3.get("data"))) {
                        realanameflg = false;
                    }
                    if (realanameflg) {
                        sb.append(","+"实名制接口正常");
                        infoPo.setRealNameSurveillanceInfo("正常");
                    } else {
                        sb.append(","+"实名制接口异常");
                        infoPo.setRealNameSurveillanceInfo("异常");
                    }
                    infoPo.setCause(sb.toString());
                }else{
                    infoPo.setRealNameSurveillanceInfo( "不用检测");
                }
                projectInfoMapper.insert(infoPo);
            }
        }
        return "1";
    }

    public List<ProjectPO> projectList(ProjectPO po){
        List<ProjectPO> projectPOS = projectCheckMapper.selectList(null);
        return projectPOS;
    }

    public List<ProjectInfoVO> projectInfoList(ProjectInfoPO po){
        return projectInfoMapper.list(po);

    }
}
