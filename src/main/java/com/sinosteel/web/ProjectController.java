package com.sinosteel.web;

import com.sinosteel.domain.Project;
import com.sinosteel.framework.core.web.Request;
import com.sinosteel.framework.core.web.Response;
import com.sinosteel.framework.core.web.ResponseType;
import com.sinosteel.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProjectController extends BaseController {
    @Autowired
    private ProjectService projectService;

    @RequestMapping(value = "/queryProjects")
    public Response queryProjects(Request request) {
        Response response = new Response();

        try {
            response.status = ResponseType.SUCCESS;
            response.data = projectService.queryProjects(request.getParams());
            response.message = "";
        } catch (Exception e) {
            e.printStackTrace();

            response.status = ResponseType.FAILURE;
            response.message = e.getMessage();
        }

        return response;
    }

    @RequestMapping(value = "/queryAllProjects")
    public Response queryAllProjects(Request request) {
        Response response = new Response();

        try {
            response.status = ResponseType.SUCCESS;
            response.data = projectService.queryAllProjects();
            response.message = "";
        } catch (Exception e) {
            e.printStackTrace();

            response.status = ResponseType.FAILURE;
            response.message = e.getMessage();
        }

        return response;
    }

    @RequestMapping(value = "/addProject")
    public Response addProject(Request request) {
        Response response = new Response();

        try {
            projectService.saveEntity(request.getParams(), Project.class, request.getUser());

            response.status = ResponseType.SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();

            response.status = ResponseType.FAILURE;
            response.message = "SERVER_ERROR";
        }

        return response;
    }

    @RequestMapping(value = "/editProject")
    public Response editProject(Request request) {
        Response response = new Response();

        try {
            projectService.updateEntity(request.getParams(), Project.class, request.getUser());

            response.status = ResponseType.SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();

            response.status = ResponseType.FAILURE;
            response.message = "SERVER_ERROR";
        }

        return response;
    }

    @RequestMapping(value = "/deleteProject")
    public Response deleteProject(Request request) {
        Response response = new Response();

        try {
            projectService.deleteEntity(request.getParams().getString("id"));

            response.status = ResponseType.SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();

            response.status = ResponseType.FAILURE;
            response.message = "SERVER_ERROR";
        }

        return response;
    }
}
