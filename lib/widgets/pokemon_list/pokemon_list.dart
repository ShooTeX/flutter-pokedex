import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pokedex/widgets/pokemon_list/get_all_pokemons.graphql.dart';

class PokemonList extends StatelessWidget {
  const PokemonList({super.key});

  @override
  Widget build(BuildContext context) {
    return QueryAllPokemonsWidget(builder: (
      result, {
      VoidCallback? refetch,
      FetchMore? fetchMore,
    }) {
      if (result.hasException) {
        return Text(result.exception.toString());
      }

      if (result.isLoading) {
        return const Text('Loading...');
      }

      List<QueryAllPokemons$pokemonV2Pokemonspecies>? pokemons =
          result.parsedData?.pokemon_v2_pokemonspecies;

      if (pokemons == null) {
        return const Text('No pokemon :(');
      }

      return Expanded(
        child: ListView.builder(
            itemCount: pokemons.length,
            itemBuilder: (context, index) {
              final pokemon = pokemons[index];

              return Text(pokemon.name);
            }),
      );
    });
  }
}
