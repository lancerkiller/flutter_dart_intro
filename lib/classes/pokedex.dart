import 'package:introduction_dart_langauge/classes/pokemon.dart';

class pokedex {
  int pokedexID;
  List<pokemon> pokemonList;

  pokedex(this.pokedexID, this.pokemonList);

  void displayAllPokemon(){
    for(int i=0;i<this.pokemonList.length;i++){
      print("Pokedex: ${this.pokemonList[i].name}");
    }
  }
}
