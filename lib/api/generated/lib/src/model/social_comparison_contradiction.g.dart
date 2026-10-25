// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_comparison_contradiction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialComparisonContradictionReasonEnum
_$socialComparisonContradictionReasonEnum_negatingRecord =
    const SocialComparisonContradictionReasonEnum._('negatingRecord');
const SocialComparisonContradictionReasonEnum
_$socialComparisonContradictionReasonEnum_mediaReuse =
    const SocialComparisonContradictionReasonEnum._('mediaReuse');
const SocialComparisonContradictionReasonEnum
_$socialComparisonContradictionReasonEnum_unknownDefaultOpenApi =
    const SocialComparisonContradictionReasonEnum._('unknownDefaultOpenApi');

SocialComparisonContradictionReasonEnum
_$socialComparisonContradictionReasonEnumValueOf(String name) {
  switch (name) {
    case 'negatingRecord':
      return _$socialComparisonContradictionReasonEnum_negatingRecord;
    case 'mediaReuse':
      return _$socialComparisonContradictionReasonEnum_mediaReuse;
    case 'unknownDefaultOpenApi':
      return _$socialComparisonContradictionReasonEnum_unknownDefaultOpenApi;
    default:
      return _$socialComparisonContradictionReasonEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SocialComparisonContradictionReasonEnum>
_$socialComparisonContradictionReasonEnumValues =
    BuiltSet<SocialComparisonContradictionReasonEnum>(
      const <SocialComparisonContradictionReasonEnum>[
        _$socialComparisonContradictionReasonEnum_negatingRecord,
        _$socialComparisonContradictionReasonEnum_mediaReuse,
        _$socialComparisonContradictionReasonEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<SocialComparisonContradictionReasonEnum>
_$socialComparisonContradictionReasonEnumSerializer =
    _$SocialComparisonContradictionReasonEnumSerializer();

class _$SocialComparisonContradictionReasonEnumSerializer
    implements PrimitiveSerializer<SocialComparisonContradictionReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'negatingRecord': 'negating-record',
    'mediaReuse': 'media-reuse',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'negating-record': 'negatingRecord',
    'media-reuse': 'mediaReuse',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SocialComparisonContradictionReasonEnum,
  ];
  @override
  final String wireName = 'SocialComparisonContradictionReasonEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialComparisonContradictionReasonEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialComparisonContradictionReasonEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialComparisonContradictionReasonEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialComparisonContradiction extends SocialComparisonContradiction {
  @override
  final SocialComparisonContradictionReasonEnum reason;
  @override
  final String ref;

  factory _$SocialComparisonContradiction([
    void Function(SocialComparisonContradictionBuilder)? updates,
  ]) => (SocialComparisonContradictionBuilder()..update(updates))._build();

  _$SocialComparisonContradiction._({required this.reason, required this.ref})
    : super._();
  @override
  SocialComparisonContradiction rebuild(
    void Function(SocialComparisonContradictionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialComparisonContradictionBuilder toBuilder() =>
      SocialComparisonContradictionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialComparisonContradiction &&
        reason == other.reason &&
        ref == other.ref;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialComparisonContradiction')
          ..add('reason', reason)
          ..add('ref', ref))
        .toString();
  }
}

class SocialComparisonContradictionBuilder
    implements
        Builder<
          SocialComparisonContradiction,
          SocialComparisonContradictionBuilder
        > {
  _$SocialComparisonContradiction? _$v;

  SocialComparisonContradictionReasonEnum? _reason;
  SocialComparisonContradictionReasonEnum? get reason => _$this._reason;
  set reason(SocialComparisonContradictionReasonEnum? reason) =>
      _$this._reason = reason;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  SocialComparisonContradictionBuilder() {
    SocialComparisonContradiction._defaults(this);
  }

  SocialComparisonContradictionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _ref = $v.ref;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialComparisonContradiction other) {
    _$v = other as _$SocialComparisonContradiction;
  }

  @override
  void update(void Function(SocialComparisonContradictionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialComparisonContradiction build() => _build();

  _$SocialComparisonContradiction _build() {
    final _$result =
        _$v ??
        _$SocialComparisonContradiction._(
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'SocialComparisonContradiction',
            'reason',
          ),
          ref: BuiltValueNullFieldError.checkNotNull(
            ref,
            r'SocialComparisonContradiction',
            'ref',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
