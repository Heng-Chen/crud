package com.ch.crud.test;

import com.github.pagehelper.PageInfo;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;

import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@WebAppConfiguration
//@ContextConfiguration(locations = {"classpath:applicationContext.xml", "file:E:\\IDEA project\\crud\\src\\main\\resources\\applicationContext-mvc.xml"})
public class MVCTest {

//    @Autowired
//    WebApplicationContext context;
////    虚拟请求,获取结果
//    MockMvc mockMvc;
////    传入mvc的ioc
//
//
//  @Before
//    public void initMokcMvc(){
//      mockMvc = MockMvcBuilders.webAppContextSetup(context).build();
//
//    }
//
//    @Test
//    public void testpage() throws Exception {
//        MvcResult mvcResult = mockMvc.perform
//                (MockMvcRequestBuilders.get("/emps").param("id", "1")).andReturn();
//        MockHttpServletRequest request = mvcResult.getRequest();
//        PageInfo pageInfo =(PageInfo) request.getAttribute("pageInfo");
//
//
////        System.out.println(pageInfo.getPageNum());
//
//    }
}

