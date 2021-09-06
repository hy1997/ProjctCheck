package com.jy.project.controlle;

import com.jy.project.po.ProjectInfoPO;
import com.jy.project.po.ProjectPO;
import com.jy.project.service.ProjectCheckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;

@Controller
@RequestMapping("/project")
public class ProjectCheckController {

    @Autowired
    ProjectCheckService projectCheckService;

    @RequestMapping("index")
    public String index() {
        return "add";
    }

    @RequestMapping("add")
    @ResponseBody
    public Integer add(ProjectPO po) {
        return projectCheckService.add(po);
    }

    @RequestMapping("checkProject")
    @ResponseBody
    public String checkProject(ProjectPO po) throws Exception {
        return projectCheckService.projectCheck(po);
    }

    @RequestMapping("projectList")
    public String projectList(ProjectPO po, Model model){
          model.addAttribute("projects",projectCheckService.projectList(po));
        return "projectList";
    }

    @RequestMapping("projectInfoList")
    public String projectInfoList(ProjectInfoPO po, Model model) {
        model.addAttribute("projectInfos",projectCheckService.projectInfoList(po));
        return "projectInfoList";
    }
}
