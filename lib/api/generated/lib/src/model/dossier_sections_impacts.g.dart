// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dossier_sections_impacts.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DossierSectionsImpactsStatusEnum _$dossierSectionsImpactsStatusEnum_ok =
    const DossierSectionsImpactsStatusEnum._('ok');
const DossierSectionsImpactsStatusEnum
    _$dossierSectionsImpactsStatusEnum_empty =
    const DossierSectionsImpactsStatusEnum._('empty');
const DossierSectionsImpactsStatusEnum
    _$dossierSectionsImpactsStatusEnum_unavailable =
    const DossierSectionsImpactsStatusEnum._('unavailable');
const DossierSectionsImpactsStatusEnum
    _$dossierSectionsImpactsStatusEnum_notInstalled =
    const DossierSectionsImpactsStatusEnum._('notInstalled');

DossierSectionsImpactsStatusEnum _$dossierSectionsImpactsStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'ok':
      return _$dossierSectionsImpactsStatusEnum_ok;
    case 'empty':
      return _$dossierSectionsImpactsStatusEnum_empty;
    case 'unavailable':
      return _$dossierSectionsImpactsStatusEnum_unavailable;
    case 'notInstalled':
      return _$dossierSectionsImpactsStatusEnum_notInstalled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DossierSectionsImpactsStatusEnum>
    _$dossierSectionsImpactsStatusEnumValues = BuiltSet<
        DossierSectionsImpactsStatusEnum>(const <DossierSectionsImpactsStatusEnum>[
  _$dossierSectionsImpactsStatusEnum_ok,
  _$dossierSectionsImpactsStatusEnum_empty,
  _$dossierSectionsImpactsStatusEnum_unavailable,
  _$dossierSectionsImpactsStatusEnum_notInstalled,
]);

Serializer<DossierSectionsImpactsStatusEnum>
    _$dossierSectionsImpactsStatusEnumSerializer =
    _$DossierSectionsImpactsStatusEnumSerializer();

class _$DossierSectionsImpactsStatusEnumSerializer
    implements PrimitiveSerializer<DossierSectionsImpactsStatusEnum> {
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
  final Iterable<Type> types = const <Type>[DossierSectionsImpactsStatusEnum];
  @override
  final String wireName = 'DossierSectionsImpactsStatusEnum';

  @override
  Object serialize(
          Serializers serializers, DossierSectionsImpactsStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DossierSectionsImpactsStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DossierSectionsImpactsStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DossierSectionsImpacts extends DossierSectionsImpacts {
  @override
  final DossierSectionsImpactsStatusEnum status;
  @override
  final String? message;
  @override
  final DossierSectionsOverviewLinks? links;
  @override
  final DossierSectionsOverviewFacets? facets;
  @override
  final bool? truncated;
  @override
  final BuiltList<DossierSectionsImpactsItemsInner>? items;

  factory _$DossierSectionsImpacts(
          [void Function(DossierSectionsImpactsBuilder)? updates]) =>
      (DossierSectionsImpactsBuilder()..update(updates))._build();

  _$DossierSectionsImpacts._(
      {required this.status,
      this.message,
      this.links,
      this.facets,
      this.truncated,
      this.items})
      : super._();
  @override
  DossierSectionsImpacts rebuild(
          void Function(DossierSectionsImpactsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DossierSectionsImpactsBuilder toBuilder() =>
      DossierSectionsImpactsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DossierSectionsImpacts &&
        status == other.status &&
        message == other.message &&
        links == other.links &&
        facets == other.facets &&
        truncated == other.truncated &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, facets.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DossierSectionsImpacts')
          ..add('status', status)
          ..add('message', message)
          ..add('links', links)
          ..add('facets', facets)
          ..add('truncated', truncated)
          ..add('items', items))
        .toString();
  }
}

class DossierSectionsImpactsBuilder
    implements Builder<DossierSectionsImpacts, DossierSectionsImpactsBuilder> {
  _$DossierSectionsImpacts? _$v;

  DossierSectionsImpactsStatusEnum? _status;
  DossierSectionsImpactsStatusEnum? get status => _$this._status;
  set status(DossierSectionsImpactsStatusEnum? status) =>
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

  ListBuilder<DossierSectionsImpactsItemsInner>? _items;
  ListBuilder<DossierSectionsImpactsItemsInner> get items =>
      _$this._items ??= ListBuilder<DossierSectionsImpactsItemsInner>();
  set items(ListBuilder<DossierSectionsImpactsItemsInner>? items) =>
      _$this._items = items;

  DossierSectionsImpactsBuilder() {
    DossierSectionsImpacts._defaults(this);
  }

  DossierSectionsImpactsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _links = $v.links?.toBuilder();
      _facets = $v.facets?.toBuilder();
      _truncated = $v.truncated;
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DossierSectionsImpacts other) {
    _$v = other as _$DossierSectionsImpacts;
  }

  @override
  void update(void Function(DossierSectionsImpactsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DossierSectionsImpacts build() => _build();

  _$DossierSectionsImpacts _build() {
    _$DossierSectionsImpacts _$result;
    try {
      _$result = _$v ??
          _$DossierSectionsImpacts._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'DossierSectionsImpacts', 'status'),
            message: message,
            links: _links?.build(),
            facets: _facets?.build(),
            truncated: truncated,
            items: _items?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'facets';
        _facets?.build();

        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DossierSectionsImpacts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
