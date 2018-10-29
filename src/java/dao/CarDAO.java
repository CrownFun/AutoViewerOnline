/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Car;

/**
 *
 * @author GRZEŚ
 */
public interface CarDAO {
    public boolean create(Car car);
    public Car read(String model);
    public boolean update(Car car);
    public boolean delete(Car car);
    
}
