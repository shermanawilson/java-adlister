import java.io.Serializable;

public class Quote implements Serializable {

    private int id;
    private String content;
    private Author authorID;

    //TODO: Constructors
    public Quote() {}



    public Quote(int id, String content, Author author) {
        this.id = id;
        this.content = content;
        this.authorID = author;
    }

    //TODO:Getters And Setters


    @Override
    public String toString() {
        return "Quote{" +
                "id=" + id +
                ", content='" + content + '\'' +
                ", authorID=" + authorID +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Author getAuthorID() {
        return authorID;
    }

    public void setAuthorID(Author authorID) {
        this.authorID = authorID;
    }
}
