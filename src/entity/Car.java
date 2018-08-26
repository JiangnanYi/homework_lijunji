package entity;

public class Car {
    private int Id;
    private String Name;
    private float Price;
    private String Model;
    private String Describe;

    public Car() {}

    public Car(int id, String name, float price, String model, String describe) {
        Id = id;
        Name = name;
        Price = price;
        Model = model;
        Describe = describe;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public float getPrice() {
        return Price;
    }

    public void setPrice(float price) {
        Price = price;
    }

    public String getModel() {
        return Model;
    }

    public void setModel(String model) {
        Model = model;
    }

    public String getDescribe() {
        return Describe;
    }

    public void setDescribe(String describe) {
        Describe = describe;
    }
}
