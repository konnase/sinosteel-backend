package com.sinosteel.web;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sinosteel.FrameworkApplication;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import com.sinosteel.web.ProjectController;
import com.sinosteel.domain.Project;

import java.util.logging.Logger;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = FrameworkApplication.class)
@AutoConfigureMockMvc
@WebAppConfiguration
public class ProjectControllerTest {


    private MockMvc mvc;
    @Autowired
    private WebApplicationContext context;

    @Before
    public void setupMockMvc() throws Exception {
        mvc = MockMvcBuilders.webAppContextSetup(context).build();
    }

    @Test
    public void projectList() throws Exception {
        mvc.perform(MockMvcRequestBuilders.get("services/queryAllProjects"))
                .andExpect(MockMvcResultMatchers.status().isOk());
//                .andExpect(MockMvcResultMatchers.content().string("abc"));
    }

    @Test
    public void addProject() throws Exception {

        System.out.println("add");
        //ObjectMapper 是一个可以重复使用的对象
        ObjectMapper mapper = new ObjectMapper();
        String jsonString = "{\"projectName\":\"中建1\", \"location\":北京}";
        //将JSON字符串值转换成 Girl对象里的属性值
        Project project = mapper.readValue(jsonString, Project.class);
        mvc.perform(MockMvcRequestBuilders.post("services/addProject")
                .contentType(MediaType.APPLICATION_JSON_UTF8)
                /* 使用writeValueAsString() 方法来获取对象的JSON字符串表示 */
                .content(mapper.writeValueAsString(project)))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andExpect(MockMvcResultMatchers.content().contentType(MediaType.APPLICATION_JSON_UTF8))
                .andExpect(MockMvcResultMatchers.jsonPath(
                        "$.projectName").value("中建1"))
                .andExpect(MockMvcResultMatchers.jsonPath(
                        "$.location").value("北京"));
    }
}