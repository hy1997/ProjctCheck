package com.jy.project.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jy.project.po.ProjectPO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProjectCheckMapper extends BaseMapper<ProjectPO> {
}
