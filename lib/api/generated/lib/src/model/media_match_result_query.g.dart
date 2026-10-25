// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_match_result_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MediaMatchResultQuerySource_Enum
_$mediaMatchResultQuerySourceEnum_upload =
    const MediaMatchResultQuerySource_Enum._('upload');
const MediaMatchResultQuerySource_Enum _$mediaMatchResultQuerySourceEnum_pdq =
    const MediaMatchResultQuerySource_Enum._('pdq');
const MediaMatchResultQuerySource_Enum
_$mediaMatchResultQuerySourceEnum_unknownDefaultOpenApi =
    const MediaMatchResultQuerySource_Enum._('unknownDefaultOpenApi');

MediaMatchResultQuerySource_Enum _$mediaMatchResultQuerySourceEnumValueOf(
  String name,
) {
  switch (name) {
    case 'upload':
      return _$mediaMatchResultQuerySourceEnum_upload;
    case 'pdq':
      return _$mediaMatchResultQuerySourceEnum_pdq;
    case 'unknownDefaultOpenApi':
      return _$mediaMatchResultQuerySourceEnum_unknownDefaultOpenApi;
    default:
      return _$mediaMatchResultQuerySourceEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<MediaMatchResultQuerySource_Enum>
_$mediaMatchResultQuerySourceEnumValues =
    BuiltSet<MediaMatchResultQuerySource_Enum>(
      const <MediaMatchResultQuerySource_Enum>[
        _$mediaMatchResultQuerySourceEnum_upload,
        _$mediaMatchResultQuerySourceEnum_pdq,
        _$mediaMatchResultQuerySourceEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<MediaMatchResultQuerySource_Enum>
_$mediaMatchResultQuerySourceEnumSerializer =
    _$MediaMatchResultQuerySource_EnumSerializer();

class _$MediaMatchResultQuerySource_EnumSerializer
    implements PrimitiveSerializer<MediaMatchResultQuerySource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'upload': 'upload',
    'pdq': 'pdq',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'upload': 'upload',
    'pdq': 'pdq',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MediaMatchResultQuerySource_Enum];
  @override
  final String wireName = 'MediaMatchResultQuerySource_Enum';

  @override
  Object serialize(
    Serializers serializers,
    MediaMatchResultQuerySource_Enum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MediaMatchResultQuerySource_Enum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MediaMatchResultQuerySource_Enum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MediaMatchResultQuery extends MediaMatchResultQuery {
  @override
  final String pdq;
  @override
  final int? quality;
  @override
  final MediaMatchResultQuerySource_Enum source_;

  factory _$MediaMatchResultQuery([
    void Function(MediaMatchResultQueryBuilder)? updates,
  ]) => (MediaMatchResultQueryBuilder()..update(updates))._build();

  _$MediaMatchResultQuery._({
    required this.pdq,
    this.quality,
    required this.source_,
  }) : super._();
  @override
  MediaMatchResultQuery rebuild(
    void Function(MediaMatchResultQueryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MediaMatchResultQueryBuilder toBuilder() =>
      MediaMatchResultQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaMatchResultQuery &&
        pdq == other.pdq &&
        quality == other.quality &&
        source_ == other.source_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pdq.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaMatchResultQuery')
          ..add('pdq', pdq)
          ..add('quality', quality)
          ..add('source_', source_))
        .toString();
  }
}

class MediaMatchResultQueryBuilder
    implements Builder<MediaMatchResultQuery, MediaMatchResultQueryBuilder> {
  _$MediaMatchResultQuery? _$v;

  String? _pdq;
  String? get pdq => _$this._pdq;
  set pdq(String? pdq) => _$this._pdq = pdq;

  int? _quality;
  int? get quality => _$this._quality;
  set quality(int? quality) => _$this._quality = quality;

  MediaMatchResultQuerySource_Enum? _source_;
  MediaMatchResultQuerySource_Enum? get source_ => _$this._source_;
  set source_(MediaMatchResultQuerySource_Enum? source_) =>
      _$this._source_ = source_;

  MediaMatchResultQueryBuilder() {
    MediaMatchResultQuery._defaults(this);
  }

  MediaMatchResultQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pdq = $v.pdq;
      _quality = $v.quality;
      _source_ = $v.source_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaMatchResultQuery other) {
    _$v = other as _$MediaMatchResultQuery;
  }

  @override
  void update(void Function(MediaMatchResultQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaMatchResultQuery build() => _build();

  _$MediaMatchResultQuery _build() {
    final _$result =
        _$v ??
        _$MediaMatchResultQuery._(
          pdq: BuiltValueNullFieldError.checkNotNull(
            pdq,
            r'MediaMatchResultQuery',
            'pdq',
          ),
          quality: quality,
          source_: BuiltValueNullFieldError.checkNotNull(
            source_,
            r'MediaMatchResultQuery',
            'source_',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
