// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlook_window.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OutlookWindowStatusEnum _$outlookWindowStatusEnum_open =
    const OutlookWindowStatusEnum._('open');
const OutlookWindowStatusEnum _$outlookWindowStatusEnum_resolved =
    const OutlookWindowStatusEnum._('resolved');
const OutlookWindowStatusEnum _$outlookWindowStatusEnum_annulled =
    const OutlookWindowStatusEnum._('annulled');

OutlookWindowStatusEnum _$outlookWindowStatusEnumValueOf(String name) {
  switch (name) {
    case 'open':
      return _$outlookWindowStatusEnum_open;
    case 'resolved':
      return _$outlookWindowStatusEnum_resolved;
    case 'annulled':
      return _$outlookWindowStatusEnum_annulled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OutlookWindowStatusEnum> _$outlookWindowStatusEnumValues =
    BuiltSet<OutlookWindowStatusEnum>(const <OutlookWindowStatusEnum>[
  _$outlookWindowStatusEnum_open,
  _$outlookWindowStatusEnum_resolved,
  _$outlookWindowStatusEnum_annulled,
]);

const OutlookWindowExceedanceEnum _$outlookWindowExceedanceEnum_aboveP95 =
    const OutlookWindowExceedanceEnum._('aboveP95');
const OutlookWindowExceedanceEnum _$outlookWindowExceedanceEnum_belowP05 =
    const OutlookWindowExceedanceEnum._('belowP05');

OutlookWindowExceedanceEnum _$outlookWindowExceedanceEnumValueOf(String name) {
  switch (name) {
    case 'aboveP95':
      return _$outlookWindowExceedanceEnum_aboveP95;
    case 'belowP05':
      return _$outlookWindowExceedanceEnum_belowP05;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OutlookWindowExceedanceEnum>
    _$outlookWindowExceedanceEnumValues =
    BuiltSet<OutlookWindowExceedanceEnum>(const <OutlookWindowExceedanceEnum>[
  _$outlookWindowExceedanceEnum_aboveP95,
  _$outlookWindowExceedanceEnum_belowP05,
]);

Serializer<OutlookWindowStatusEnum> _$outlookWindowStatusEnumSerializer =
    _$OutlookWindowStatusEnumSerializer();
Serializer<OutlookWindowExceedanceEnum>
    _$outlookWindowExceedanceEnumSerializer =
    _$OutlookWindowExceedanceEnumSerializer();

class _$OutlookWindowStatusEnumSerializer
    implements PrimitiveSerializer<OutlookWindowStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'open': 'open',
    'resolved': 'resolved',
    'annulled': 'annulled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'open': 'open',
    'resolved': 'resolved',
    'annulled': 'annulled',
  };

  @override
  final Iterable<Type> types = const <Type>[OutlookWindowStatusEnum];
  @override
  final String wireName = 'OutlookWindowStatusEnum';

  @override
  Object serialize(Serializers serializers, OutlookWindowStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OutlookWindowStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OutlookWindowStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OutlookWindowExceedanceEnumSerializer
    implements PrimitiveSerializer<OutlookWindowExceedanceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'aboveP95': 'above-p95',
    'belowP05': 'below-p05',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'above-p95': 'aboveP95',
    'below-p05': 'belowP05',
  };

  @override
  final Iterable<Type> types = const <Type>[OutlookWindowExceedanceEnum];
  @override
  final String wireName = 'OutlookWindowExceedanceEnum';

  @override
  Object serialize(Serializers serializers, OutlookWindowExceedanceEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OutlookWindowExceedanceEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OutlookWindowExceedanceEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OutlookWindow extends OutlookWindow {
  @override
  final int index;
  @override
  final Date windowStart;
  @override
  final Date windowEnd;
  @override
  final Quantiles quantiles;
  @override
  final String? questionId;
  @override
  final OutlookWindowStatusEnum status;
  @override
  final int? actual;
  @override
  final bool? withinP10P90;
  @override
  final OutlookWindowExceedanceEnum? exceedance;

  factory _$OutlookWindow([void Function(OutlookWindowBuilder)? updates]) =>
      (OutlookWindowBuilder()..update(updates))._build();

  _$OutlookWindow._(
      {required this.index,
      required this.windowStart,
      required this.windowEnd,
      required this.quantiles,
      this.questionId,
      required this.status,
      this.actual,
      this.withinP10P90,
      this.exceedance})
      : super._();
  @override
  OutlookWindow rebuild(void Function(OutlookWindowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OutlookWindowBuilder toBuilder() => OutlookWindowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OutlookWindow &&
        index == other.index &&
        windowStart == other.windowStart &&
        windowEnd == other.windowEnd &&
        quantiles == other.quantiles &&
        questionId == other.questionId &&
        status == other.status &&
        actual == other.actual &&
        withinP10P90 == other.withinP10P90 &&
        exceedance == other.exceedance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, windowStart.hashCode);
    _$hash = $jc(_$hash, windowEnd.hashCode);
    _$hash = $jc(_$hash, quantiles.hashCode);
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, actual.hashCode);
    _$hash = $jc(_$hash, withinP10P90.hashCode);
    _$hash = $jc(_$hash, exceedance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OutlookWindow')
          ..add('index', index)
          ..add('windowStart', windowStart)
          ..add('windowEnd', windowEnd)
          ..add('quantiles', quantiles)
          ..add('questionId', questionId)
          ..add('status', status)
          ..add('actual', actual)
          ..add('withinP10P90', withinP10P90)
          ..add('exceedance', exceedance))
        .toString();
  }
}

class OutlookWindowBuilder
    implements Builder<OutlookWindow, OutlookWindowBuilder> {
  _$OutlookWindow? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  Date? _windowStart;
  Date? get windowStart => _$this._windowStart;
  set windowStart(Date? windowStart) => _$this._windowStart = windowStart;

  Date? _windowEnd;
  Date? get windowEnd => _$this._windowEnd;
  set windowEnd(Date? windowEnd) => _$this._windowEnd = windowEnd;

  QuantilesBuilder? _quantiles;
  QuantilesBuilder get quantiles => _$this._quantiles ??= QuantilesBuilder();
  set quantiles(QuantilesBuilder? quantiles) => _$this._quantiles = quantiles;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  OutlookWindowStatusEnum? _status;
  OutlookWindowStatusEnum? get status => _$this._status;
  set status(OutlookWindowStatusEnum? status) => _$this._status = status;

  int? _actual;
  int? get actual => _$this._actual;
  set actual(int? actual) => _$this._actual = actual;

  bool? _withinP10P90;
  bool? get withinP10P90 => _$this._withinP10P90;
  set withinP10P90(bool? withinP10P90) => _$this._withinP10P90 = withinP10P90;

  OutlookWindowExceedanceEnum? _exceedance;
  OutlookWindowExceedanceEnum? get exceedance => _$this._exceedance;
  set exceedance(OutlookWindowExceedanceEnum? exceedance) =>
      _$this._exceedance = exceedance;

  OutlookWindowBuilder() {
    OutlookWindow._defaults(this);
  }

  OutlookWindowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _windowStart = $v.windowStart;
      _windowEnd = $v.windowEnd;
      _quantiles = $v.quantiles.toBuilder();
      _questionId = $v.questionId;
      _status = $v.status;
      _actual = $v.actual;
      _withinP10P90 = $v.withinP10P90;
      _exceedance = $v.exceedance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OutlookWindow other) {
    _$v = other as _$OutlookWindow;
  }

  @override
  void update(void Function(OutlookWindowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OutlookWindow build() => _build();

  _$OutlookWindow _build() {
    _$OutlookWindow _$result;
    try {
      _$result = _$v ??
          _$OutlookWindow._(
            index: BuiltValueNullFieldError.checkNotNull(
                index, r'OutlookWindow', 'index'),
            windowStart: BuiltValueNullFieldError.checkNotNull(
                windowStart, r'OutlookWindow', 'windowStart'),
            windowEnd: BuiltValueNullFieldError.checkNotNull(
                windowEnd, r'OutlookWindow', 'windowEnd'),
            quantiles: quantiles.build(),
            questionId: questionId,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'OutlookWindow', 'status'),
            actual: actual,
            withinP10P90: withinP10P90,
            exceedance: exceedance,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'quantiles';
        quantiles.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OutlookWindow', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
