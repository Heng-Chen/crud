package com.ch.crud.test;


import com.ch.crud.bean.Employee;

import com.ch.crud.dao.DepartmentMapper;
import com.ch.crud.dao.EmployeeMapper;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class DaoTest {
//    @Autowired
//    private DepartmentMapper departmentMapper;
//
//    @Autowired
//    private EmployeeMapper employeeMapper;
//
//    @Autowired
//    private SqlSession sqlSession;
//    @Test
//    public void testcurd(){
//       System.out.println(departmentMapper);
//       departmentMapper.insertSelective(new Department(null,"aa"));
//       departmentMapper.insertSelective(new Department(null,"bb"));
//       System.out.println("ok");


//       System.out.println(employeeMapper);

//       employeeMapper.insertSelective(new Employee(null,"jerry","M","jerry@qq.com",1));

//       EmployeeMapper sqlSessionMapper = sqlSession.getMapper(EmployeeMapper.class);

//       for (int i = 0; i < 1000; i++) {
//           String s = UUID.randomUUID().toString().substring(0, 5);
//           sqlSessionMapper.insertSelective(new Employee(null, s,"m",s+"@qq.com",1));
//       }
//       System.out.println("okkkk");

//       Employee employee = new Employee();
//       employee.setEmpName("jerry");
//       ArrayList<Employee> list=new ArrayList();
//       list.add(employee);

//       employeeMapper.selectByExamplewithdept(new EmployeeExample(employee));
//        Employee employee = employeeMapper.selectByPrimaryKeywithdept(2);
//       // System.out.println(employee.getDepartment().getDeptName());
//    }
}
