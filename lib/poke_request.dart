import 'dart:ffi';

import 'package:dio/dio.dart';

final Dio dio = Dio();
const String url = 'https://pokeapi.co/api/v2/pokemon';

login(name) async {
  try {
    Response<dynamic> response = await dio.get("$url/$name");
    Pokemon pokemon = Pokemon(
        response.data['forms'][0]['name'],
        response.data['forms'][0]['name'],
        response.data['forms'][0]['name'],
        response.data['forms'][0]['name']);
    Status success = Status(true, 'deu certo', pokemon);
    return success;
  } on DioError catch (e) {
    Status erro = Status(false, 'Algo deu errado\n Erro: $e', null);
    return erro;
  }
}

class Pokemon {
  String name;
  String front;
  String back;
  String type;

  Pokemon(this.name, this.front, this.back, this.type);
}

class Status {
  bool success;
  String message;
  Pokemon? pokemon;

  Status(this.success, this.message, this.pokemon);
}
