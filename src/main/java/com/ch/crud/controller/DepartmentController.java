package com.ch.crud.controller;


import com.ch.crud.bean.Department;
import com.ch.crud.bean.Msg;
import com.ch.crud.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@Controller
public class DepartmentController {

    @Autowired
    private DepartmentService departmentService;
    @RequestMapping("/depts")
    @ResponseBody//服务器将数据转为json格式发送给客服端,不在依赖于model传数据,需要jackson包将对象转化为字符串
    public Msg getalldepts(){

        List<Department> depts = departmentService.getalldept();
        Msg msg = new Msg();

        return msg.success().add("depts",depts);
    }
}
