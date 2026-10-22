// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backtest_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BacktestRequestTypeEnum _$backtestRequestTypeEnum_rule =
    const BacktestRequestTypeEnum._('rule');
const BacktestRequestTypeEnum _$backtestRequestTypeEnum_recipe =
    const BacktestRequestTypeEnum._('recipe');
const BacktestRequestTypeEnum _$backtestRequestTypeEnum_precursor =
    const BacktestRequestTypeEnum._('precursor');
const BacktestRequestTypeEnum _$backtestRequestTypeEnum_quality =
    const BacktestRequestTypeEnum._('quality');

BacktestRequestTypeEnum _$backtestRequestTypeEnumValueOf(String name) {
  switch (name) {
    case 'rule':
      return _$backtestRequestTypeEnum_rule;
    case 'recipe':
      return _$backtestRequestTypeEnum_recipe;
    case 'precursor':
      return _$backtestRequestTypeEnum_precursor;
    case 'quality':
      return _$backtestRequestTypeEnum_quality;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BacktestRequestTypeEnum> _$backtestRequestTypeEnumValues =
    BuiltSet<BacktestRequestTypeEnum>(const <BacktestRequestTypeEnum>[
  _$backtestRequestTypeEnum_rule,
  _$backtestRequestTypeEnum_recipe,
  _$backtestRequestTypeEnum_precursor,
  _$backtestRequestTypeEnum_quality,
]);

Serializer<BacktestRequestTypeEnum> _$backtestRequestTypeEnumSerializer =
    _$BacktestRequestTypeEnumSerializer();

class _$BacktestRequestTypeEnumSerializer
    implements PrimitiveSerializer<BacktestRequestTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'rule': 'rule',
    'recipe': 'recipe',
    'precursor': 'precursor',
    'quality': 'quality',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'rule': 'rule',
    'recipe': 'recipe',
    'precursor': 'precursor',
    'quality': 'quality',
  };

  @override
  final Iterable<Type> types = const <Type>[BacktestRequestTypeEnum];
  @override
  final String wireName = 'BacktestRequestTypeEnum';

  @override
  Object serialize(Serializers serializers, BacktestRequestTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BacktestRequestTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BacktestRequestTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$BacktestRequest extends BacktestRequest {
  @override
  final BacktestRequestTypeEnum type;
  @override
  final String? targetId;
  @override
  final BuiltMap<String, JsonObject?>? definition;
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final int? fromSeq;
  @override
  final int? toSeq;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>>? variants;

  factory _$BacktestRequest([void Function(BacktestRequestBuilder)? updates]) =>
      (BacktestRequestBuilder()..update(updates))._build();

  _$BacktestRequest._(
      {required this.type,
      this.targetId,
      this.definition,
      this.from,
      this.to,
      this.fromSeq,
      this.toSeq,
      this.variants})
      : super._();
  @override
  BacktestRequest rebuild(void Function(BacktestRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BacktestRequestBuilder toBuilder() => BacktestRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BacktestRequest &&
        type == other.type &&
        targetId == other.targetId &&
        definition == other.definition &&
        from == other.from &&
        to == other.to &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq &&
        variants == other.variants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, targetId.hashCode);
    _$hash = $jc(_$hash, definition.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jc(_$hash, variants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BacktestRequest')
          ..add('type', type)
          ..add('targetId', targetId)
          ..add('definition', definition)
          ..add('from', from)
          ..add('to', to)
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq)
          ..add('variants', variants))
        .toString();
  }
}

class BacktestRequestBuilder
    implements Builder<BacktestRequest, BacktestRequestBuilder> {
  _$BacktestRequest? _$v;

  BacktestRequestTypeEnum? _type;
  BacktestRequestTypeEnum? get type => _$this._type;
  set type(BacktestRequestTypeEnum? type) => _$this._type = type;

  String? _targetId;
  String? get targetId => _$this._targetId;
  set targetId(String? targetId) => _$this._targetId = targetId;

  MapBuilder<String, JsonObject?>? _definition;
  MapBuilder<String, JsonObject?> get definition =>
      _$this._definition ??= MapBuilder<String, JsonObject?>();
  set definition(MapBuilder<String, JsonObject?>? definition) =>
      _$this._definition = definition;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  ListBuilder<BuiltMap<String, JsonObject?>>? _variants;
  ListBuilder<BuiltMap<String, JsonObject?>> get variants =>
      _$this._variants ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set variants(ListBuilder<BuiltMap<String, JsonObject?>>? variants) =>
      _$this._variants = variants;

  BacktestRequestBuilder() {
    BacktestRequest._defaults(this);
  }

  BacktestRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _targetId = $v.targetId;
      _definition = $v.definition?.toBuilder();
      _from = $v.from;
      _to = $v.to;
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _variants = $v.variants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BacktestRequest other) {
    _$v = other as _$BacktestRequest;
  }

  @override
  void update(void Function(BacktestRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BacktestRequest build() => _build();

  _$BacktestRequest _build() {
    _$BacktestRequest _$result;
    try {
      _$result = _$v ??
          _$BacktestRequest._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'BacktestRequest', 'type'),
            targetId: targetId,
            definition: _definition?.build(),
            from: from,
            to: to,
            fromSeq: fromSeq,
            toSeq: toSeq,
            variants: _variants?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'definition';
        _definition?.build();

        _$failedField = 'variants';
        _variants?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BacktestRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
