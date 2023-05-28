package model;

public class Product {

   private int idProducto;
   private String producto;

   public Product(int idProducto, String producto) {
      this.idProducto = idProducto;
      this.producto = producto;
   }

   public int getIdProducto() {
      return idProducto;
   }

   public void setIdProducto(int idProducto) {
      this.idProducto = idProducto;
   }

   public String getProducto() {
      return producto;
   }

   public void setProducto(String producto) {
      this.producto = producto;
   }
}