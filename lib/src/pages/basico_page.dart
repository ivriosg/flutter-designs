import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearDescripcion(),
          _crearDescripcion(),
          _crearDescripcion(),
          _crearDescripcion(),
          _crearDescripcion(),
        ],
      ),
    ));
  }

  _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'http://t3.gstatic.com/images?q=tbn:ANd9GcSXeqeHCo98GuGjBNkVvdCIWT2-WpklIjaV6YH8vyKFu4LpL9Qd76LwaUxqBY8thO_xP3h59COOFRz1g4cZVX0'),
        fit: BoxFit.cover,
      ),
    );
  }

  _crearTitulo() {
    // Agregamos SafeArea para evitar el notch de los móviles
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Row(
          children: [
            // Expanded hace que tome todo el tamaño de la pantalla
            Expanded(
              child: Column(
                //Alinear elementos a la izquierda
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Lanscape', style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text('Imagen de un lago con arboles.', style: estiloSubtitulo)
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 25.0),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  _crearAcciones() {
    return Row(
      // Ajustando los elementos de manera horizontal
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'Route'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  _accion(IconData icon, String texto) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  _crearDescripcion() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 0, bottom: 0),
        child: Text(
          'Laborum nostrud deserunt pariatur est officia officia aliqua irure nulla veniam officia minim sit. Dolor consequat mollit irure sit amet labore nostrud dolor cupidatat sit exercitation reprehenderit. Irure nostrud qui velit id sunt quis magna duis ut aute dolore ex non nisi.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
