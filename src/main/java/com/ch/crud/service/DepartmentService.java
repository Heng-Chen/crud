package com.ch.crud.service;

import com.ch.crud.bean.Department;
import com.ch.crud.dao.DepartmentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentService {

    @Autowired
    private DepartmentMapper departmentMapper;

    public List<Department> getalldept(){
        List<Department> list = departmentMapper.selectByExample(null);
        return list;
    }
}
