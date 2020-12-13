package com.company;

import com.company.db.core.PreparedStatementCreator;
import com.company.db.core.RowCallbackHandler;
import com.company.db.core.jdbcTemplate;

import javax.management.relation.Role;
import java.sql.*;

public class useTemplate {

    private static jdbcTemplate jdbcTemplate = new jdbcTemplate();

    public static void main(String[] args) throws SQLException {
        read();
    }

    public static void read() throws SQLException {
        jdbcTemplate.query(new PreparedStatementCreator() {
            @Override
            public PreparedStatement createPreparedStatement(Connection conn) throws SQLException {
                PreparedStatement preparedStatement = conn.prepareStatement("select id, name from users where id > ? order by id");
                preparedStatement.setInt(1, 0);
                return preparedStatement;
            }
        }, new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet rs) throws SQLException {
                System.out.printf("id: %d, name %s\n",
                        rs.getInt("id"),
                        rs.getString("name"));
            }
        });
    }
}
