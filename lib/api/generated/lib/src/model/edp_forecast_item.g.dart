// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_forecast_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpForecastItemTypeEnum _$edpForecastItemTypeEnum_forecast =
    const EdpForecastItemTypeEnum._('forecast');
const EdpForecastItemTypeEnum _$edpForecastItemTypeEnum_unknownDefaultOpenApi =
    const EdpForecastItemTypeEnum._('unknownDefaultOpenApi');

EdpForecastItemTypeEnum _$edpForecastItemTypeEnumValueOf(String name) {
  switch (name) {
    case 'forecast':
      return _$edpForecastItemTypeEnum_forecast;
    case 'unknownDefaultOpenApi':
      return _$edpForecastItemTypeEnum_unknownDefaultOpenApi;
    default:
      return _$edpForecastItemTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<EdpForecastItemTypeEnum> _$edpForecastItemTypeEnumValues =
    BuiltSet<EdpForecastItemTypeEnum>(const <EdpForecastItemTypeEnum>[
      _$edpForecastItemTypeEnum_forecast,
      _$edpForecastItemTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<EdpForecastItemTypeEnum> _$edpForecastItemTypeEnumSerializer =
    _$EdpForecastItemTypeEnumSerializer();

class _$EdpForecastItemTypeEnumSerializer
    implements PrimitiveSerializer<EdpForecastItemTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'forecast': 'forecast',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'forecast': 'forecast',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpForecastItemTypeEnum];
  @override
  final String wireName = 'EdpForecastItemTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    EdpForecastItemTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EdpForecastItemTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EdpForecastItemTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EdpForecastItem extends EdpForecastItem {
  @override
  final String stream;
  @override
  final EdpForecastItemTypeEnum type;
  @override
  final String id;
  @override
  final DateTime? observedAt;
  @override
  final BuiltMap<String, JsonObject?>? properties;
  @override
  final EdpForecastItemQuestion? question;
  @override
  final String? questionRef;
  @override
  final num? probability;
  @override
  final Quantiles? quantiles;
  @override
  final DateTime madeAt;
  @override
  final EdpOrigin? origin;

  factory _$EdpForecastItem([void Function(EdpForecastItemBuilder)? updates]) =>
      (EdpForecastItemBuilder()..update(updates))._build();

  _$EdpForecastItem._({
    required this.stream,
    required this.type,
    required this.id,
    this.observedAt,
    this.properties,
    this.question,
    this.questionRef,
    this.probability,
    this.quantiles,
    required this.madeAt,
    this.origin,
  }) : super._();
  @override
  EdpForecastItem rebuild(void Function(EdpForecastItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpForecastItemBuilder toBuilder() => EdpForecastItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpForecastItem &&
        stream == other.stream &&
        type == other.type &&
        id == other.id &&
        observedAt == other.observedAt &&
        properties == other.properties &&
        question == other.question &&
        questionRef == other.questionRef &&
        probability == other.probability &&
        quantiles == other.quantiles &&
        madeAt == other.madeAt &&
        origin == other.origin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stream.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, questionRef.hashCode);
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, quantiles.hashCode);
    _$hash = $jc(_$hash, madeAt.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpForecastItem')
          ..add('stream', stream)
          ..add('type', type)
          ..add('id', id)
          ..add('observedAt', observedAt)
          ..add('properties', properties)
          ..add('question', question)
          ..add('questionRef', questionRef)
          ..add('probability', probability)
          ..add('quantiles', quantiles)
          ..add('madeAt', madeAt)
          ..add('origin', origin))
        .toString();
  }
}

class EdpForecastItemBuilder
    implements Builder<EdpForecastItem, EdpForecastItemBuilder> {
  _$EdpForecastItem? _$v;

  String? _stream;
  String? get stream => _$this._stream;
  set stream(String? stream) => _$this._stream = stream;

  EdpForecastItemTypeEnum? _type;
  EdpForecastItemTypeEnum? get type => _$this._type;
  set type(EdpForecastItemTypeEnum? type) => _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  MapBuilder<String, JsonObject?>? _properties;
  MapBuilder<String, JsonObject?> get properties =>
      _$this._properties ??= MapBuilder<String, JsonObject?>();
  set properties(MapBuilder<String, JsonObject?>? properties) =>
      _$this._properties = properties;

  EdpForecastItemQuestionBuilder? _question;
  EdpForecastItemQuestionBuilder get question =>
      _$this._question ??= EdpForecastItemQuestionBuilder();
  set question(EdpForecastItemQuestionBuilder? question) =>
      _$this._question = question;

  String? _questionRef;
  String? get questionRef => _$this._questionRef;
  set questionRef(String? questionRef) => _$this._questionRef = questionRef;

  num? _probability;
  num? get probability => _$this._probability;
  set probability(num? probability) => _$this._probability = probability;

  QuantilesBuilder? _quantiles;
  QuantilesBuilder get quantiles => _$this._quantiles ??= QuantilesBuilder();
  set quantiles(QuantilesBuilder? quantiles) => _$this._quantiles = quantiles;

  DateTime? _madeAt;
  DateTime? get madeAt => _$this._madeAt;
  set madeAt(DateTime? madeAt) => _$this._madeAt = madeAt;

  EdpOriginBuilder? _origin;
  EdpOriginBuilder get origin => _$this._origin ??= EdpOriginBuilder();
  set origin(EdpOriginBuilder? origin) => _$this._origin = origin;

  EdpForecastItemBuilder() {
    EdpForecastItem._defaults(this);
  }

  EdpForecastItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stream = $v.stream;
      _type = $v.type;
      _id = $v.id;
      _observedAt = $v.observedAt;
      _properties = $v.properties?.toBuilder();
      _question = $v.question?.toBuilder();
      _questionRef = $v.questionRef;
      _probability = $v.probability;
      _quantiles = $v.quantiles?.toBuilder();
      _madeAt = $v.madeAt;
      _origin = $v.origin?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpForecastItem other) {
    _$v = other as _$EdpForecastItem;
  }

  @override
  void update(void Function(EdpForecastItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpForecastItem build() => _build();

  _$EdpForecastItem _build() {
    _$EdpForecastItem _$result;
    try {
      _$result =
          _$v ??
          _$EdpForecastItem._(
            stream: BuiltValueNullFieldError.checkNotNull(
              stream,
              r'EdpForecastItem',
              'stream',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EdpForecastItem',
              'type',
            ),
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'EdpForecastItem',
              'id',
            ),
            observedAt: observedAt,
            properties: _properties?.build(),
            question: _question?.build(),
            questionRef: questionRef,
            probability: probability,
            quantiles: _quantiles?.build(),
            madeAt: BuiltValueNullFieldError.checkNotNull(
              madeAt,
              r'EdpForecastItem',
              'madeAt',
            ),
            origin: _origin?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'properties';
        _properties?.build();
        _$failedField = 'question';
        _question?.build();

        _$failedField = 'quantiles';
        _quantiles?.build();

        _$failedField = 'origin';
        _origin?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdpForecastItem',
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
