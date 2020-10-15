import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(horizontal: 20),
      elevation: 10,
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Get.toNamed('/tabviewpages', arguments: 0);
        },
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 100,
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Philippe Nau Rosa',
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text('CPF: 000.000.000-00'),
                                Text('Cidade/UF: Blumenau/SC'),
                                Text('Nascimento: DD/MM/YYYY'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          '-O',
                          style: TextStyle(
                            color: Colors.blue[400],
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: 25,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Situação: Ativo'),
                    Text('Último acesso: DD/MM/YYYY'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
