package dao;

import entity.Car;
import util.DBUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CarInMemoryDAO implements CarDAO {
    @Override
    public List<Car> listAll() {
        String sql="select * from car";
        ResultSet rs = DBUtil.executeQuery(sql);
        List<Car> list=new ArrayList<Car>();
        Car model=null;
        try {
            while(rs.next()){
                model=new Car(
                        rs.getInt("Id"),
                        rs.getString("Name"),
                        rs.getFloat("Price"),
                        rs.getString("Model"),
                        rs.getString("Describe"));
                list.add(model);
            }
            DBUtil.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public Car getBookById(int id) {
        return null;
    }

    @Override
    public List<Car> getBooksByName(String name) {
        return null;
    }

    @Override
    public int update(Car car) {
        String sql="update car set Name=?,Price=?,Model=?,`Describe`=? where Id=?";
        Object[] in={car.getName(),car.getPrice(),car.getModel(),car.getDescribe(),car.getId()};
        return DBUtil.executeUpdate(sql,in);
    }

    @Override
    public int delete(int id) {
        String sql="delete from car where Id=?";
        Object[] in={id};
        return DBUtil.executeUpdate(sql,in);
    }

    @Override
    public int add(Car car) {
        String sql="insert into `car` values(?,?,?,?,?)";
        Object[] in={car.getId(),car.getName(),car.getPrice(),car.getModel(),car.getDescribe()};
        return DBUtil.executeUpdate(sql, in);
    }
}
