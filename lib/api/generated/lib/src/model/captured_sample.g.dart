// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'captured_sample.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CapturedSampleMethodEnum _$capturedSampleMethodEnum_GET =
    const CapturedSampleMethodEnum._('GET');
const CapturedSampleMethodEnum _$capturedSampleMethodEnum_POST =
    const CapturedSampleMethodEnum._('POST');
const CapturedSampleMethodEnum _$capturedSampleMethodEnum_PUT =
    const CapturedSampleMethodEnum._('PUT');

CapturedSampleMethodEnum _$capturedSampleMethodEnumValueOf(String name) {
  switch (name) {
    case 'GET':
      return _$capturedSampleMethodEnum_GET;
    case 'POST':
      return _$capturedSampleMethodEnum_POST;
    case 'PUT':
      return _$capturedSampleMethodEnum_PUT;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CapturedSampleMethodEnum> _$capturedSampleMethodEnumValues =
    BuiltSet<CapturedSampleMethodEnum>(const <CapturedSampleMethodEnum>[
  _$capturedSampleMethodEnum_GET,
  _$capturedSampleMethodEnum_POST,
  _$capturedSampleMethodEnum_PUT,
]);

Serializer<CapturedSampleMethodEnum> _$capturedSampleMethodEnumSerializer =
    _$CapturedSampleMethodEnumSerializer();

class _$CapturedSampleMethodEnumSerializer
    implements PrimitiveSerializer<CapturedSampleMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'GET': 'GET',
    'POST': 'POST',
    'PUT': 'PUT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'GET': 'GET',
    'POST': 'POST',
    'PUT': 'PUT',
  };

  @override
  final Iterable<Type> types = const <Type>[CapturedSampleMethodEnum];
  @override
  final String wireName = 'CapturedSampleMethodEnum';

  @override
  Object serialize(Serializers serializers, CapturedSampleMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CapturedSampleMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CapturedSampleMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CapturedSample extends CapturedSample {
  @override
  final DateTime receivedAt;
  @override
  final CapturedSampleMethodEnum method;
  @override
  final String? format;
  @override
  final String? contentType;
  @override
  final String? contentEncoding;
  @override
  final String? query;
  @override
  final String? body;
  @override
  final int? bodyBytes;
  @override
  final bool? truncated;

  factory _$CapturedSample([void Function(CapturedSampleBuilder)? updates]) =>
      (CapturedSampleBuilder()..update(updates))._build();

  _$CapturedSample._(
      {required this.receivedAt,
      required this.method,
      this.format,
      this.contentType,
      this.contentEncoding,
      this.query,
      this.body,
      this.bodyBytes,
      this.truncated})
      : super._();
  @override
  CapturedSample rebuild(void Function(CapturedSampleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CapturedSampleBuilder toBuilder() => CapturedSampleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CapturedSample &&
        receivedAt == other.receivedAt &&
        method == other.method &&
        format == other.format &&
        contentType == other.contentType &&
        contentEncoding == other.contentEncoding &&
        query == other.query &&
        body == other.body &&
        bodyBytes == other.bodyBytes &&
        truncated == other.truncated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, receivedAt.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, contentEncoding.hashCode);
    _$hash = $jc(_$hash, query.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, bodyBytes.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CapturedSample')
          ..add('receivedAt', receivedAt)
          ..add('method', method)
          ..add('format', format)
          ..add('contentType', contentType)
          ..add('contentEncoding', contentEncoding)
          ..add('query', query)
          ..add('body', body)
          ..add('bodyBytes', bodyBytes)
          ..add('truncated', truncated))
        .toString();
  }
}

class CapturedSampleBuilder
    implements Builder<CapturedSample, CapturedSampleBuilder> {
  _$CapturedSample? _$v;

  DateTime? _receivedAt;
  DateTime? get receivedAt => _$this._receivedAt;
  set receivedAt(DateTime? receivedAt) => _$this._receivedAt = receivedAt;

  CapturedSampleMethodEnum? _method;
  CapturedSampleMethodEnum? get method => _$this._method;
  set method(CapturedSampleMethodEnum? method) => _$this._method = method;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  String? _contentEncoding;
  String? get contentEncoding => _$this._contentEncoding;
  set contentEncoding(String? contentEncoding) =>
      _$this._contentEncoding = contentEncoding;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  int? _bodyBytes;
  int? get bodyBytes => _$this._bodyBytes;
  set bodyBytes(int? bodyBytes) => _$this._bodyBytes = bodyBytes;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  CapturedSampleBuilder() {
    CapturedSample._defaults(this);
  }

  CapturedSampleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _receivedAt = $v.receivedAt;
      _method = $v.method;
      _format = $v.format;
      _contentType = $v.contentType;
      _contentEncoding = $v.contentEncoding;
      _query = $v.query;
      _body = $v.body;
      _bodyBytes = $v.bodyBytes;
      _truncated = $v.truncated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CapturedSample other) {
    _$v = other as _$CapturedSample;
  }

  @override
  void update(void Function(CapturedSampleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CapturedSample build() => _build();

  _$CapturedSample _build() {
    final _$result = _$v ??
        _$CapturedSample._(
          receivedAt: BuiltValueNullFieldError.checkNotNull(
              receivedAt, r'CapturedSample', 'receivedAt'),
          method: BuiltValueNullFieldError.checkNotNull(
              method, r'CapturedSample', 'method'),
          format: format,
          contentType: contentType,
          contentEncoding: contentEncoding,
          query: query,
          body: body,
          bodyBytes: bodyBytes,
          truncated: truncated,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
