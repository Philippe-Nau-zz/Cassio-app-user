import 'package:cassio_user_app/controllers/profile_controller.dart';
import 'package:cassio_user_app/widgets/card_profilePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xfff5f6fa),
      margin: EdgeInsets.fromLTRB(24, 0, 24, 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CardProfilePage(
              title: 'Informações Pessoais',
              listColumn: [
                Text('Nome:'),
                Text('Nome Mãe:'),
                Text('Nome Pai:'),
                Text('CPF:'),
                Text('Nascimento:'),
                Text('Sexo:'),
                Text('Tipo Sanguíneo:'),
              ],
            ),
            CardProfilePage(
              title: 'Endereço',
              listColumn: [
                Text('Endereço:'),
                Text('Cidade/UF:'),
                Text('Bairro:'),
                Text('Complemento:'),
              ],
            ),
            CardProfilePage(
              title: 'Contato',
              listColumn: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Telefone 1:'),
                      Text('Telefone 2:'),
                      Text('E-mail:')
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.blue,
                        width: 3,
                      ),
                    ),
                  ),
                  child: Text(
                    'Contato de emergência',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nome:'),
                      Text('Telefone 1:'),
                      Text('Telefone 2:'),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
