// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_gap_recommendations_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CollectionGapRecommendationsInnerTypeEnum
_$collectionGapRecommendationsInnerTypeEnum_enableSource =
    const CollectionGapRecommendationsInnerTypeEnum._('enableSource');
const CollectionGapRecommendationsInnerTypeEnum
_$collectionGapRecommendationsInnerTypeEnum_addReceiver =
    const CollectionGapRecommendationsInnerTypeEnum._('addReceiver');
const CollectionGapRecommendationsInnerTypeEnum
_$collectionGapRecommendationsInnerTypeEnum_addSensor =
    const CollectionGapRecommendationsInnerTypeEnum._('addSensor');
const CollectionGapRecommendationsInnerTypeEnum
_$collectionGapRecommendationsInnerTypeEnum_none =
    const CollectionGapRecommendationsInnerTypeEnum._('none');
const CollectionGapRecommendationsInnerTypeEnum
_$collectionGapRecommendationsInnerTypeEnum_unknownDefaultOpenApi =
    const CollectionGapRecommendationsInnerTypeEnum._('unknownDefaultOpenApi');

CollectionGapRecommendationsInnerTypeEnum
_$collectionGapRecommendationsInnerTypeEnumValueOf(String name) {
  switch (name) {
    case 'enableSource':
      return _$collectionGapRecommendationsInnerTypeEnum_enableSource;
    case 'addReceiver':
      return _$collectionGapRecommendationsInnerTypeEnum_addReceiver;
    case 'addSensor':
      return _$collectionGapRecommendationsInnerTypeEnum_addSensor;
    case 'none':
      return _$collectionGapRecommendationsInnerTypeEnum_none;
    case 'unknownDefaultOpenApi':
      return _$collectionGapRecommendationsInnerTypeEnum_unknownDefaultOpenApi;
    default:
      return _$collectionGapRecommendationsInnerTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CollectionGapRecommendationsInnerTypeEnum>
_$collectionGapRecommendationsInnerTypeEnumValues =
    BuiltSet<CollectionGapRecommendationsInnerTypeEnum>(
      const <CollectionGapRecommendationsInnerTypeEnum>[
        _$collectionGapRecommendationsInnerTypeEnum_enableSource,
        _$collectionGapRecommendationsInnerTypeEnum_addReceiver,
        _$collectionGapRecommendationsInnerTypeEnum_addSensor,
        _$collectionGapRecommendationsInnerTypeEnum_none,
        _$collectionGapRecommendationsInnerTypeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<CollectionGapRecommendationsInnerTypeEnum>
_$collectionGapRecommendationsInnerTypeEnumSerializer =
    _$CollectionGapRecommendationsInnerTypeEnumSerializer();

class _$CollectionGapRecommendationsInnerTypeEnumSerializer
    implements PrimitiveSerializer<CollectionGapRecommendationsInnerTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'enableSource': 'enable-source',
    'addReceiver': 'add-receiver',
    'addSensor': 'add-sensor',
    'none': 'none',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'enable-source': 'enableSource',
    'add-receiver': 'addReceiver',
    'add-sensor': 'addSensor',
    'none': 'none',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CollectionGapRecommendationsInnerTypeEnum,
  ];
  @override
  final String wireName = 'CollectionGapRecommendationsInnerTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    CollectionGapRecommendationsInnerTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CollectionGapRecommendationsInnerTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CollectionGapRecommendationsInnerTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CollectionGapRecommendationsInner
    extends CollectionGapRecommendationsInner {
  @override
  final CollectionGapRecommendationsInnerTypeEnum type;
  @override
  final String? sourceId;
  @override
  final String? sensorFamily;
  @override
  final String text;

  factory _$CollectionGapRecommendationsInner([
    void Function(CollectionGapRecommendationsInnerBuilder)? updates,
  ]) => (CollectionGapRecommendationsInnerBuilder()..update(updates))._build();

  _$CollectionGapRecommendationsInner._({
    required this.type,
    this.sourceId,
    this.sensorFamily,
    required this.text,
  }) : super._();
  @override
  CollectionGapRecommendationsInner rebuild(
    void Function(CollectionGapRecommendationsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CollectionGapRecommendationsInnerBuilder toBuilder() =>
      CollectionGapRecommendationsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionGapRecommendationsInner &&
        type == other.type &&
        sourceId == other.sourceId &&
        sensorFamily == other.sensorFamily &&
        text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, sensorFamily.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollectionGapRecommendationsInner')
          ..add('type', type)
          ..add('sourceId', sourceId)
          ..add('sensorFamily', sensorFamily)
          ..add('text', text))
        .toString();
  }
}

class CollectionGapRecommendationsInnerBuilder
    implements
        Builder<
          CollectionGapRecommendationsInner,
          CollectionGapRecommendationsInnerBuilder
        > {
  _$CollectionGapRecommendationsInner? _$v;

  CollectionGapRecommendationsInnerTypeEnum? _type;
  CollectionGapRecommendationsInnerTypeEnum? get type => _$this._type;
  set type(CollectionGapRecommendationsInnerTypeEnum? type) =>
      _$this._type = type;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _sensorFamily;
  String? get sensorFamily => _$this._sensorFamily;
  set sensorFamily(String? sensorFamily) => _$this._sensorFamily = sensorFamily;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  CollectionGapRecommendationsInnerBuilder() {
    CollectionGapRecommendationsInner._defaults(this);
  }

  CollectionGapRecommendationsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _sourceId = $v.sourceId;
      _sensorFamily = $v.sensorFamily;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionGapRecommendationsInner other) {
    _$v = other as _$CollectionGapRecommendationsInner;
  }

  @override
  void update(
    void Function(CollectionGapRecommendationsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CollectionGapRecommendationsInner build() => _build();

  _$CollectionGapRecommendationsInner _build() {
    final _$result =
        _$v ??
        _$CollectionGapRecommendationsInner._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'CollectionGapRecommendationsInner',
            'type',
          ),
          sourceId: sourceId,
          sensorFamily: sensorFamily,
          text: BuiltValueNullFieldError.checkNotNull(
            text,
            r'CollectionGapRecommendationsInner',
            'text',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
