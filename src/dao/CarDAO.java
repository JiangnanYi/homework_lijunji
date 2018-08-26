package dao;

import entity.Car;

import java.util.List;

public interface CarDAO {
    List<Car> listAll();
    Car getBookById(int id);
    List<Car> getBooksByName(String name);
    int update(Car car);
    int delete(int id);
    int add(Car car);
}
