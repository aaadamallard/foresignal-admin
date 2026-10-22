// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dossier_sections_imagery.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DossierSectionsImageryStatusEnum _$dossierSectionsImageryStatusEnum_ok =
    const DossierSectionsImageryStatusEnum._('ok');
const DossierSectionsImageryStatusEnum
    _$dossierSectionsImageryStatusEnum_empty =
    const DossierSectionsImageryStatusEnum._('empty');
const DossierSectionsImageryStatusEnum
    _$dossierSectionsImageryStatusEnum_unavailable =
    const DossierSectionsImageryStatusEnum._('unavailable');
const DossierSectionsImageryStatusEnum
    _$dossierSectionsImageryStatusEnum_notInstalled =
    const DossierSectionsImageryStatusEnum._('notInstalled');

DossierSectionsImageryStatusEnum _$dossierSectionsImageryStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'ok':
      return _$dossierSectionsImageryStatusEnum_ok;
    case 'empty':
      return _$dossierSectionsImageryStatusEnum_empty;
    case 'unavailable':
      return _$dossierSectionsImageryStatusEnum_unavailable;
    case 'notInstalled':
      return _$dossierSectionsImageryStatusEnum_notInstalled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DossierSectionsImageryStatusEnum>
    _$dossierSectionsImageryStatusEnumValues = BuiltSet<
        DossierSectionsImageryStatusEnum>(const <DossierSectionsImageryStatusEnum>[
  _$dossierSectionsImageryStatusEnum_ok,
  _$dossierSectionsImageryStatusEnum_empty,
  _$dossierSectionsImageryStatusEnum_unavailable,
  _$dossierSectionsImageryStatusEnum_notInstalled,
]);

Serializer<DossierSectionsImageryStatusEnum>
    _$dossierSectionsImageryStatusEnumSerializer =
    _$DossierSectionsImageryStatusEnumSerializer();

class _$DossierSectionsImageryStatusEnumSerializer
    implements PrimitiveSerializer<DossierSectionsImageryStatusEnum> {
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
  final Iterable<Type> types = const <Type>[DossierSectionsImageryStatusEnum];
  @override
  final String wireName = 'DossierSectionsImageryStatusEnum';

  @override
  Object serialize(
          Serializers serializers, DossierSectionsImageryStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DossierSectionsImageryStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DossierSectionsImageryStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DossierSectionsImagery extends DossierSectionsImagery {
  @override
  final DossierSectionsImageryStatusEnum status;
  @override
  final String? message;
  @override
  final DossierSectionsOverviewLinks? links;
  @override
  final DossierSectionsOverviewFacets? facets;
  @override
  final bool? truncated;
  @override
  final BuiltList<DossierSectionsImageryItemsInner>? items;

  factory _$DossierSectionsImagery(
          [void Function(DossierSectionsImageryBuilder)? updates]) =>
      (DossierSectionsImageryBuilder()..update(updates))._build();

  _$DossierSectionsImagery._(
      {required this.status,
      this.message,
      this.links,
      this.facets,
      this.truncated,
      this.items})
      : super._();
  @override
  DossierSectionsImagery rebuild(
          void Function(DossierSectionsImageryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DossierSectionsImageryBuilder toBuilder() =>
      DossierSectionsImageryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DossierSectionsImagery &&
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
    return (newBuiltValueToStringHelper(r'DossierSectionsImagery')
          ..add('status', status)
          ..add('message', message)
          ..add('links', links)
          ..add('facets', facets)
          ..add('truncated', truncated)
          ..add('items', items))
        .toString();
  }
}

class DossierSectionsImageryBuilder
    implements Builder<DossierSectionsImagery, DossierSectionsImageryBuilder> {
  _$DossierSectionsImagery? _$v;

  DossierSectionsImageryStatusEnum? _status;
  DossierSectionsImageryStatusEnum? get status => _$this._status;
  set status(DossierSectionsImageryStatusEnum? status) =>
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

  ListBuilder<DossierSectionsImageryItemsInner>? _items;
  ListBuilder<DossierSectionsImageryItemsInner> get items =>
      _$this._items ??= ListBuilder<DossierSectionsImageryItemsInner>();
  set items(ListBuilder<DossierSectionsImageryItemsInner>? items) =>
      _$this._items = items;

  DossierSectionsImageryBuilder() {
    DossierSectionsImagery._defaults(this);
  }

  DossierSectionsImageryBuilder get _$this {
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
  void replace(DossierSectionsImagery other) {
    _$v = other as _$DossierSectionsImagery;
  }

  @override
  void update(void Function(DossierSectionsImageryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DossierSectionsImagery build() => _build();

  _$DossierSectionsImagery _build() {
    _$DossierSectionsImagery _$result;
    try {
      _$result = _$v ??
          _$DossierSectionsImagery._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'DossierSectionsImagery', 'status'),
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
            r'DossierSectionsImagery', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
