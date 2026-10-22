// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exposure_places.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExposurePlacesStatusEnum _$exposurePlacesStatusEnum_ok =
    const ExposurePlacesStatusEnum._('ok');
const ExposurePlacesStatusEnum _$exposurePlacesStatusEnum_unavailable =
    const ExposurePlacesStatusEnum._('unavailable');
const ExposurePlacesStatusEnum _$exposurePlacesStatusEnum_notInstalled =
    const ExposurePlacesStatusEnum._('notInstalled');

ExposurePlacesStatusEnum _$exposurePlacesStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$exposurePlacesStatusEnum_ok;
    case 'unavailable':
      return _$exposurePlacesStatusEnum_unavailable;
    case 'notInstalled':
      return _$exposurePlacesStatusEnum_notInstalled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExposurePlacesStatusEnum> _$exposurePlacesStatusEnumValues =
    BuiltSet<ExposurePlacesStatusEnum>(const <ExposurePlacesStatusEnum>[
      _$exposurePlacesStatusEnum_ok,
      _$exposurePlacesStatusEnum_unavailable,
      _$exposurePlacesStatusEnum_notInstalled,
    ]);

Serializer<ExposurePlacesStatusEnum> _$exposurePlacesStatusEnumSerializer =
    _$ExposurePlacesStatusEnumSerializer();

class _$ExposurePlacesStatusEnumSerializer
    implements PrimitiveSerializer<ExposurePlacesStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'unavailable': 'unavailable',
    'notInstalled': 'not-installed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'unavailable': 'unavailable',
    'not-installed': 'notInstalled',
  };

  @override
  final Iterable<Type> types = const <Type>[ExposurePlacesStatusEnum];
  @override
  final String wireName = 'ExposurePlacesStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExposurePlacesStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExposurePlacesStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExposurePlacesStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExposurePlaces extends ExposurePlaces {
  @override
  final ExposurePlacesStatusEnum status;
  @override
  final BuiltList<Attribution>? attribution;
  @override
  final BuiltList<ExposurePlacesItemsInner>? items;

  factory _$ExposurePlaces([void Function(ExposurePlacesBuilder)? updates]) =>
      (ExposurePlacesBuilder()..update(updates))._build();

  _$ExposurePlaces._({required this.status, this.attribution, this.items})
    : super._();
  @override
  ExposurePlaces rebuild(void Function(ExposurePlacesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExposurePlacesBuilder toBuilder() => ExposurePlacesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExposurePlaces &&
        status == other.status &&
        attribution == other.attribution &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExposurePlaces')
          ..add('status', status)
          ..add('attribution', attribution)
          ..add('items', items))
        .toString();
  }
}

class ExposurePlacesBuilder
    implements Builder<ExposurePlaces, ExposurePlacesBuilder> {
  _$ExposurePlaces? _$v;

  ExposurePlacesStatusEnum? _status;
  ExposurePlacesStatusEnum? get status => _$this._status;
  set status(ExposurePlacesStatusEnum? status) => _$this._status = status;

  ListBuilder<Attribution>? _attribution;
  ListBuilder<Attribution> get attribution =>
      _$this._attribution ??= ListBuilder<Attribution>();
  set attribution(ListBuilder<Attribution>? attribution) =>
      _$this._attribution = attribution;

  ListBuilder<ExposurePlacesItemsInner>? _items;
  ListBuilder<ExposurePlacesItemsInner> get items =>
      _$this._items ??= ListBuilder<ExposurePlacesItemsInner>();
  set items(ListBuilder<ExposurePlacesItemsInner>? items) =>
      _$this._items = items;

  ExposurePlacesBuilder() {
    ExposurePlaces._defaults(this);
  }

  ExposurePlacesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _attribution = $v.attribution?.toBuilder();
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExposurePlaces other) {
    _$v = other as _$ExposurePlaces;
  }

  @override
  void update(void Function(ExposurePlacesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExposurePlaces build() => _build();

  _$ExposurePlaces _build() {
    _$ExposurePlaces _$result;
    try {
      _$result =
          _$v ??
          _$ExposurePlaces._(
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'ExposurePlaces',
              'status',
            ),
            attribution: _attribution?.build(),
            items: _items?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attribution';
        _attribution?.build();
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExposurePlaces',
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
