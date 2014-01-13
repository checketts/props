package com.ssoward.props.dao;

import com.ssoward.props.entity.EmployeeEntity;

import java.util.List;

public interface EmployeeDAO 
{
    public void addEmployee(EmployeeEntity employee);
    public List<EmployeeEntity> getAllEmployees();
    public void deleteEmployee(Integer employeeId);
}