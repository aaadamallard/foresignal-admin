// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dossier_sections_related.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DossierSectionsRelatedStatusEnum _$dossierSectionsRelatedStatusEnum_ok =
    const DossierSectionsRelatedStatusEnum._('ok');
const DossierSectionsRelatedStatusEnum
_$dossierSectionsRelatedStatusEnum_empty =
    const DossierSectionsRelatedStatusEnum._('empty');
const DossierSectionsRelatedStatusEnum
_$dossierSectionsRelatedStatusEnum_unavailable =
    const DossierSectionsRelatedStatusEnum._('unavailable');
const DossierSectionsRelatedStatusEnum
_$dossierSectionsRelatedStatusEnum_notInstalled =
    const DossierSectionsRelatedStatusEnum._('notInstalled');

DossierSectionsRelatedStatusEnum _$dossierSectionsRelatedStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ok':
      return _$dossierSectionsRelatedStatusEnum_ok;
    case 'empty':
      return _$dossierSectionsRelatedStatusEnum_empty;
    case 'unavailable':
      return _$dossierSectionsRelatedStatusEnum_unavailable;
    case 'notInstalled':
      return _$dossierSectionsRelatedStatusEnum_notInstalled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DossierSectionsRelatedStatusEnum>
_$dossierSectionsRelatedStatusEnumValues =
    BuiltSet<DossierSectionsRelatedStatusEnum>(
      const <DossierSectionsRelatedStatusEnum>[
        _$dossierSectionsRelatedStatusEnum_ok,
        _$dossierSectionsRelatedStatusEnum_empty,
        _$dossierSectionsRelatedStatusEnum_unavailable,
        _$dossierSectionsRelatedStatusEnum_notInstalled,
      ],
    );

Serializer<DossierSectionsRelatedStatusEnum>
_$dossierSectionsRelatedStatusEnumSerializer =
    _$DossierSectionsRelatedStatusEnumSerializer();

class _$DossierSectionsRelatedStatusEnumSerializer
    implements PrimitiveSerializer<DossierSectionsRelatedStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'empty': 'empty',
    'unavailable': 'unavailable',
    'notInstalled': 'not-installed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'empty': 'empty',
    'unavailable': 'unavailable',
    'not-installed': 'notInstalled',
  };

  @override
  final Iterable<Type> types = const <Type>[DossierSectionsRelatedStatusEnum];
  @override
  final String wireName = 'DossierSectionsRelatedStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    DossierSectionsRelatedStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DossierSectionsRelatedStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DossierSectionsRelatedStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DossierSectionsRelated extends DossierSectionsRelated {
  @override
  final DossierSectionsRelatedStatusEnum status;
  @override
  final String? message;
  @override
  final DossierSectionsOverviewLinks? links;
  @override
  final DossierSectionsOverviewFacets? facets;
  @override
  final bool? truncated;
  @override
  final BuiltList<RelatedObject>? nearby;
  @override
  final BuiltList<RelatedObject>? operational;
  @override
  final BuiltList<RelatedObject>? infrastructure;
  @override
  final BuiltList<RelatedObject>? historical;

  factory _$DossierSectionsRelated([
    void Function(DossierSectionsRelatedBuilder)? updates,
  ]) => (DossierSectionsRelatedBuilder()..update(updates))._build();

  _$DossierSectionsRelated._({
    required this.status,
    this.message,
    this.links,
    this.facets,
    this.truncated,
    this.nearby,
    this.operational,
    this.infrastructure,
    this.historical,
  }) : super._();
  @override
  DossierSectionsRelated rebuild(
    void Function(DossierSectionsRelatedBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DossierSectionsRelatedBuilder toBuilder() =>
      DossierSectionsRelatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DossierSectionsRelated &&
        status == other.status &&
        message == other.message &&
        links == other.links &&
        facets == other.facets &&
        truncated == other.truncated &&
        nearby == other.nearby &&
        operational == other.operational &&
        infrastructure == other.infrastructure &&
        historical == other.historical;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, facets.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jc(_$hash, nearby.hashCode);
    _$hash = $jc(_$hash, operational.hashCode);
    _$hash = $jc(_$hash, infrastructure.hashCode);
    _$hash = $jc(_$hash, historical.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DossierSectionsRelated')
          ..add('status', status)
          ..add('message', message)
          ..add('links', links)
          ..add('facets', facets)
          ..add('truncated', truncated)
          ..add('nearby', nearby)
          ..add('operational', operational)
          ..add('infrastructure', infrastructure)
          ..add('historical', historical))
        .toString();
  }
}

class DossierSectionsRelatedBuilder
    implements Builder<DossierSectionsRelated, DossierSectionsRelatedBuilder> {
  _$DossierSectionsRelated? _$v;

  DossierSectionsRelatedStatusEnum? _status;
  DossierSectionsRelatedStatusEnum? get status => _$this._status;
  set status(DossierSectionsRelatedStatusEnum? status) =>
      _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DossierSectionsOverviewLinksBuilder? _links;
  DossierSectionsOverviewLinksBuilder get links =>
      _$this._links ??= DossierSectionsOverviewLinksBuilder();
  set links(DossierSectionsOverviewLinksBuilder? links) =>
      _$this._links = links;

  DossierSectionsOverviewFacetsBuilder? _facets;
  DossierSectionsOverviewFacetsBuilder get facets =>
      _$this._facets ??= DossierSectionsOverviewFacetsBuilder();
  set facets(DossierSectionsOverviewFacetsBuilder? facets) =>
      _$this._facets = facets;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  ListBuilder<RelatedObject>? _nearby;
  ListBuilder<RelatedObject> get nearby =>
      _$this._nearby ??= ListBuilder<RelatedObject>();
  set nearby(ListBuilder<RelatedObject>? nearby) => _$this._nearby = nearby;

  ListBuilder<RelatedObject>? _operational;
  ListBuilder<RelatedObject> get operational =>
      _$this._operational ??= ListBuilder<RelatedObject>();
  set operational(ListBuilder<RelatedObject>? operational) =>
      _$this._operational = operational;

  ListBuilder<RelatedObject>? _infrastructure;
  ListBuilder<RelatedObject> get infrastructure =>
      _$this._infrastructure ??= ListBuilder<RelatedObject>();
  set infrastructure(ListBuilder<RelatedObject>? infrastructure) =>
      _$this._infrastructure = infrastructure;

  ListBuilder<RelatedObject>? _historical;
  ListBuilder<RelatedObject> get historical =>
      _$this._historical ??= ListBuilder<RelatedObject>();
  set historical(ListBuilder<RelatedObject>? historical) =>
      _$this._historical = historical;

  DossierSectionsRelatedBuilder() {
    DossierSectionsRelated._defaults(this);
  }

  DossierSectionsRelatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _links = $v.links?.toBuilder();
      _facets = $v.facets?.toBuilder();
      _truncated = $v.truncated;
      _nearby = $v.nearby?.toBuilder();
      _operational = $v.operational?.toBuilder();
      _infrastructure = $v.infrastructure?.toBuilder();
      _historical = $v.historical?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DossierSectionsRelated other) {
    _$v = other as _$DossierSectionsRelated;
  }

  @override
  void update(void Function(DossierSectionsRelatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DossierSectionsRelated build() => _build();

  _$DossierSectionsRelated _build() {
    _$DossierSectionsRelated _$result;
    try {
      _$result =
          _$v ??
          _$DossierSectionsRelated._(
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'DossierSectionsRelated',
              'status',
            ),
            message: message,
            links: _links?.build(),
            facets: _facets?.build(),
            truncated: truncated,
            nearby: _nearby?.build(),
            operational: _operational?.build(),
            infrastructure: _infrastructure?.build(),
            historical: _historical?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'facets';
        _facets?.build();

        _$failedField = 'nearby';
        _nearby?.build();
        _$failedField = 'operational';
        _operational?.build();
        _$failedField = 'infrastructure';
        _infrastructure?.build();
        _$failedField = 'historical';
        _historical?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DossierSectionsRelated',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
