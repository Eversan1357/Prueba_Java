package controller;

import persistence.FacturaDAO;
import model.Factura;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class FacturaController {

    private FacturaDAO facturaDAO;

    public FacturaController() {
        facturaDAO = new FacturaDAO();
    }

    public void crearFactura() {
        Factura factura = new Factura();
        factura.setNumeroFactura("1004");

        // Configura el resto de los atributos de la factura
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date fecha;
        try {
            fecha = dateFormat.parse("2018-12-12");
            factura.setFecha(fecha);
        } catch (ParseException ex) {
            ex.printStackTrace();
        }

        factura.setTipoDePago("Contado");
        factura.setDocumentoCliente("80225888");
        factura.setNombreCliente("Luis García");
        factura.setSubtotal(new BigDecimal("400000.00"));
        factura.setDescuento(new BigDecimal("8.00"));
        factura.setIva(new BigDecimal("19.00"));
        factura.setTotalDescuento(new BigDecimal("32000.00"));
        factura.setTotalImpuesto(new BigDecimal("76000.00"));
        factura.setTotal(new BigDecimal("484000.00"));

        facturaDAO.insertFactura(factura);
    }
}
