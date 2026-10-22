// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dossier_sections_overview.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DossierSectionsOverviewStatusEnum _$dossierSectionsOverviewStatusEnum_ok =
    const DossierSectionsOverviewStatusEnum._('ok');
const DossierSectionsOverviewStatusEnum
    _$dossierSectionsOverviewStatusEnum_empty =
    const DossierSectionsOverviewStatusEnum._('empty');
const DossierSectionsOverviewStatusEnum
    _$dossierSectionsOverviewStatusEnum_unavailable =
    const DossierSectionsOverviewStatusEnum._('unavailable');
const DossierSectionsOverviewStatusEnum
    _$dossierSectionsOverviewStatusEnum_notInstalled =
    const DossierSectionsOverviewStatusEnum._('notInstalled');

DossierSectionsOverviewStatusEnum _$dossierSectionsOverviewStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'ok':
      return _$dossierSectionsOverviewStatusEnum_ok;
    case 'empty':
      return _$dossierSectionsOverviewStatusEnum_empty;
    case 'unavailable':
      return _$dossierSectionsOverviewStatusEnum_unavailable;
    case 'notInstalled':
      return _$dossierSectionsOverviewStatusEnum_notInstalled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DossierSectionsOverviewStatusEnum>
    _$dossierSectionsOverviewStatusEnumValues = BuiltSet<
        DossierSectionsOverviewStatusEnum>(const <DossierSectionsOverviewStatusEnum>[
  _$dossierSectionsOverviewStatusEnum_ok,
  _$dossierSectionsOverviewStatusEnum_empty,
  _$dossierSectionsOverviewStatusEnum_unavailable,
  _$dossierSectionsOverviewStatusEnum_notInstalled,
]);

Serializer<DossierSectionsOverviewStatusEnum>
    _$dossierSectionsOverviewStatusEnumSerializer =
    _$DossierSectionsOverviewStatusEnumSerializer();

class _$DossierSectionsOverviewStatusEnumSerializer
    implements PrimitiveSerializer<DossierSectionsOverviewStatusEnum> {
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
  final Iterable<Type> types = const <Type>[DossierSectionsOverviewStatusEnum];
  @override
  final String wireName = 'DossierSectionsOverviewStatusEnum';

  @override
  Object serialize(
          Serializers serializers, DossierSectionsOverviewStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DossierSectionsOverviewStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DossierSectionsOverviewStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DossierSectionsOverview extends DossierSectionsOverview {
  @override
  final DossierSectionsOverviewStatusEnum status;
  @override
  final String? message;
  @override
  final DossierSectionsOverviewLinks? links;
  @override
  final DossierSectionsOverviewFacets? facets;
  @override
  final bool? truncated;
  @override
  final BuiltMap<String, JsonObject?>? fields;

  factory _$DossierSectionsOverview(
          [void Function(DossierSectionsOverviewBuilder)? updates]) =>
      (DossierSectionsOverviewBuilder()..update(updates))._build();

  _$DossierSectionsOverview._(
      {required this.status,
      this.message,
      this.links,
      this.facets,
      this.truncated,
      this.fields})
      : super._();
  @override
  DossierSectionsOverview rebuild(
          void Function(DossierSectionsOverviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DossierSectionsOverviewBuilder toBuilder() =>
      DossierSectionsOverviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DossierSectionsOverview &&
        status == other.status &&
        message == other.message &&
        links == other.links &&
        facets == other.facets &&
        truncated == other.truncated &&
        fields == other.fields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, facets.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DossierSectionsOverview')
          ..add('status', status)
          ..add('message', message)
          ..add('links', links)
          ..add('facets', facets)
          ..add('truncated', truncated)
          ..add('fields', fields))
        .toString();
  }
}

class DossierSectionsOverviewBuilder
    implements
        Builder<DossierSectionsOverview, DossierSectionsOverviewBuilder> {
  _$DossierSectionsOverview? _$v;

  DossierSectionsOverviewStatusEnum? _status;
  DossierSectionsOverviewStatusEnum? get status => _$this._status;
  set status(DossierSectionsOverviewStatusEnum? status) =>
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

  MapBuilder<String, JsonObject?>? _fields;
  MapBuilder<String, JsonObject?> get fields =>
      _$this._fields ??= MapBuilder<String, JsonObject?>();
  set fields(MapBuilder<String, JsonObject?>? fields) =>
      _$this._fields = fields;

  DossierSectionsOverviewBuilder() {
    DossierSectionsOverview._defaults(this);
  }

  DossierSectionsOverviewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _links = $v.links?.toBuilder();
      _facets = $v.facets?.toBuilder();
      _truncated = $v.truncated;
      _fields = $v.fields?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DossierSectionsOverview other) {
    _$v = other as _$DossierSectionsOverview;
  }

  @override
  void update(void Function(DossierSectionsOverviewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DossierSectionsOverview build() => _build();

  _$DossierSectionsOverview _build() {
    _$DossierSectionsOverview _$result;
    try {
      _$result = _$v ??
          _$DossierSectionsOverview._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'DossierSectionsOverview', 'status'),
            message: message,
            links: _links?.build(),
            facets: _facets?.build(),
            truncated: truncated,
            fields: _fields?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'facets';
        _facets?.build();

        _$failedField = 'fields';
        _fields?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DossierSectionsOverview', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
