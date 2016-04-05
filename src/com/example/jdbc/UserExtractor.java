package com.example.jdbc;

import java.sql.ResultSet;  
import java.sql.SQLException;  
import org.springframework.dao.DataAccessException;  
import org.springframework.jdbc.core.ResultSetExtractor;  
import com.example.beans.User;  
  
public class UserExtractor implements ResultSetExtractor<User> {  
  
 public User extractData(ResultSet resultSet) throws SQLException,  
   DataAccessException {  
    
  User user = new User();  
    
  user.setUserId(resultSet.getInt(1)); 
  user.setUserName(resultSet.getString(2));
  
  user.setFirstName(resultSet.getString(3));  
  user.setLastName(resultSet.getString(4));  
  user.setMobNumber(resultSet.getString(5));  
    
    
  return user;  
 }  
  
}  