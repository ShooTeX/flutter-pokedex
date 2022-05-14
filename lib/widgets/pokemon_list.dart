import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

String readPokemonsQuery = """
query test {
  pokemon_v2_pokemonspecies(where: {pokemon_v2_generation: {name: {_eq: "generation-iii"}}}, order_by: {id: asc}) {
    name
      id
  }
}
""";

class PokemonList extends StatelessWidget {
  const PokemonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(document: gql(readPokemonsQuery)),
        builder: (
          QueryResult result, {
          VoidCallback? refetch,
          FetchMore? fetchMore,
        }) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.isLoading) {
            return const Text('Loading...');
          }

          List? pokemons = result.data?['pokemon_v2_pokemonspecies'];

          if (pokemons == null) {
            return const Text('No pokemon :(');
          }

          return Expanded(
            child: ListView.builder(
                itemCount: pokemons.length,
                itemBuilder: (context, index) {
                  final pokemon = pokemons[index];

                  return Text(pokemon['name'] ?? '');
                }),
          );
        });
  }
}
