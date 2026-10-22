// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_settings_attention_gap.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialSettingsAttentionGapMinSeverityEnum
_$socialSettingsAttentionGapMinSeverityEnum_notable =
    const SocialSettingsAttentionGapMinSeverityEnum._('notable');
const SocialSettingsAttentionGapMinSeverityEnum
_$socialSettingsAttentionGapMinSeverityEnum_significant =
    const SocialSettingsAttentionGapMinSeverityEnum._('significant');

SocialSettingsAttentionGapMinSeverityEnum
_$socialSettingsAttentionGapMinSeverityEnumValueOf(String name) {
  switch (name) {
    case 'notable':
      return _$socialSettingsAttentionGapMinSeverityEnum_notable;
    case 'significant':
      return _$socialSettingsAttentionGapMinSeverityEnum_significant;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SocialSettingsAttentionGapMinSeverityEnum>
_$socialSettingsAttentionGapMinSeverityEnumValues =
    BuiltSet<SocialSettingsAttentionGapMinSeverityEnum>(
      const <SocialSettingsAttentionGapMinSeverityEnum>[
        _$socialSettingsAttentionGapMinSeverityEnum_notable,
        _$socialSettingsAttentionGapMinSeverityEnum_significant,
      ],
    );

Serializer<SocialSettingsAttentionGapMinSeverityEnum>
_$socialSettingsAttentionGapMinSeverityEnumSerializer =
    _$SocialSettingsAttentionGapMinSeverityEnumSerializer();

class _$SocialSettingsAttentionGapMinSeverityEnumSerializer
    implements PrimitiveSerializer<SocialSettingsAttentionGapMinSeverityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'notable': 'notable',
    'significant': 'significant',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'notable': 'notable',
    'significant': 'significant',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SocialSettingsAttentionGapMinSeverityEnum,
  ];
  @override
  final String wireName = 'SocialSettingsAttentionGapMinSeverityEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialSettingsAttentionGapMinSeverityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialSettingsAttentionGapMinSeverityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialSettingsAttentionGapMinSeverityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialSettingsAttentionGap extends SocialSettingsAttentionGap {
  @override
  final SocialSettingsAttentionGapMinSeverityEnum? minSeverity;
  @override
  final num? percentile;
  @override
  final int? lookbackDays;
  @override
  final int? windowHours;

  factory _$SocialSettingsAttentionGap([
    void Function(SocialSettingsAttentionGapBuilder)? updates,
  ]) => (SocialSettingsAttentionGapBuilder()..update(updates))._build();

  _$SocialSettingsAttentionGap._({
    this.minSeverity,
    this.percentile,
    this.lookbackDays,
    this.windowHours,
  }) : super._();
  @override
  SocialSettingsAttentionGap rebuild(
    void Function(SocialSettingsAttentionGapBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialSettingsAttentionGapBuilder toBuilder() =>
      SocialSettingsAttentionGapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialSettingsAttentionGap &&
        minSeverity == other.minSeverity &&
        percentile == other.percentile &&
        lookbackDays == other.lookbackDays &&
        windowHours == other.windowHours;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minSeverity.hashCode);
    _$hash = $jc(_$hash, percentile.hashCode);
    _$hash = $jc(_$hash, lookbackDays.hashCode);
    _$hash = $jc(_$hash, windowHours.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialSettingsAttentionGap')
          ..add('minSeverity', minSeverity)
          ..add('percentile', percentile)
          ..add('lookbackDays', lookbackDays)
          ..add('windowHours', windowHours))
        .toString();
  }
}

class SocialSettingsAttentionGapBuilder
    implements
        Builder<SocialSettingsAttentionGap, SocialSettingsAttentionGapBuilder> {
  _$SocialSettingsAttentionGap? _$v;

  SocialSettingsAttentionGapMinSeverityEnum? _minSeverity;
  SocialSettingsAttentionGapMinSeverityEnum? get minSeverity =>
      _$this._minSeverity;
  set minSeverity(SocialSettingsAttentionGapMinSeverityEnum? minSeverity) =>
      _$this._minSeverity = minSeverity;

  num? _percentile;
  num? get percentile => _$this._percentile;
  set percentile(num? percentile) => _$this._percentile = percentile;

  int? _lookbackDays;
  int? get lookbackDays => _$this._lookbackDays;
  set lookbackDays(int? lookbackDays) => _$this._lookbackDays = lookbackDays;

  int? _windowHours;
  int? get windowHours => _$this._windowHours;
  set windowHours(int? windowHours) => _$this._windowHours = windowHours;

  SocialSettingsAttentionGapBuilder() {
    SocialSettingsAttentionGap._defaults(this);
  }

  SocialSettingsAttentionGapBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minSeverity = $v.minSeverity;
      _percentile = $v.percentile;
      _lookbackDays = $v.lookbackDays;
      _windowHours = $v.windowHours;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialSettingsAttentionGap other) {
    _$v = other as _$SocialSettingsAttentionGap;
  }

  @override
  void update(void Function(SocialSettingsAttentionGapBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialSettingsAttentionGap build() => _build();

  _$SocialSettingsAttentionGap _build() {
    final _$result =
        _$v ??
        _$SocialSettingsAttentionGap._(
          minSeverity: minSeverity,
          percentile: percentile,
          lookbackDays: lookbackDays,
          windowHours: windowHours,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
