package com.ch.crud.controller;


import com.ch.crud.bean.Employee;
import com.ch.crud.bean.Msg;
import com.ch.crud.service.EmployeeService;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


import org.junit.runners.Parameterized;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.SessionScope;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

//    @RequestMapping("/emps")
//    public String getall(@RequestParam(value ="id",defaultValue = "1")Integer id,Model model){
//
//        PageHelper.startPage(id,10);
//        List<Employee> employees = employeeService.getall();
//
//       //System.out.println(employees.get(2).getDepartment());
//
//        PageInfo pageInfo=new PageInfo(employees,5);
//
//        model.addAttribute("pageInfo",pageInfo);
////        System.out.println(employees);
//
//
//        return "list";
//    }

    @RequestMapping("/emps")
    @ResponseBody//服务器将数据转为json格式发送给客服端,不在依赖于model传数据,需要jackson包将对象转化为字符串
    public Msg getall(@RequestParam(value ="id",defaultValue = "1")Integer id,@RequestParam(value="pagesize",defaultValue = "10") Integer size){

        PageHelper.startPage(id,size);
        List<Employee> employees = employeeService.getall();

        PageInfo pageInfo=new PageInfo(employees,5);
        Msg msg = new Msg();

        return msg.success().add("pageInfo",pageInfo);

    }

    @RequestMapping(value = "/emp",method = RequestMethod.POST)
    @ResponseBody
    public Msg saveEmp(@Valid Employee employee, BindingResult result){
        if (result.hasErrors()){
            HashMap<Object, Object> map = new HashMap<>();
            List<FieldError> fieldErrors = result.getFieldErrors();
            for (FieldError fieldError:fieldErrors){
                map.put(fieldError.getField(),fieldError.getDefaultMessage());
            }

            return Msg.desuccess().add("errors",map);
        }else{
            employeeService.save(employee);
            return Msg.success();
        }

    }

    @RequestMapping(value ="/checkuser")
    @ResponseBody
    public Msg getempname(@RequestParam("username") String username){
        String check="^[a-zA-Z0-9_-]{6,16}$";

        if (username.matches(check)){
            boolean used = employeeService.used(username);
            if (used){
                return Msg.success();
            }else{
                return Msg.desuccess().add("va","name is unvaild");
            }
        }else{
            return Msg.desuccess().add("va","6-16");
        }

    }
    @RequestMapping(value = "/emp/{id}",method=RequestMethod.GET)
    @ResponseBody//服务器将数据转为json格式发送给客服端,不在依赖于model传数据,需要jackson包将对象转化为字符串
    public Msg getemp(@PathVariable(value ="id")Integer id){


        Employee employee = employeeService.getemp(id);

        return Msg.success().add("employee",employee);

    }

    @RequestMapping(value = "/emp/{empId}",method=RequestMethod.PUT)
    @ResponseBody//服务器将数据转为json格式发送给客服端,不在依赖于model传数据,需要jackson包将对象转化为字符串
    public Msg updateemp(Employee employee){


        employeeService.update(employee);

        return Msg.success();

    }

    @RequestMapping(value = "/emp/{ids}",method=RequestMethod.DELETE)
    @ResponseBody//服务器将数据转为json格式发送给客服端,不在依赖于model传数据,需要jackson包将对象转化为字符串
    public Msg deleteemp(@PathVariable("ids") String ids){

        if(ids.contains("-")){
            String[] split = ids.split("-");
            ArrayList<Integer> list = new ArrayList<>();
            for (String id : split) {
                list.add(Integer.parseInt(id));
            }
            employeeService.deletebatch(list);
            return Msg.success();
        }else{

            int id = Integer.parseInt(ids);
            employeeService.delete(id);
            return Msg.success();

        }

    }
//    @RequestMapping("/emps1")
//    @ResponseBody//服务器将数据转为json格式发送给客服端,不在依赖于model传数据,需要jackson包将对象转化为字符串
//    public Msg getall1(@RequestParam(value ="id",defaultValue = "1")Integer id){
//
//        PageHelper.startPage(id,5);
//        List<Employee> employees = employeeService.getall();
//
//        PageInfo pageInfo=new PageInfo(employees,5);
//        Msg msg = new Msg();
//
//        return msg.success().add("pageInfo",pageInfo);
//
//    }
    @RequestMapping(value = "/ses")
    public String sion(@RequestParam("pn") Integer id, HttpSession session){
    //System.out.println("session 重写了");
    session.setAttribute("pagesize",id);
       return "forward:/index.jsp";
    }
}
