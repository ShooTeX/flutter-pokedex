import 'package:flutter/material.dart';
import 'package:pokedex/screens/home/home.graphql.dart';

class PokemonItem extends StatelessWidget {
  final QueryAllPokemons$pokemonV2Pokemonspecies pokemon;
  PokemonItem({super.key, required this.pokemon});

  final Map<String, Color> _colors = {
    "blue": const Color(0xFF3498DB),
    "green": const Color(0xFF2ECC71),
    "red": const Color(0xFFE74C3C),
    "purple": const Color(0xFF9B59B6),
    "yellow": const Color(0xFFF1C40F),
    "black": const Color(0xFF34495E),
    "pink": const Color(0xFFF472D0),
    "white": const Color(0xFFECF0F1),
    "gray": const Color(0xFFBDC3C7),
    "brown": const Color(0xFF825A2C),
  };

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: const BorderRadius.all(
        Radius.circular(25),
      ),
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 120,
        padding: const EdgeInsets.only(top: 15, left: 15),
        color: _colors[pokemon.color?.name],
        child: Stack(
          children: [
            Text(
              pokemon.name.toUpperCase(),
              style: Theme.of(context).textTheme.headline3?.merge(
                    TextStyle(
                      fontWeight: FontWeight.bold,
                      color: pokemon.color?.name == "white"
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
            ),
            Positioned(
              right: 0,
              bottom: -12,
              child: Text(
                "# ${pokemon.id.toString().padLeft(3, '0')}",
                style: Theme.of(context).textTheme.headline2?.merge(TextStyle(
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    color: Colors.white.withOpacity(0.3))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
