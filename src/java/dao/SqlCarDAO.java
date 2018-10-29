/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Car;
import util.CreateConnection;

/**
 *
 * @author GRZEŚ
 */
public class SqlCarDAO implements CarDAO {

    private final static String CREATE = "INSERT INTO cars(vin,marka,model,rok,opis) VALUES(?,?,?,?,?);";
    private final static String READ = "SELECT vin,marka,model,rok,opis FROM cars WHERE vin=?;";
    private final static String UPDATE = "UPDATE cars SET vin=?,marka=?,model=?,rok=?,opis=? WHERE vin=?;";
    private final static String DELETE = "DELETE from cars where vin=?;";

    @Override
    public boolean create(Car car) {

        boolean result = false;
        try {

            PreparedStatement prepareStatement;
            try (Connection connection = CreateConnection.getConnection()) {
                prepareStatement = connection.prepareStatement(CREATE);
                prepareStatement.setString(1, car.getVin());
                prepareStatement.setString(2, car.getMarka());
                prepareStatement.setString(3, car.getModel());
                prepareStatement.setString(4, car.getRok());
                prepareStatement.setString(5, car.getOpis());
                int resultSet = prepareStatement.executeUpdate();
                if (resultSet > 0) {
                    result = true;
                }
            }
            prepareStatement.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;

    }

    @Override
    public Car read(String vin) {

        Car resultCar = null;
        try {
            Connection conn = CreateConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement(READ);
            ps.setString(1, vin);
            ResultSet resultSet = ps.executeQuery();

            if (resultSet.next()) {
                resultCar = new Car();
                resultCar.setVin(resultSet.getString("vin"));
                resultCar.setMarka(resultSet.getString("marka"));
                resultCar.setModel(resultSet.getString("model"));
                resultCar.setRok(resultSet.getString("rok"));
                resultCar.setOpis(resultSet.getString("opis"));

            }

            conn.close();

        } catch (SQLException e) {

        }

        return resultCar;
    }

    @Override
    public boolean update(Car car) {

        boolean result = false;

        try {
            Connection conn = CreateConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement(UPDATE);
            ps.setString(1, car.getVin());
            ps.setString(2, car.getMarka());
            ps.setString(3, car.getModel());
            ps.setString(4, car.getRok());
            ps.setString(5, car.getOpis());
            ps.setString(6, car.getVin());

            int resultSet = ps.executeUpdate();

            if (resultSet > 0) {
                result = true;
            }

            conn.close();
            ps.close();

        } catch (SQLException e) {

        }

        return result;

    }

    @Override
    public boolean delete(Car car) {

        boolean result = false;

        try {

            Connection conn = CreateConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement(DELETE);
            ps.setString(1, car.getVin());
            int resultSet = ps.executeUpdate();
            if (resultSet > 0) {
                result = true;
            }

            conn.close();
            ps.close();

        } catch (SQLException e) {

        }

        return result;
    }

}
