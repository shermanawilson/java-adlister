import java.io.Serializable;

public class Car implements Serializable {

    private Person owner;

    private String make;

    private String model;

    private String year;


    public Car() {}

    public Car(Person owner, String make, String model, String year) {
        this.owner = owner;
        this.make = make;
        this.model = model;
        this.year = year;
    }

    public Person getOwner() {
        return owner;
    }

    public void setOwner(Person owner) {
        this.owner = owner;
    }

    public String getMake() {
        return make;
    }

    public void setMake(String make) {
        this.make = make;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }
}
