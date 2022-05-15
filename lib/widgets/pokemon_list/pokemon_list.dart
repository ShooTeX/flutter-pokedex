import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokedex/widgets/pokemon_list/get_all_pokemons.graphql.dart';

class PokemonList extends HookWidget {
  const PokemonList({super.key});

  @override
  Widget build(BuildContext context) {
    final hook = useQueryAllPokemons();

    // INFO: dart doesn't support object destructuring yet :(
    // but hopefully soon :) https://github.com/dart-lang/language/issues/207
    final result = hook.result;

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
  }
}
