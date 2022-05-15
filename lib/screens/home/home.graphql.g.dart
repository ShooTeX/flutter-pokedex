// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesQueryAllPokemons _$VariablesQueryAllPokemonsFromJson(
        Map<String, dynamic> json) =>
    VariablesQueryAllPokemons(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$VariablesQueryAllPokemonsToJson(
        VariablesQueryAllPokemons instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

QueryAllPokemons _$QueryAllPokemonsFromJson(Map<String, dynamic> json) =>
    QueryAllPokemons(
      pokemon_v2_pokemonspecies:
          (json['pokemon_v2_pokemonspecies'] as List<dynamic>)
              .map((e) => QueryAllPokemons$pokemonV2Pokemonspecies.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryAllPokemonsToJson(QueryAllPokemons instance) =>
    <String, dynamic>{
      'pokemon_v2_pokemonspecies':
          instance.pokemon_v2_pokemonspecies.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

QueryAllPokemons$pokemonV2Pokemonspecies
    _$QueryAllPokemons$pokemonV2PokemonspeciesFromJson(
            Map<String, dynamic> json) =>
        QueryAllPokemons$pokemonV2Pokemonspecies(
          name: json['name'] as String,
          id: json['id'] as int,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryAllPokemons$pokemonV2PokemonspeciesToJson(
        QueryAllPokemons$pokemonV2Pokemonspecies instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      '__typename': instance.$__typename,
    };
