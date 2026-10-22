// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_external_stream_selector.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChronicleExternalStreamSelectorTypeEnum
    _$chronicleExternalStreamSelectorTypeEnum_externalStream =
    const ChronicleExternalStreamSelectorTypeEnum._('externalStream');

ChronicleExternalStreamSelectorTypeEnum
    _$chronicleExternalStreamSelectorTypeEnumValueOf(String name) {
  switch (name) {
    case 'externalStream':
      return _$chronicleExternalStreamSelectorTypeEnum_externalStream;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChronicleExternalStreamSelectorTypeEnum>
    _$chronicleExternalStreamSelectorTypeEnumValues = BuiltSet<
        ChronicleExternalStreamSelectorTypeEnum>(const <ChronicleExternalStreamSelectorTypeEnum>[
  _$chronicleExternalStreamSelectorTypeEnum_externalStream,
]);

Serializer<ChronicleExternalStreamSelectorTypeEnum>
    _$chronicleExternalStreamSelectorTypeEnumSerializer =
    _$ChronicleExternalStreamSelectorTypeEnumSerializer();

class _$ChronicleExternalStreamSelectorTypeEnumSerializer
    implements PrimitiveSerializer<ChronicleExternalStreamSelectorTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'externalStream': 'external-stream',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'external-stream': 'externalStream',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChronicleExternalStreamSelectorTypeEnum
  ];
  @override
  final String wireName = 'ChronicleExternalStreamSelectorTypeEnum';

  @override
  Object serialize(Serializers serializers,
          ChronicleExternalStreamSelectorTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChronicleExternalStreamSelectorTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChronicleExternalStreamSelectorTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChronicleExternalStreamSelector
    extends ChronicleExternalStreamSelector {
  @override
  final ChronicleExternalStreamSelectorTypeEnum type;
  @override
  final String sourceId;
  @override
  final String streamId;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>>? filter;

  factory _$ChronicleExternalStreamSelector(
          [void Function(ChronicleExternalStreamSelectorBuilder)? updates]) =>
      (ChronicleExternalStreamSelectorBuilder()..update(updates))._build();

  _$ChronicleExternalStreamSelector._(
      {required this.type,
      required this.sourceId,
      required this.streamId,
      this.filter})
      : super._();
  @override
  ChronicleExternalStreamSelector rebuild(
          void Function(ChronicleExternalStreamSelectorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleExternalStreamSelectorBuilder toBuilder() =>
      ChronicleExternalStreamSelectorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleExternalStreamSelector &&
        type == other.type &&
        sourceId == other.sourceId &&
        streamId == other.streamId &&
        filter == other.filter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, streamId.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleExternalStreamSelector')
          ..add('type', type)
          ..add('sourceId', sourceId)
          ..add('streamId', streamId)
          ..add('filter', filter))
        .toString();
  }
}

class ChronicleExternalStreamSelectorBuilder
    implements
        Builder<ChronicleExternalStreamSelector,
            ChronicleExternalStreamSelectorBuilder> {
  _$ChronicleExternalStreamSelector? _$v;

  ChronicleExternalStreamSelectorTypeEnum? _type;
  ChronicleExternalStreamSelectorTypeEnum? get type => _$this._type;
  set type(ChronicleExternalStreamSelectorTypeEnum? type) =>
      _$this._type = type;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _streamId;
  String? get streamId => _$this._streamId;
  set streamId(String? streamId) => _$this._streamId = streamId;

  ListBuilder<BuiltMap<String, JsonObject?>>? _filter;
  ListBuilder<BuiltMap<String, JsonObject?>> get filter =>
      _$this._filter ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set filter(ListBuilder<BuiltMap<String, JsonObject?>>? filter) =>
      _$this._filter = filter;

  ChronicleExternalStreamSelectorBuilder() {
    ChronicleExternalStreamSelector._defaults(this);
  }

  ChronicleExternalStreamSelectorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _sourceId = $v.sourceId;
      _streamId = $v.streamId;
      _filter = $v.filter?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleExternalStreamSelector other) {
    _$v = other as _$ChronicleExternalStreamSelector;
  }

  @override
  void update(void Function(ChronicleExternalStreamSelectorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleExternalStreamSelector build() => _build();

  _$ChronicleExternalStreamSelector _build() {
    _$ChronicleExternalStreamSelector _$result;
    try {
      _$result = _$v ??
          _$ChronicleExternalStreamSelector._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ChronicleExternalStreamSelector', 'type'),
            sourceId: BuiltValueNullFieldError.checkNotNull(
                sourceId, r'ChronicleExternalStreamSelector', 'sourceId'),
            streamId: BuiltValueNullFieldError.checkNotNull(
                streamId, r'ChronicleExternalStreamSelector', 'streamId'),
            filter: _filter?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filter';
        _filter?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChronicleExternalStreamSelector', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
