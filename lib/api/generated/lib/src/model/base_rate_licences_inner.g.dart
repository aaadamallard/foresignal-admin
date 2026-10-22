// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_rate_licences_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BaseRateLicencesInnerEgressEnum _$baseRateLicencesInnerEgressEnum_OPEN =
    const BaseRateLicencesInnerEgressEnum._('OPEN');
const BaseRateLicencesInnerEgressEnum
    _$baseRateLicencesInnerEgressEnum_LOCAL_ONLY =
    const BaseRateLicencesInnerEgressEnum._('LOCAL_ONLY');

BaseRateLicencesInnerEgressEnum _$baseRateLicencesInnerEgressEnumValueOf(
    String name) {
  switch (name) {
    case 'OPEN':
      return _$baseRateLicencesInnerEgressEnum_OPEN;
    case 'LOCAL_ONLY':
      return _$baseRateLicencesInnerEgressEnum_LOCAL_ONLY;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BaseRateLicencesInnerEgressEnum>
    _$baseRateLicencesInnerEgressEnumValues = BuiltSet<
        BaseRateLicencesInnerEgressEnum>(const <BaseRateLicencesInnerEgressEnum>[
  _$baseRateLicencesInnerEgressEnum_OPEN,
  _$baseRateLicencesInnerEgressEnum_LOCAL_ONLY,
]);

Serializer<BaseRateLicencesInnerEgressEnum>
    _$baseRateLicencesInnerEgressEnumSerializer =
    _$BaseRateLicencesInnerEgressEnumSerializer();

class _$BaseRateLicencesInnerEgressEnumSerializer
    implements PrimitiveSerializer<BaseRateLicencesInnerEgressEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'OPEN': 'OPEN',
    'LOCAL_ONLY': 'LOCAL_ONLY',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OPEN': 'OPEN',
    'LOCAL_ONLY': 'LOCAL_ONLY',
  };

  @override
  final Iterable<Type> types = const <Type>[BaseRateLicencesInnerEgressEnum];
  @override
  final String wireName = 'BaseRateLicencesInnerEgressEnum';

  @override
  Object serialize(
          Serializers serializers, BaseRateLicencesInnerEgressEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BaseRateLicencesInnerEgressEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BaseRateLicencesInnerEgressEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$BaseRateLicencesInner extends BaseRateLicencesInner {
  @override
  final String source_;
  @override
  final String licence;
  @override
  final BaseRateLicencesInnerEgressEnum? egress;

  factory _$BaseRateLicencesInner(
          [void Function(BaseRateLicencesInnerBuilder)? updates]) =>
      (BaseRateLicencesInnerBuilder()..update(updates))._build();

  _$BaseRateLicencesInner._(
      {required this.source_, required this.licence, this.egress})
      : super._();
  @override
  BaseRateLicencesInner rebuild(
          void Function(BaseRateLicencesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseRateLicencesInnerBuilder toBuilder() =>
      BaseRateLicencesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseRateLicencesInner &&
        source_ == other.source_ &&
        licence == other.licence &&
        egress == other.egress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, egress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BaseRateLicencesInner')
          ..add('source_', source_)
          ..add('licence', licence)
          ..add('egress', egress))
        .toString();
  }
}

class BaseRateLicencesInnerBuilder
    implements Builder<BaseRateLicencesInner, BaseRateLicencesInnerBuilder> {
  _$BaseRateLicencesInner? _$v;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _licence;
  String? get licence => _$this._licence;
  set licence(String? licence) => _$this._licence = licence;

  BaseRateLicencesInnerEgressEnum? _egress;
  BaseRateLicencesInnerEgressEnum? get egress => _$this._egress;
  set egress(BaseRateLicencesInnerEgressEnum? egress) =>
      _$this._egress = egress;

  BaseRateLicencesInnerBuilder() {
    BaseRateLicencesInner._defaults(this);
  }

  BaseRateLicencesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source_ = $v.source_;
      _licence = $v.licence;
      _egress = $v.egress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseRateLicencesInner other) {
    _$v = other as _$BaseRateLicencesInner;
  }

  @override
  void update(void Function(BaseRateLicencesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BaseRateLicencesInner build() => _build();

  _$BaseRateLicencesInner _build() {
    final _$result = _$v ??
        _$BaseRateLicencesInner._(
          source_: BuiltValueNullFieldError.checkNotNull(
              source_, r'BaseRateLicencesInner', 'source_'),
          licence: BuiltValueNullFieldError.checkNotNull(
              licence, r'BaseRateLicencesInner', 'licence'),
          egress: egress,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
