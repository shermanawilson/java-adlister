import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {

    private Connection connection;

    public MySQLAdsDao() throws SQLException {
        DriverManager.registerDriver(new Driver());
        Config config = new Config();
        connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
        );
    }


    // Create Result Set And Add Hand Adds Here


    @Override
    public List<Ad> all() throws SQLException {

        List<Ad> adsList = new ArrayList<>();

        Statement stmt = connection.createStatement();
        String selectQuery = "SELECT * FROM ads";
        ResultSet rs = stmt.executeQuery(selectQuery);

        while (rs.next()) {
            adsList.add(new Ad(
                    rs.getLong("id"),
                    rs.getLong("user_id"),
                    rs.getString("title"),
                    rs.getString("description")
            ));

        }

        System.out.println(adsList);

        return adsList;
    }

    @Override
    public Long insert(Ad ad) {

        System.out.println(ad);

        String query = "INSERT INTO ads (user_id, title, description) VALUES (" + ad.getUserId() +   ",'" + ad.getTitle() + "','" + ad.getDescription() + "')";

        try {
            Statement stmt = connection.createStatement();
            stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) {
                System.out.println("Inserted a new record! New id: " + rs.getLong(1));
                return rs.getLong(1);
            }

        }catch(SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
