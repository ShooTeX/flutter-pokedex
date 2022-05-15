import 'package:flutter/material.dart';
import 'package:pokedex/screens/home/home.graphql.dart';
import 'package:pokedex/widgets/pokemon_item/pokemon_item.dart';

class PokemonList extends StatelessWidget {
  final List<QueryAllPokemons$pokemonV2Pokemonspecies> data;
  const PokemonList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: data.isNotEmpty
          ? ListView.separated(
              clipBehavior: Clip.none,
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              itemCount: data.length,
              itemBuilder: (context, index) {
                final pokemon = data[index];

                return PokemonItem(pokemon: pokemon);
              })
          : SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/images/missingno.png'),
                    width: 50,
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "No pokemons found".toUpperCase(),
                      style: Theme.of(context).textTheme.titleLarge?.merge(
                            const TextStyle(color: Colors.grey),
                          ),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
