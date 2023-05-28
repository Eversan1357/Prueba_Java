package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Factura;

public class FacturaDAO {

    private Connection connection;

    public FacturaDAO() {
        try {
            connection = DatabaseUtil.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger(FacturaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insertFactura(Factura factura) {
        String sql = "INSERT INTO Facturas(NumeroFactura, Fecha, TipodePago, DocumentoCliente, NombreCliente, Subtotal, Descuento, IVA, TotalDescuento, TotalImpuesto, Total) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, factura.getNumeroFactura());
            statement.setDate(2, new java.sql.Date(factura.getFecha().getTime()));
            statement.setString(3, factura.getTipoDePago());
            statement.setString(4, factura.getDocumentoCliente());
            statement.setString(5, factura.getNombreCliente());
            statement.setBigDecimal(6, factura.getSubtotal());
            statement.setBigDecimal(7, factura.getDescuento());
            statement.setBigDecimal(8, factura.getIva());
            statement.setBigDecimal(9, factura.getTotalDescuento());
            statement.setBigDecimal(10, factura.getTotalImpuesto());
            statement.setBigDecimal(11, factura.getTotal());

            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(FacturaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
