package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;

public class ProductDAO {

    private static final String SELECT_ALL_PRODUCTS = "select * from Productos;";

    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();

        try (Connection connection = DatabaseUtil.getConnection(); PreparedStatement statement = connection.prepareStatement(SELECT_ALL_PRODUCTS); ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                int idProducto = resultSet.getInt("idProducto");
                String producto = resultSet.getString("Producto");

                Product product = new Product(idProducto, producto);
                product.setIdProducto(idProducto);
                product.setProducto(producto);

                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }
}
