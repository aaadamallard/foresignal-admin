// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_records_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IngestRecordsRequestTypeEnum
_$ingestRecordsRequestTypeEnum_featureCollection =
    const IngestRecordsRequestTypeEnum._('featureCollection');

IngestRecordsRequestTypeEnum _$ingestRecordsRequestTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'featureCollection':
      return _$ingestRecordsRequestTypeEnum_featureCollection;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IngestRecordsRequestTypeEnum>
_$ingestRecordsRequestTypeEnumValues = BuiltSet<IngestRecordsRequestTypeEnum>(
  const <IngestRecordsRequestTypeEnum>[
    _$ingestRecordsRequestTypeEnum_featureCollection,
  ],
);

Serializer<IngestRecordsRequestTypeEnum>
_$ingestRecordsRequestTypeEnumSerializer =
    _$IngestRecordsRequestTypeEnumSerializer();

class _$IngestRecordsRequestTypeEnumSerializer
    implements PrimitiveSerializer<IngestRecordsRequestTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'featureCollection': 'FeatureCollection',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FeatureCollection': 'featureCollection',
  };

  @override
  final Iterable<Type> types = const <Type>[IngestRecordsRequestTypeEnum];
  @override
  final String wireName = 'IngestRecordsRequestTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    IngestRecordsRequestTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IngestRecordsRequestTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IngestRecordsRequestTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IngestRecordsRequest extends IngestRecordsRequest {
  @override
  final OneOf oneOf;

  factory _$IngestRecordsRequest([
    void Function(IngestRecordsRequestBuilder)? updates,
  ]) => (IngestRecordsRequestBuilder()..update(updates))._build();

  _$IngestRecordsRequest._({required this.oneOf}) : super._();
  @override
  IngestRecordsRequest rebuild(
    void Function(IngestRecordsRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IngestRecordsRequestBuilder toBuilder() =>
      IngestRecordsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestRecordsRequest && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'IngestRecordsRequest',
    )..add('oneOf', oneOf)).toString();
  }
}

class IngestRecordsRequestBuilder
    implements Builder<IngestRecordsRequest, IngestRecordsRequestBuilder> {
  _$IngestRecordsRequest? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  IngestRecordsRequestBuilder() {
    IngestRecordsRequest._defaults(this);
  }

  IngestRecordsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestRecordsRequest other) {
    _$v = other as _$IngestRecordsRequest;
  }

  @override
  void update(void Function(IngestRecordsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestRecordsRequest build() => _build();

  _$IngestRecordsRequest _build() {
    final _$result =
        _$v ??
        _$IngestRecordsRequest._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
            oneOf,
            r'IngestRecordsRequest',
            'oneOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
