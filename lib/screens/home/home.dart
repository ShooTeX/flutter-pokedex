import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokedex/screens/home/home.graphql.dart';
import 'package:pokedex/utils/hooks/use_debounced_search.dart';
import 'package:pokedex/widgets/pokemon_list/pokemon_list.dart';

class Home extends HookWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final search = useDebouncedSearch(controller);

    final allPokemonsQuery = useQueryAllPokemons(OptionsQueryAllPokemons(
        variables: VariablesQueryAllPokemons(name: search)));

    /* INFO: 
    dart doesn't support object destructuring yet :(
    but hopefully soon :) https://github.com/dart-lang/language/issues/207 
    */
    final allPokemons = allPokemonsQuery.result;

    List<QueryAllPokemons$pokemonV2Pokemonspecies>? pokemons =
        allPokemons.parsedData?.pokemon_v2_pokemonspecies;

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                'Pokédex',
                style: Theme.of(context).textTheme.headlineMedium?.merge(
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red[600],
                      ),
                    ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  controller: controller,
                  style: const TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.black12,
                    prefixIcon: const Icon(Icons.search),
                    prefixIconConstraints:
                        const BoxConstraints(minWidth: 40, minHeight: 35),
                    hintText: "Search for a Pokèmon",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          const BorderSide(style: BorderStyle.none, width: 0),
                    ),
                  ),
                ),
              ),
              allPokemons.isLoading
                  ? const Text('loading...')
                  : PokemonList(data: pokemons ?? []),
            ],
          ),
        ),
      ),
    );
  }
}
