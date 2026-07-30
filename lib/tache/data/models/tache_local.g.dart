// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tache_local.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTacheLocalCollection on Isar {
  IsarCollection<TacheLocal> get tacheLocals => this.collection();
}

const TacheLocalSchema = CollectionSchema(
  name: r'TacheLocal',
  id: 3222605171242484976,
  properties: {
    r'categorie': PropertySchema(
      id: 0,
      name: r'categorie',
      type: IsarType.string,
    ),
    r'dateCreation': PropertySchema(
      id: 1,
      name: r'dateCreation',
      type: IsarType.string,
    ),
    r'dateEcheance': PropertySchema(
      id: 2,
      name: r'dateEcheance',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 3,
      name: r'description',
      type: IsarType.string,
    ),
    r'estComplete': PropertySchema(
      id: 4,
      name: r'estComplete',
      type: IsarType.bool,
    ),
    r'tacheId': PropertySchema(
      id: 5,
      name: r'tacheId',
      type: IsarType.string,
    ),
    r'titre': PropertySchema(
      id: 6,
      name: r'titre',
      type: IsarType.string,
    )
  },
  estimateSize: _tacheLocalEstimateSize,
  serialize: _tacheLocalSerialize,
  deserialize: _tacheLocalDeserialize,
  deserializeProp: _tacheLocalDeserializeProp,
  idName: r'id',
  indexes: {
    r'tacheId': IndexSchema(
      id: -2178055104739530045,
      name: r'tacheId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'tacheId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _tacheLocalGetId,
  getLinks: _tacheLocalGetLinks,
  attach: _tacheLocalAttach,
  version: '3.1.0+1',
);

int _tacheLocalEstimateSize(
  TacheLocal object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.categorie;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dateCreation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dateEcheance;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.tacheId.length * 3;
  bytesCount += 3 + object.titre.length * 3;
  return bytesCount;
}

void _tacheLocalSerialize(
  TacheLocal object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.categorie);
  writer.writeString(offsets[1], object.dateCreation);
  writer.writeString(offsets[2], object.dateEcheance);
  writer.writeString(offsets[3], object.description);
  writer.writeBool(offsets[4], object.estComplete);
  writer.writeString(offsets[5], object.tacheId);
  writer.writeString(offsets[6], object.titre);
}

TacheLocal _tacheLocalDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TacheLocal();
  object.categorie = reader.readStringOrNull(offsets[0]);
  object.dateCreation = reader.readStringOrNull(offsets[1]);
  object.dateEcheance = reader.readStringOrNull(offsets[2]);
  object.description = reader.readStringOrNull(offsets[3]);
  object.estComplete = reader.readBool(offsets[4]);
  object.id = id;
  object.tacheId = reader.readString(offsets[5]);
  object.titre = reader.readString(offsets[6]);
  return object;
}

P _tacheLocalDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tacheLocalGetId(TacheLocal object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tacheLocalGetLinks(TacheLocal object) {
  return [];
}

void _tacheLocalAttach(IsarCollection<dynamic> col, Id id, TacheLocal object) {
  object.id = id;
}

extension TacheLocalByIndex on IsarCollection<TacheLocal> {
  Future<TacheLocal?> getByTacheId(String tacheId) {
    return getByIndex(r'tacheId', [tacheId]);
  }

  TacheLocal? getByTacheIdSync(String tacheId) {
    return getByIndexSync(r'tacheId', [tacheId]);
  }

  Future<bool> deleteByTacheId(String tacheId) {
    return deleteByIndex(r'tacheId', [tacheId]);
  }

  bool deleteByTacheIdSync(String tacheId) {
    return deleteByIndexSync(r'tacheId', [tacheId]);
  }

  Future<List<TacheLocal?>> getAllByTacheId(List<String> tacheIdValues) {
    final values = tacheIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'tacheId', values);
  }

  List<TacheLocal?> getAllByTacheIdSync(List<String> tacheIdValues) {
    final values = tacheIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'tacheId', values);
  }

  Future<int> deleteAllByTacheId(List<String> tacheIdValues) {
    final values = tacheIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'tacheId', values);
  }

  int deleteAllByTacheIdSync(List<String> tacheIdValues) {
    final values = tacheIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'tacheId', values);
  }

  Future<Id> putByTacheId(TacheLocal object) {
    return putByIndex(r'tacheId', object);
  }

  Id putByTacheIdSync(TacheLocal object, {bool saveLinks = true}) {
    return putByIndexSync(r'tacheId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByTacheId(List<TacheLocal> objects) {
    return putAllByIndex(r'tacheId', objects);
  }

  List<Id> putAllByTacheIdSync(List<TacheLocal> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'tacheId', objects, saveLinks: saveLinks);
  }
}

extension TacheLocalQueryWhereSort
    on QueryBuilder<TacheLocal, TacheLocal, QWhere> {
  QueryBuilder<TacheLocal, TacheLocal, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TacheLocalQueryWhere
    on QueryBuilder<TacheLocal, TacheLocal, QWhereClause> {
  QueryBuilder<TacheLocal, TacheLocal, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterWhereClause> tacheIdEqualTo(
      String tacheId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'tacheId',
        value: [tacheId],
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterWhereClause> tacheIdNotEqualTo(
      String tacheId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tacheId',
              lower: [],
              upper: [tacheId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tacheId',
              lower: [tacheId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tacheId',
              lower: [tacheId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tacheId',
              lower: [],
              upper: [tacheId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension TacheLocalQueryFilter
    on QueryBuilder<TacheLocal, TacheLocal, QFilterCondition> {
  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      categorieIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categorie',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      categorieIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categorie',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> categorieEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categorie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      categorieGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categorie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> categorieLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categorie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> categorieBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categorie',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      categorieStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categorie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> categorieEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categorie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> categorieContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categorie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> categorieMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categorie',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      categorieIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categorie',
        value: '',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      categorieIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categorie',
        value: '',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateCreationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateCreation',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateCreationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateCreation',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateCreationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCreation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateCreationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateCreation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateCreationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateCreation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateCreationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateCreation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateCreationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dateCreation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateCreationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dateCreation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateCreationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dateCreation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateCreationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dateCreation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateCreationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCreation',
        value: '',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateCreationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dateCreation',
        value: '',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateEcheanceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateEcheance',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateEcheanceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateEcheance',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateEcheanceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateEcheance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateEcheanceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateEcheance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateEcheanceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateEcheance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateEcheanceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateEcheance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateEcheanceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dateEcheance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateEcheanceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dateEcheance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateEcheanceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dateEcheance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateEcheanceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dateEcheance',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateEcheanceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateEcheance',
        value: '',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      dateEcheanceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dateEcheance',
        value: '',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      estCompleteEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estComplete',
        value: value,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> tacheIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tacheId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      tacheIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tacheId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> tacheIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tacheId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> tacheIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tacheId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> tacheIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tacheId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> tacheIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tacheId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> tacheIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tacheId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> tacheIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tacheId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> tacheIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tacheId',
        value: '',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      tacheIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tacheId',
        value: '',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> titreEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> titreGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'titre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> titreLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'titre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> titreBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'titre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> titreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'titre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> titreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'titre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> titreContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'titre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> titreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'titre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition> titreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titre',
        value: '',
      ));
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterFilterCondition>
      titreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'titre',
        value: '',
      ));
    });
  }
}

extension TacheLocalQueryObject
    on QueryBuilder<TacheLocal, TacheLocal, QFilterCondition> {}

extension TacheLocalQueryLinks
    on QueryBuilder<TacheLocal, TacheLocal, QFilterCondition> {}

extension TacheLocalQuerySortBy
    on QueryBuilder<TacheLocal, TacheLocal, QSortBy> {
  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> sortByCategorie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categorie', Sort.asc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> sortByCategorieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categorie', Sort.desc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> sortByDateCreation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreation', Sort.asc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> sortByDateCreationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreation', Sort.desc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> sortByDateEcheance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateEcheance', Sort.asc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> sortByDateEcheanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateEcheance', Sort.desc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> sortByEstComplete() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estComplete', Sort.asc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> sortByEstCompleteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estComplete', Sort.desc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> sortByTacheId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tacheId', Sort.asc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> sortByTacheIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tacheId', Sort.desc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> sortByTitre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titre', Sort.asc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> sortByTitreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titre', Sort.desc);
    });
  }
}

extension TacheLocalQuerySortThenBy
    on QueryBuilder<TacheLocal, TacheLocal, QSortThenBy> {
  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> thenByCategorie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categorie', Sort.asc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> thenByCategorieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categorie', Sort.desc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> thenByDateCreation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreation', Sort.asc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> thenByDateCreationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreation', Sort.desc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> thenByDateEcheance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateEcheance', Sort.asc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> thenByDateEcheanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateEcheance', Sort.desc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> thenByEstComplete() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estComplete', Sort.asc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> thenByEstCompleteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estComplete', Sort.desc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> thenByTacheId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tacheId', Sort.asc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> thenByTacheIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tacheId', Sort.desc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> thenByTitre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titre', Sort.asc);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QAfterSortBy> thenByTitreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titre', Sort.desc);
    });
  }
}

extension TacheLocalQueryWhereDistinct
    on QueryBuilder<TacheLocal, TacheLocal, QDistinct> {
  QueryBuilder<TacheLocal, TacheLocal, QDistinct> distinctByCategorie(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categorie', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QDistinct> distinctByDateCreation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCreation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QDistinct> distinctByDateEcheance(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateEcheance', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QDistinct> distinctByEstComplete() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estComplete');
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QDistinct> distinctByTacheId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tacheId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TacheLocal, TacheLocal, QDistinct> distinctByTitre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'titre', caseSensitive: caseSensitive);
    });
  }
}

extension TacheLocalQueryProperty
    on QueryBuilder<TacheLocal, TacheLocal, QQueryProperty> {
  QueryBuilder<TacheLocal, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TacheLocal, String?, QQueryOperations> categorieProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categorie');
    });
  }

  QueryBuilder<TacheLocal, String?, QQueryOperations> dateCreationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCreation');
    });
  }

  QueryBuilder<TacheLocal, String?, QQueryOperations> dateEcheanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateEcheance');
    });
  }

  QueryBuilder<TacheLocal, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<TacheLocal, bool, QQueryOperations> estCompleteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estComplete');
    });
  }

  QueryBuilder<TacheLocal, String, QQueryOperations> tacheIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tacheId');
    });
  }

  QueryBuilder<TacheLocal, String, QQueryOperations> titreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'titre');
    });
  }
}
