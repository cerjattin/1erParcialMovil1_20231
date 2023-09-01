//Se desea realizar los siguientes criterios de aceptación de 1 requerimiento para el módulo de productos:
//a.Se debe tener un objeto de ventas donde se anexará cada producto que sea seleccionado
//b.Cada producto que estén 15 días a vencer se le otorgará un 15% de descuento
//c.Mostrar el total que se debe pagar
import 'dart:io';

class Producto {
  String _nombre = "";
  String? Precio;
  var Fecha;
  set nombre(String nombre) {
    if (nombre == "") {
      throw ("El nombre esta vacio");
    }
    _nombre = nombre;
  }

  String get nombre => _nombre;
}

void main() {
  final Producto produc = Producto();

  List<Producto>;
  String rep = 'S';
  int i = 0;
  int? tot = 0;
  do {
    stdout.write("Nombre del Producto: ");
    String? nombre = stdin.readLineSync();
    produc.nombre = nombre!;
    stdout.write("Precio del Articulo: ");
    String? precio = stdin.readLineSync();
    produc.Precio = precio;
    stdout.write("Fecha de Vencimiento de producto: ");
    var fecha = stdin.readLineSync();
    var fvenc = fecha;
    fecha = fecha?.replaceAll('/', '-');
    produc.Fecha = fecha;
    final DateTime date = DateTime.parse(fecha!);
    final DateTime now = DateTime.now();
        if(date.compareTo(now)){
          tot=(tot!+(int.parse(precio!)*1.15)) as int?;
        }
        tot=(tot!+(int.parse(precio!)));
    print(
        'Producto Ingresado ${produc.nombre}, El Precio del Articulo es: ${produc.Precio} ; El producto vence el : ${produc.Fecha}');
    stdout.write("Desea continuar  ingresando Productos (S/N): ");
    String? rep = stdin.readLineSync();
    i++;
  } while (rep == 'S');
  print('Total de Productos Seleccionados: $tot');
}
