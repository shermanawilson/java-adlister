import java.util.ArrayList;
import java.util.Arrays;

public class BeanTest {
    public static void main(String[] args) {

        ArrayList<Album> albums = new ArrayList<>();
        for(Album album : albums) {
            System.out.println(album);
        }




        Album album = new Album();
        Author author = new Author(1, "Shy", "Wilson"); // To use constructors
        Quote quote1 = new Quote(1,"Hello out there", author);
        Quote quote2 = new Quote(2,"Girl i love him", author);




        album.setArtist("Thriller");
        author.setFirstName("Michael");
        author.setLastName("Jackson");
        quote1.setContent("If you wanna make the world a better place, take a look at yourself, then make that change.");


        System.out.println(author);

        ArrayList<Quote> quotes = new ArrayList<>();
        quotes.add(quote1);
        quotes.add(quote2);

        for(Quote quote: quotes) {
            System.out.println(quote);
        }




    }
}
