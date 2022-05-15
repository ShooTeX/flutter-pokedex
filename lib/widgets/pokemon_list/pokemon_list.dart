import 'package:flutter/material.dart';
import 'package:pokedex/screens/home/home.graphql.dart';

class PokemonList extends StatelessWidget {
  final List<QueryAllPokemons$pokemonV2Pokemonspecies> data;
  const PokemonList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final pokemon = data[index];

            return Text(pokemon.name);
          }),
    );
  }
}
