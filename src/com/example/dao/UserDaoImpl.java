package com.example.dao;

import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import com.example.beans.User;
import com.example.jdbc.UserRowMapper;

public class UserDaoImpl implements UserDao {

 @Autowired
 DataSource dataSource;

 public void insertData(User user) {

  String sql = "INSERT INTO user (firstName,lastName,mobNumber,userName) VALUES (?,?,?,?)";

  JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

  jdbcTemplate.update(
    sql,
    new Object[] {user.getFirstName(), user.getLastName(),
      user.getMobNumber(), user.getUserName() });

 }

 public List<User> getUserList() {
  List userList = new ArrayList();

  String sql = "select * from user";

  JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
  userList = jdbcTemplate.query(sql, new UserRowMapper());
  return userList;
 }

 @Override
 public void deleteData(String id) {
  String sql = "delete from user where userid=" + id;
  JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
  jdbcTemplate.update(sql);

 }

 @Override
 public void updateData(User user) {

  String sql = "UPDATE user set firstName = ?,lastName = ?, mobNumber = ?, userName = ? where userid = ?";
  JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

  jdbcTemplate.update(
    sql,
    new Object[] { user.getFirstName(), user.getLastName(),
      user.getMobNumber(), user.getUserName(), user.getUserId() });

 }

 @Override
 public User getUser(String id) {
  List<User> userList = new ArrayList<User>();
  String sql = "select * from user where userid= " + id;
  JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
  userList = jdbcTemplate.query(sql, new UserRowMapper());
  return userList.get(0);
 }

}

