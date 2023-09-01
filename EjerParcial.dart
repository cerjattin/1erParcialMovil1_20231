//Se desea realizar los siguientes criterios de aceptación de 1 requerimiento para el módulo de productos:
//a.Se debe tener un objeto de ventas donde se anexará cada producto que sea seleccionado
//b.Cada producto que estén 15 días a vencer se le otorgará un 15% de descuento
//c.Mostrar el total que se debe pagar
import 'dart:io';

class Producto{
  String _nombre="";
  int? Precio;
  var Fecha;
  set nombre(String nombre){
    if(nombre==""){
      throw("El nombre esta vacio");
    }
    _nombre=nombre;
  }
  String get nombre => _nombre;
}
void main(){
final Producto produc=Producto();
  stdout.write("Nombre del Producto: ");
  String? nombre = stdin.readLineSync();
  produc.nombre = nombre!;
  stdout.write("Precio del Articulo: ");
  int? precio = stdin.readLineSync() as int?;
  produc.Precio =precio!;
  print('Producto Ingresado ${produc.nombre}, El Precio del Articulo es: ${produc.Precio}');
}
