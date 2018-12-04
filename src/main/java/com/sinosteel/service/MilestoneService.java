package com.sinosteel.service;

import com.alibaba.fastjson.JSONObject;
import com.sinosteel.domain.Milestone;
import com.sinosteel.domain.Project;
import com.sinosteel.domain.User;
import com.sinosteel.framework.helpers.pagination.PageResult;
import com.sinosteel.framework.helpers.pagination.Pager;
import com.sinosteel.framework.utils.string.StringUtil;

import com.sinosteel.repository.MilestoneRepository;
import com.sinosteel.repository.ProjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.UUID;

@Service
public class MilestoneService extends BaseService<Milestone> {
    @Autowired
    private MilestoneRepository milestoneRepository;

    @Autowired
    private ProjectRepository projectRepository;

    public JSONObject queryMilestones(JSONObject params) {
        StringBuilder hqlBuilder = new StringBuilder("FROM Milestone milestone WHERE 1 = 1 ");
        HashMap<String, Object> paramsMap = new HashMap<String, Object>();

        String milestoneName = params.getString("milestoneName");
        if (!StringUtil.isEmpty(milestoneName)) {
            hqlBuilder.append("AND milestone.milestoneName LIKE :milestoneName ");
            paramsMap.put("milestoneName", "%" + milestoneName + "%");
        }

        String projectId = params.getString("projectId");
        if (!StringUtil.isEmpty(projectId)) {
            hqlBuilder.append("AND milestone.project.id = :projectId ");
            paramsMap.put("projectId", projectId);
        }

        hqlBuilder.append("ORDER BY milestone.milestoneTime ASC");

        Pager pager = JSONObject.toJavaObject(params.getJSONObject("pagination"), Pager.class);
        PageResult<Milestone> queryResult = milestoneRepository.executeHql(hqlBuilder.toString(), paramsMap, pager);

        return queryResult.toJSONObject();
    }

    public void addMilestone(JSONObject params, User user) {
        Milestone milestone = JSONObject.toJavaObject(params, Milestone.class);
        milestone.setId(UUID.randomUUID().toString());

        String projectId = params.getString("projectId");
        Project project = projectRepository.findById(projectId).get();
        milestone.setProject(project);

        this.saveEntity(milestone, user);
    }

    public void editMilestone(JSONObject params, User user) {
        Milestone milestone = JSONObject.toJavaObject(params, Milestone.class);

        String milestoneId = milestone.getId();
        Project project = milestoneRepository.findById(milestoneId).get().getProject();
        milestone.setProject(project);

        this.updateEntity(milestone, user);
    }
}
