import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'home.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesQueryAllPokemons {
  VariablesQueryAllPokemons({this.name});

  @override
  factory VariablesQueryAllPokemons.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryAllPokemonsFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$VariablesQueryAllPokemonsToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryAllPokemons) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class QueryAllPokemons {
  QueryAllPokemons(
      {required this.pokemon_v2_pokemonspecies, required this.$__typename});

  @override
  factory QueryAllPokemons.fromJson(Map<String, dynamic> json) =>
      _$QueryAllPokemonsFromJson(json);

  final List<QueryAllPokemons$pokemonV2Pokemonspecies>
      pokemon_v2_pokemonspecies;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryAllPokemonsToJson(this);
  int get hashCode {
    final l$pokemon_v2_pokemonspecies = pokemon_v2_pokemonspecies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$pokemon_v2_pokemonspecies.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryAllPokemons) || runtimeType != other.runtimeType)
      return false;
    final l$pokemon_v2_pokemonspecies = pokemon_v2_pokemonspecies;
    final lOther$pokemon_v2_pokemonspecies = other.pokemon_v2_pokemonspecies;
    if (l$pokemon_v2_pokemonspecies.length !=
        lOther$pokemon_v2_pokemonspecies.length) return false;
    for (int i = 0; i < l$pokemon_v2_pokemonspecies.length; i++) {
      final l$pokemon_v2_pokemonspecies$entry = l$pokemon_v2_pokemonspecies[i];
      final lOther$pokemon_v2_pokemonspecies$entry =
          lOther$pokemon_v2_pokemonspecies[i];
      if (l$pokemon_v2_pokemonspecies$entry !=
          lOther$pokemon_v2_pokemonspecies$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryAllPokemons on QueryAllPokemons {
  QueryAllPokemons copyWith(
          {List<QueryAllPokemons$pokemonV2Pokemonspecies>?
              pokemon_v2_pokemonspecies,
          String? $__typename}) =>
      QueryAllPokemons(
          pokemon_v2_pokemonspecies: pokemon_v2_pokemonspecies == null
              ? this.pokemon_v2_pokemonspecies
              : pokemon_v2_pokemonspecies,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const QUERY_ALL_POKEMONS = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'AllPokemons'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'name')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'pokemon_v2_pokemonspecies'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'order_by'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'id'),
                        value: EnumValueNode(name: NameNode(value: 'asc')))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_regex'),
                              value:
                                  VariableNode(name: NameNode(value: 'name')))
                        ]))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'pokemon_v2_pokemoncolor'),
                  alias: NameNode(value: 'color'),
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
QueryAllPokemons _parserFnQueryAllPokemons(Map<String, dynamic> data) =>
    QueryAllPokemons.fromJson(data);

class OptionsQueryAllPokemons extends graphql.QueryOptions<QueryAllPokemons> {
  OptionsQueryAllPokemons(
      {String? operationName,
      VariablesQueryAllPokemons? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_ALL_POKEMONS,
            parserFn: _parserFnQueryAllPokemons);
}

class WatchOptionsQueryAllPokemons
    extends graphql.WatchQueryOptions<QueryAllPokemons> {
  WatchOptionsQueryAllPokemons(
      {String? operationName,
      VariablesQueryAllPokemons? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_ALL_POKEMONS,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryAllPokemons);
}

class FetchMoreOptionsQueryAllPokemons extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryAllPokemons(
      {required graphql.UpdateQuery updateQuery,
      VariablesQueryAllPokemons? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: QUERY_ALL_POKEMONS);
}

extension ClientExtensionQueryAllPokemons on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryAllPokemons>> queryAllPokemons(
          [OptionsQueryAllPokemons? options]) async =>
      await this.query(options ?? OptionsQueryAllPokemons());
  graphql.ObservableQuery<QueryAllPokemons> watchQueryAllPokemons(
          [WatchOptionsQueryAllPokemons? options]) =>
      this.watchQuery(options ?? WatchOptionsQueryAllPokemons());
  void writeQueryAllPokemons(
          {required QueryAllPokemons data,
          VariablesQueryAllPokemons? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: QUERY_ALL_POKEMONS),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  QueryAllPokemons? readQueryAllPokemons(
      {VariablesQueryAllPokemons? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: QUERY_ALL_POKEMONS),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : QueryAllPokemons.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<QueryAllPokemons> useQueryAllPokemons(
        [OptionsQueryAllPokemons? options]) =>
    graphql_flutter.useQuery(options ?? OptionsQueryAllPokemons());
graphql.ObservableQuery<QueryAllPokemons> useWatchQueryAllPokemons(
        [WatchOptionsQueryAllPokemons? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryAllPokemons());

class QueryAllPokemonsWidget extends graphql_flutter.Query<QueryAllPokemons> {
  QueryAllPokemonsWidget(
      {widgets.Key? key,
      OptionsQueryAllPokemons? options,
      required graphql_flutter.QueryBuilder<QueryAllPokemons> builder})
      : super(
            key: key,
            options: options ?? OptionsQueryAllPokemons(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class QueryAllPokemons$pokemonV2Pokemonspecies {
  QueryAllPokemons$pokemonV2Pokemonspecies(
      {required this.name,
      required this.id,
      this.color,
      required this.$__typename});

  @override
  factory QueryAllPokemons$pokemonV2Pokemonspecies.fromJson(
          Map<String, dynamic> json) =>
      _$QueryAllPokemons$pokemonV2PokemonspeciesFromJson(json);

  final String name;

  final int id;

  final QueryAllPokemons$pokemonV2Pokemonspecies$color? color;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryAllPokemons$pokemonV2PokemonspeciesToJson(this);
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$id, l$color, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryAllPokemons$pokemonV2Pokemonspecies) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryAllPokemons$pokemonV2Pokemonspecies
    on QueryAllPokemons$pokemonV2Pokemonspecies {
  QueryAllPokemons$pokemonV2Pokemonspecies copyWith(
          {String? name,
          int? id,
          QueryAllPokemons$pokemonV2Pokemonspecies$color? Function()? color,
          String? $__typename}) =>
      QueryAllPokemons$pokemonV2Pokemonspecies(
          name: name == null ? this.name : name,
          id: id == null ? this.id : id,
          color: color == null ? this.color : color(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryAllPokemons$pokemonV2Pokemonspecies$color {
  QueryAllPokemons$pokemonV2Pokemonspecies$color(
      {required this.name, required this.$__typename});

  @override
  factory QueryAllPokemons$pokemonV2Pokemonspecies$color.fromJson(
          Map<String, dynamic> json) =>
      _$QueryAllPokemons$pokemonV2Pokemonspecies$colorFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryAllPokemons$pokemonV2Pokemonspecies$colorToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryAllPokemons$pokemonV2Pokemonspecies$color) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryAllPokemons$pokemonV2Pokemonspecies$color
    on QueryAllPokemons$pokemonV2Pokemonspecies$color {
  QueryAllPokemons$pokemonV2Pokemonspecies$color copyWith(
          {String? name, String? $__typename}) =>
      QueryAllPokemons$pokemonV2Pokemonspecies$color(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
