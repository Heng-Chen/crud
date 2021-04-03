package com.ch.crud.service;

import com.ch.crud.bean.Employee;
import com.ch.crud.bean.EmployeeExample;
import com.ch.crud.bean.Msg;
import com.ch.crud.dao.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeMapper employeeMapper;

    public List<Employee> getall(){

        List<Employee> employees = employeeMapper.selectByExamplewithdept(null);
//        System.out.println(employees.get(2).getDepartment());
        return employees;
    }

    public Msg save(Employee employee) {
        employeeMapper.insertSelective(employee);
        return Msg.success();
    }
/**
* @Description:
* @Param:
* @return:  true:可用 false:不可用
* @Author:
* @Date:
*/
    public boolean used(String username) {
        EmployeeExample example = new EmployeeExample();
        EmployeeExample.Criteria criteria = example.createCriteria();
        criteria.andEmpNameEqualTo(username);
        long l = employeeMapper.countByExample(example);
        if (l==0){
            return true;
        }else {
            return false;
        }
    }

    public Employee getemp(Integer id) {
        Employee employee = employeeMapper.selectByPrimaryKey(id);
        return employee;
    }

    public void update(Employee employee) {

        employeeMapper.updateByPrimaryKeySelective(employee);
    }

    public void delete(Integer id) {
        employeeMapper.deleteByPrimaryKey(id);
    }

    public void deletebatch(ArrayList<Integer> list) {
        EmployeeExample example = new EmployeeExample();
        EmployeeExample.Criteria criteria = example.createCriteria();
        criteria.andEmpIdIn(list);
        employeeMapper.deleteByExample(example);
    }
}
