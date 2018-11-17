/*
 * Copyright 2016-2017 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.sinosteel.web;

import static org.mockito.BDDMockito.given;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.put;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.ArrayList;
import java.util.List;

import com.sinosteel.FrameworkApplication;
import com.sinosteel.domain.Project;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.web.context.WebApplicationContext;


/**
 * Test class for {@link StandardController}
 *
 * @author Vitaliy Fedoriv
 */
@SpringBootTest
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes=FrameworkApplication.class)
@WebAppConfiguration
public class ControllerTest {

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


//    @Autowired
//    private OwnerRestController ownerRestController;
//
//    @MockBean
//    private ClinicService clinicService;

    private MockMvc mockMvc;

    @Before
    public void initOwners(){
//        this.mockMvc = MockMvcBuilders.standaloneSetup(ownerRestController)
//                .setControllerAdvice(new ExceptionControllerAdvice())
//                .build();


    }

    @Test
    public void testGetOwnerSuccess() throws Exception {
//        given(this.clinicService.findOwnerById(1)).willReturn(owners.get(0));
//        this.mockMvc.perform(get("/api/owners/1")
//                .accept(MediaType.APPLICATION_JSON_VALUE))
//                .andExpect(status().isOk())
//                .andExpect(content().contentType("application/json;charset=UTF-8"))
//                .andExpect(jsonPath("$.id").value(1))
//                .andExpect(jsonPath("$.firstName").value("George"));
    }

}
