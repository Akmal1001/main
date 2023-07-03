import 'dart:convert';

import 'package:aplication/view/model/pokemon_model.dart';
import 'package:dio/dio.dart';

class GetPokemonService {
  static Future<PokemonModel> getPokemon() async {
    try {
      Response response = await Dio().get(
          'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');
      return PokemonModel.fromJson(jsonDecode(response.data));
    } catch (e) {
      throw e;
    }
  }
}
