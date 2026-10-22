// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context_summary_activity_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ContextSummaryActivityInnerTypeEnum
_$contextSummaryActivityInnerTypeEnum_alert =
    const ContextSummaryActivityInnerTypeEnum._('alert');
const ContextSummaryActivityInnerTypeEnum
_$contextSummaryActivityInnerTypeEnum_finding =
    const ContextSummaryActivityInnerTypeEnum._('finding');
const ContextSummaryActivityInnerTypeEnum
_$contextSummaryActivityInnerTypeEnum_situationChange =
    const ContextSummaryActivityInnerTypeEnum._('situationChange');
const ContextSummaryActivityInnerTypeEnum
_$contextSummaryActivityInnerTypeEnum_record =
    const ContextSummaryActivityInnerTypeEnum._('record');

ContextSummaryActivityInnerTypeEnum
_$contextSummaryActivityInnerTypeEnumValueOf(String name) {
  switch (name) {
    case 'alert':
      return _$contextSummaryActivityInnerTypeEnum_alert;
    case 'finding':
      return _$contextSummaryActivityInnerTypeEnum_finding;
    case 'situationChange':
      return _$contextSummaryActivityInnerTypeEnum_situationChange;
    case 'record':
      return _$contextSummaryActivityInnerTypeEnum_record;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ContextSummaryActivityInnerTypeEnum>
_$contextSummaryActivityInnerTypeEnumValues =
    BuiltSet<ContextSummaryActivityInnerTypeEnum>(
      const <ContextSummaryActivityInnerTypeEnum>[
        _$contextSummaryActivityInnerTypeEnum_alert,
        _$contextSummaryActivityInnerTypeEnum_finding,
        _$contextSummaryActivityInnerTypeEnum_situationChange,
        _$contextSummaryActivityInnerTypeEnum_record,
      ],
    );

Serializer<ContextSummaryActivityInnerTypeEnum>
_$contextSummaryActivityInnerTypeEnumSerializer =
    _$ContextSummaryActivityInnerTypeEnumSerializer();

class _$ContextSummaryActivityInnerTypeEnumSerializer
    implements PrimitiveSerializer<ContextSummaryActivityInnerTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'alert': 'alert',
    'finding': 'finding',
    'situationChange': 'situation-change',
    'record': 'record',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'alert': 'alert',
    'finding': 'finding',
    'situation-change': 'situationChange',
    'record': 'record',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ContextSummaryActivityInnerTypeEnum,
  ];
  @override
  final String wireName = 'ContextSummaryActivityInnerTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ContextSummaryActivityInnerTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ContextSummaryActivityInnerTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ContextSummaryActivityInnerTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ContextSummaryActivityInner extends ContextSummaryActivityInner {
  @override
  final DateTime at;
  @override
  final String ref;
  @override
  final ContextSummaryActivityInnerTypeEnum type;
  @override
  final String title;
  @override
  final String? severity;
  @override
  final String? signalFamily;

  factory _$ContextSummaryActivityInner([
    void Function(ContextSummaryActivityInnerBuilder)? updates,
  ]) => (ContextSummaryActivityInnerBuilder()..update(updates))._build();

  _$ContextSummaryActivityInner._({
    required this.at,
    required this.ref,
    required this.type,
    required this.title,
    this.severity,
    this.signalFamily,
  }) : super._();
  @override
  ContextSummaryActivityInner rebuild(
    void Function(ContextSummaryActivityInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ContextSummaryActivityInnerBuilder toBuilder() =>
      ContextSummaryActivityInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContextSummaryActivityInner &&
        at == other.at &&
        ref == other.ref &&
        type == other.type &&
        title == other.title &&
        severity == other.severity &&
        signalFamily == other.signalFamily;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, signalFamily.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContextSummaryActivityInner')
          ..add('at', at)
          ..add('ref', ref)
          ..add('type', type)
          ..add('title', title)
          ..add('severity', severity)
          ..add('signalFamily', signalFamily))
        .toString();
  }
}

class ContextSummaryActivityInnerBuilder
    implements
        Builder<
          ContextSummaryActivityInner,
          ContextSummaryActivityInnerBuilder
        > {
  _$ContextSummaryActivityInner? _$v;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  ContextSummaryActivityInnerTypeEnum? _type;
  ContextSummaryActivityInnerTypeEnum? get type => _$this._type;
  set type(ContextSummaryActivityInnerTypeEnum? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _severity;
  String? get severity => _$this._severity;
  set severity(String? severity) => _$this._severity = severity;

  String? _signalFamily;
  String? get signalFamily => _$this._signalFamily;
  set signalFamily(String? signalFamily) => _$this._signalFamily = signalFamily;

  ContextSummaryActivityInnerBuilder() {
    ContextSummaryActivityInner._defaults(this);
  }

  ContextSummaryActivityInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _at = $v.at;
      _ref = $v.ref;
      _type = $v.type;
      _title = $v.title;
      _severity = $v.severity;
      _signalFamily = $v.signalFamily;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContextSummaryActivityInner other) {
    _$v = other as _$ContextSummaryActivityInner;
  }

  @override
  void update(void Function(ContextSummaryActivityInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContextSummaryActivityInner build() => _build();

  _$ContextSummaryActivityInner _build() {
    final _$result =
        _$v ??
        _$ContextSummaryActivityInner._(
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'ContextSummaryActivityInner',
            'at',
          ),
          ref: BuiltValueNullFieldError.checkNotNull(
            ref,
            r'ContextSummaryActivityInner',
            'ref',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'ContextSummaryActivityInner',
            'type',
          ),
          title: BuiltValueNullFieldError.checkNotNull(
            title,
            r'ContextSummaryActivityInner',
            'title',
          ),
          severity: severity,
          signalFamily: signalFamily,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
