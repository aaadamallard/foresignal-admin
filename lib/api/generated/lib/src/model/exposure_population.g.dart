// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exposure_population.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExposurePopulationStatusEnum _$exposurePopulationStatusEnum_ok =
    const ExposurePopulationStatusEnum._('ok');
const ExposurePopulationStatusEnum _$exposurePopulationStatusEnum_unavailable =
    const ExposurePopulationStatusEnum._('unavailable');
const ExposurePopulationStatusEnum _$exposurePopulationStatusEnum_notInstalled =
    const ExposurePopulationStatusEnum._('notInstalled');
const ExposurePopulationStatusEnum
_$exposurePopulationStatusEnum_unknownDefaultOpenApi =
    const ExposurePopulationStatusEnum._('unknownDefaultOpenApi');

ExposurePopulationStatusEnum _$exposurePopulationStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ok':
      return _$exposurePopulationStatusEnum_ok;
    case 'unavailable':
      return _$exposurePopulationStatusEnum_unavailable;
    case 'notInstalled':
      return _$exposurePopulationStatusEnum_notInstalled;
    case 'unknownDefaultOpenApi':
      return _$exposurePopulationStatusEnum_unknownDefaultOpenApi;
    default:
      return _$exposurePopulationStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ExposurePopulationStatusEnum>
_$exposurePopulationStatusEnumValues =
    BuiltSet<ExposurePopulationStatusEnum>(const <ExposurePopulationStatusEnum>[
      _$exposurePopulationStatusEnum_ok,
      _$exposurePopulationStatusEnum_unavailable,
      _$exposurePopulationStatusEnum_notInstalled,
      _$exposurePopulationStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<ExposurePopulationStatusEnum>
_$exposurePopulationStatusEnumSerializer =
    _$ExposurePopulationStatusEnumSerializer();

class _$ExposurePopulationStatusEnumSerializer
    implements PrimitiveSerializer<ExposurePopulationStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'unavailable': 'unavailable',
    'notInstalled': 'not-installed',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'unavailable': 'unavailable',
    'not-installed': 'notInstalled',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ExposurePopulationStatusEnum];
  @override
  final String wireName = 'ExposurePopulationStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExposurePopulationStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExposurePopulationStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExposurePopulationStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExposurePopulation extends ExposurePopulation {
  @override
  final ExposurePopulationStatusEnum status;
  @override
  final BuiltList<Attribution>? attribution;
  @override
  final num? estimate;
  @override
  final int? epoch;
  @override
  final String? method;
  @override
  final String? note;

  factory _$ExposurePopulation([
    void Function(ExposurePopulationBuilder)? updates,
  ]) => (ExposurePopulationBuilder()..update(updates))._build();

  _$ExposurePopulation._({
    required this.status,
    this.attribution,
    this.estimate,
    this.epoch,
    this.method,
    this.note,
  }) : super._();
  @override
  ExposurePopulation rebuild(
    void Function(ExposurePopulationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExposurePopulationBuilder toBuilder() =>
      ExposurePopulationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExposurePopulation &&
        status == other.status &&
        attribution == other.attribution &&
        estimate == other.estimate &&
        epoch == other.epoch &&
        method == other.method &&
        note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, estimate.hashCode);
    _$hash = $jc(_$hash, epoch.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExposurePopulation')
          ..add('status', status)
          ..add('attribution', attribution)
          ..add('estimate', estimate)
          ..add('epoch', epoch)
          ..add('method', method)
          ..add('note', note))
        .toString();
  }
}

class ExposurePopulationBuilder
    implements Builder<ExposurePopulation, ExposurePopulationBuilder> {
  _$ExposurePopulation? _$v;

  ExposurePopulationStatusEnum? _status;
  ExposurePopulationStatusEnum? get status => _$this._status;
  set status(ExposurePopulationStatusEnum? status) => _$this._status = status;

  ListBuilder<Attribution>? _attribution;
  ListBuilder<Attribution> get attribution =>
      _$this._attribution ??= ListBuilder<Attribution>();
  set attribution(ListBuilder<Attribution>? attribution) =>
      _$this._attribution = attribution;

  num? _estimate;
  num? get estimate => _$this._estimate;
  set estimate(num? estimate) => _$this._estimate = estimate;

  int? _epoch;
  int? get epoch => _$this._epoch;
  set epoch(int? epoch) => _$this._epoch = epoch;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  ExposurePopulationBuilder() {
    ExposurePopulation._defaults(this);
  }

  ExposurePopulationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _attribution = $v.attribution?.toBuilder();
      _estimate = $v.estimate;
      _epoch = $v.epoch;
      _method = $v.method;
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExposurePopulation other) {
    _$v = other as _$ExposurePopulation;
  }

  @override
  void update(void Function(ExposurePopulationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExposurePopulation build() => _build();

  _$ExposurePopulation _build() {
    _$ExposurePopulation _$result;
    try {
      _$result =
          _$v ??
          _$ExposurePopulation._(
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'ExposurePopulation',
              'status',
            ),
            attribution: _attribution?.build(),
            estimate: estimate,
            epoch: epoch,
            method: method,
            note: note,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attribution';
        _attribution?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExposurePopulation',
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
