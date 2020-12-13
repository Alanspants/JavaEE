package com.company.db.core;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class jdbcTemplate {
    /**
     * 查找查询操作
     * @param pscreator 创建语句对象
     * @param callbackHandler 结果集处理对象
     * @throws DataAccessException
     * @throws SQLException
     */
    public void query(PreparedStatementCreator pscreator,
                      RowCallbackHandler callbackHandler) throws DataAccessException, SQLException {

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {

            connection = DBHelper.getConnection();
            preparedStatement = pscreator.createPreparedStatement(connection);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                callbackHandler.processRow(resultSet);
            }

        } catch (SQLException | ClassNotFoundException throwables) {

            throw new DataAccessException("JDBC templates 中的SQLException", throwables);

        } finally {

            if (connection != null) {
                connection.close();
            }
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (resultSet != null) {
                resultSet.close();
            }

        }
    }

    /**
     * 数据修改操作
     * @param pscreator 创建语句对象
     * @throws DataAccessException
     * @throws SQLException
     */
    public void update(PreparedStatementCreator pscreator) throws DataAccessException, SQLException {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {

            connection = DBHelper.getConnection();
            preparedStatement = pscreator.createPreparedStatement(connection);

            preparedStatement.executeUpdate();

        } catch (SQLException | ClassNotFoundException throwables) {

            throw new DataAccessException("JDBC templates 中的SQLException", throwables);

        } finally {

            if (connection != null) {
                connection.close();
            }
            if (preparedStatement != null) {
                preparedStatement.close();
            }

        }
    }


}
