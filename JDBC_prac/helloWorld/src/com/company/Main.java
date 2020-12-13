package com.company;

import java.sql.*;

public class Main {

    static String url = "jdbc:mysql://localhost:3306/mydb";
    static String user = "root";
    static String password = "990518Chz";

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("加载驱动程序成功");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("加载驱动程序失败");
        }
    }

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        // write your code here
//        Class.forName("com.mysql.cj.jdbc.Driver");
//
//        Connection connection = DriverManager.getConnection(url, user, password);
//        System.out.println("数据库连接成功：" + connection);
//
//        String sql = "select id, name from users";
//        Statement statement = connection.createStatement();
//        ResultSet resultSet = statement.executeQuery(sql);
//        while (resultSet.next()) {
//            System.out.printf("id: %d, name: %s", resultSet.getInt("id"), resultSet.getString("name"));
//            System.out.println();
//        }
//
//        statement.close();
//        resultSet.close();
//        connection.close();

        // 无条件查询
        System.out.println(readMaxUserID());
        // 有条件插入
        create();
        // 有条件查询
        conditionSearch();



    }

    public static int readMaxUserID() {
        int maxID = 0;
        String sql = "select max(id) from users";
        try (Connection connection = DriverManager.getConnection(url, user, password);
             PreparedStatement preparedStatement = connection.prepareStatement(sql);
             ResultSet resultSet = preparedStatement.executeQuery()) {

            while (resultSet.next()) {
                maxID = resultSet.getInt(1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return maxID;
    }

    public static void conditionSearch() {
        String sql = "select name, id from users where id > ? order by id";
        try (Connection connection = DriverManager.getConnection(url, user, password);
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            //绑定参数
            preparedStatement.setInt(1, 0);
            ResultSet resultSet = preparedStatement.executeQuery();

            //遍历结果集
            while (resultSet.next()) {
                System.out.printf("id: %d, name: %s\n", resultSet.getInt("id"), resultSet.getString("name"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void create(){
        String sql = "insert into users values(?, ?)";
        try (Connection connection = DriverManager.getConnection(url, user, password);
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            int maxUserId = readMaxUserID();

            //绑定参数
            preparedStatement.setInt(1, ++maxUserId);
            preparedStatement.setString(2, "Alice");
            int count = preparedStatement.executeUpdate();

            System.out.println("成功插入：" + count);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
