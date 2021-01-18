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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Philippe Nau Rosa',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          SizedBox(height: 5),
                          Text('CPF: 000.000.000-00'),
                          Text('Cidade/UF: Blumenau/SC'),
                          Text('Nascimento: DD/MM/YYYY'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FittedBox(
                          child: Text('-O',
                              style: Theme.of(context).textTheme.headline3),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                ),
                child: Get.width >= 340
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Situação: Ativo'),
                          Text('Último acesso: DD/MM/YYYY'),
                        ],
                      )
                    : Column(
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
