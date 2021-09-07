import java.io.Serializable;

public class Person implements Serializable {

    //TODO: POJO .. Plain Old Java Object


    private String firstName;

    private String lastName;

    //TODO:Constructor
    public Person(){

    }

    //TODO:Extra Default Constructor
    public Person(String firstName, String lastName) {
        this.firstName = firstName;
        this.lastName = lastName;
    }

    //TODO:Getters And Setters
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
}
