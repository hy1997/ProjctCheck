package com.jy.project.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jy.project.po.ProjectInfoPO;
import com.jy.project.vo.ProjectInfoVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ProjectInfoMapper extends BaseMapper<ProjectInfoPO> {

    List<ProjectInfoVO> list(ProjectInfoPO po);
}
