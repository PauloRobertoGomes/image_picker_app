import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Inicio"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Selecione a fonte da imagem",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: RaisedButton(
                      child: Text(
                        "Galeria",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () => controller.getImageFromGallery(),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: RaisedButton(
                      child: Text(
                        "Camera",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () => controller.getImageFromCamera(),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: RaisedButton(
                      child: Text(
                        "Limpar imagem",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () => controller.cleanImage(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                    color: Colors.black38,
                    width: 0.5,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: SizedBox(
                    height: 300,
                    width: 300,
                    child: Observer(
                      builder: (context) {
                        if (controller.image != null) {
                          return Image.file(controller.image);
                        } else {
                          return Container();
                        }
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
