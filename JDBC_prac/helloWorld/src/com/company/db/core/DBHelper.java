package com.company.db.core;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBHelper {
    static Properties info = new Properties();

    static {
        //获得属性文件输入溜
        InputStream in = DBHelper.class.getClassLoader().getResourceAsStream("config.properties");
        try {
            //从文件读取到变量info
            info.load(in);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

//    private static String url = "jdbc:mysql://localhost:3306/mydb";
//    private static String user = "root";
//    private static String password = "990518Chz";

    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        System.out.println("DBhelper执行tag");
        Class.forName(info.getProperty("driver"));
        Connection connection = DriverManager.getConnection(info.getProperty("url"),
                    info.getProperty("user"),
                    info.getProperty("password"
                ));
        return connection;
    }
}
