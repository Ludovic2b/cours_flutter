// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produit_local.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProduitLocalCollection on Isar {
  IsarCollection<ProduitLocal> get produitLocals => this.collection();
}

const ProduitLocalSchema = CollectionSchema(
  name: r'ProduitLocal',
  id: -1788114734716977240,
  properties: {
    r'nom': PropertySchema(
      id: 0,
      name: r'nom',
      type: IsarType.string,
    ),
    r'prix': PropertySchema(
      id: 1,
      name: r'prix',
      type: IsarType.double,
    )
  },
  estimateSize: _produitLocalEstimateSize,
  serialize: _produitLocalSerialize,
  deserialize: _produitLocalDeserialize,
  deserializeProp: _produitLocalDeserializeProp,
  idName: r'id',
  indexes: {
    r'nom': IndexSchema(
      id: 1809533539974316007,
      name: r'nom',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'nom',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _produitLocalGetId,
  getLinks: _produitLocalGetLinks,
  attach: _produitLocalAttach,
  version: '3.1.0+1',
);

int _produitLocalEstimateSize(
  ProduitLocal object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.nom.length * 3;
  return bytesCount;
}

void _produitLocalSerialize(
  ProduitLocal object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.nom);
  writer.writeDouble(offsets[1], object.prix);
}

ProduitLocal _produitLocalDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProduitLocal();
  object.id = id;
  object.nom = reader.readString(offsets[0]);
  object.prix = reader.readDouble(offsets[1]);
  return object;
}

P _produitLocalDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _produitLocalGetId(ProduitLocal object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _produitLocalGetLinks(ProduitLocal object) {
  return [];
}

void _produitLocalAttach(
    IsarCollection<dynamic> col, Id id, ProduitLocal object) {
  object.id = id;
}

extension ProduitLocalQueryWhereSort
    on QueryBuilder<ProduitLocal, ProduitLocal, QWhere> {
  QueryBuilder<ProduitLocal, ProduitLocal, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProduitLocalQueryWhere
    on QueryBuilder<ProduitLocal, ProduitLocal, QWhereClause> {
  QueryBuilder<ProduitLocal, ProduitLocal, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterWhereClause> idBetween(
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

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterWhereClause> nomEqualTo(
      String nom) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'nom',
        value: [nom],
      ));
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterWhereClause> nomNotEqualTo(
      String nom) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'nom',
              lower: [],
              upper: [nom],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'nom',
              lower: [nom],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'nom',
              lower: [nom],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'nom',
              lower: [],
              upper: [nom],
              includeUpper: false,
            ));
      }
    });
  }
}

extension ProduitLocalQueryFilter
    on QueryBuilder<ProduitLocal, ProduitLocal, QFilterCondition> {
  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition> nomEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition>
      nomGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition> nomLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition> nomBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition> nomStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition> nomEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition> nomContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition> nomMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition> nomIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nom',
        value: '',
      ));
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition>
      nomIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nom',
        value: '',
      ));
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition> prixEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prix',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition>
      prixGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prix',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition> prixLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prix',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterFilterCondition> prixBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prix',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension ProduitLocalQueryObject
    on QueryBuilder<ProduitLocal, ProduitLocal, QFilterCondition> {}

extension ProduitLocalQueryLinks
    on QueryBuilder<ProduitLocal, ProduitLocal, QFilterCondition> {}

extension ProduitLocalQuerySortBy
    on QueryBuilder<ProduitLocal, ProduitLocal, QSortBy> {
  QueryBuilder<ProduitLocal, ProduitLocal, QAfterSortBy> sortByNom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nom', Sort.asc);
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterSortBy> sortByNomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nom', Sort.desc);
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterSortBy> sortByPrix() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prix', Sort.asc);
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterSortBy> sortByPrixDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prix', Sort.desc);
    });
  }
}

extension ProduitLocalQuerySortThenBy
    on QueryBuilder<ProduitLocal, ProduitLocal, QSortThenBy> {
  QueryBuilder<ProduitLocal, ProduitLocal, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterSortBy> thenByNom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nom', Sort.asc);
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterSortBy> thenByNomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nom', Sort.desc);
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterSortBy> thenByPrix() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prix', Sort.asc);
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QAfterSortBy> thenByPrixDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prix', Sort.desc);
    });
  }
}

extension ProduitLocalQueryWhereDistinct
    on QueryBuilder<ProduitLocal, ProduitLocal, QDistinct> {
  QueryBuilder<ProduitLocal, ProduitLocal, QDistinct> distinctByNom(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nom', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProduitLocal, ProduitLocal, QDistinct> distinctByPrix() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prix');
    });
  }
}

extension ProduitLocalQueryProperty
    on QueryBuilder<ProduitLocal, ProduitLocal, QQueryProperty> {
  QueryBuilder<ProduitLocal, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ProduitLocal, String, QQueryOperations> nomProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nom');
    });
  }

  QueryBuilder<ProduitLocal, double, QQueryOperations> prixProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prix');
    });
  }
}
