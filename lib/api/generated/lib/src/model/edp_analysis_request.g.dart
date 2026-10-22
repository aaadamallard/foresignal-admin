// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_analysis_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpAnalysisRequestAuthEnum _$edpAnalysisRequestAuthEnum_none =
    const EdpAnalysisRequestAuthEnum._('none');
const EdpAnalysisRequestAuthEnum _$edpAnalysisRequestAuthEnum_bearer =
    const EdpAnalysisRequestAuthEnum._('bearer');
const EdpAnalysisRequestAuthEnum _$edpAnalysisRequestAuthEnum_header =
    const EdpAnalysisRequestAuthEnum._('header');
const EdpAnalysisRequestAuthEnum _$edpAnalysisRequestAuthEnum_basic =
    const EdpAnalysisRequestAuthEnum._('basic');

EdpAnalysisRequestAuthEnum _$edpAnalysisRequestAuthEnumValueOf(String name) {
  switch (name) {
    case 'none':
      return _$edpAnalysisRequestAuthEnum_none;
    case 'bearer':
      return _$edpAnalysisRequestAuthEnum_bearer;
    case 'header':
      return _$edpAnalysisRequestAuthEnum_header;
    case 'basic':
      return _$edpAnalysisRequestAuthEnum_basic;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EdpAnalysisRequestAuthEnum> _$edpAnalysisRequestAuthEnumValues =
    BuiltSet<EdpAnalysisRequestAuthEnum>(const <EdpAnalysisRequestAuthEnum>[
      _$edpAnalysisRequestAuthEnum_none,
      _$edpAnalysisRequestAuthEnum_bearer,
      _$edpAnalysisRequestAuthEnum_header,
      _$edpAnalysisRequestAuthEnum_basic,
    ]);

Serializer<EdpAnalysisRequestAuthEnum> _$edpAnalysisRequestAuthEnumSerializer =
    _$EdpAnalysisRequestAuthEnumSerializer();

class _$EdpAnalysisRequestAuthEnumSerializer
    implements PrimitiveSerializer<EdpAnalysisRequestAuthEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'bearer': 'bearer',
    'header': 'header',
    'basic': 'basic',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'bearer': 'bearer',
    'header': 'header',
    'basic': 'basic',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpAnalysisRequestAuthEnum];
  @override
  final String wireName = 'EdpAnalysisRequestAuthEnum';

  @override
  Object serialize(
    Serializers serializers,
    EdpAnalysisRequestAuthEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EdpAnalysisRequestAuthEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EdpAnalysisRequestAuthEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EdpAnalysisRequest extends EdpAnalysisRequest {
  @override
  final String url;
  @override
  final EdpAnalysisRequestAuthEnum? auth;
  @override
  final String? header;

  factory _$EdpAnalysisRequest([
    void Function(EdpAnalysisRequestBuilder)? updates,
  ]) => (EdpAnalysisRequestBuilder()..update(updates))._build();

  _$EdpAnalysisRequest._({required this.url, this.auth, this.header})
    : super._();
  @override
  EdpAnalysisRequest rebuild(
    void Function(EdpAnalysisRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EdpAnalysisRequestBuilder toBuilder() =>
      EdpAnalysisRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpAnalysisRequest &&
        url == other.url &&
        auth == other.auth &&
        header == other.header;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpAnalysisRequest')
          ..add('url', url)
          ..add('auth', auth)
          ..add('header', header))
        .toString();
  }
}

class EdpAnalysisRequestBuilder
    implements Builder<EdpAnalysisRequest, EdpAnalysisRequestBuilder> {
  _$EdpAnalysisRequest? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  EdpAnalysisRequestAuthEnum? _auth;
  EdpAnalysisRequestAuthEnum? get auth => _$this._auth;
  set auth(EdpAnalysisRequestAuthEnum? auth) => _$this._auth = auth;

  String? _header;
  String? get header => _$this._header;
  set header(String? header) => _$this._header = header;

  EdpAnalysisRequestBuilder() {
    EdpAnalysisRequest._defaults(this);
  }

  EdpAnalysisRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _auth = $v.auth;
      _header = $v.header;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpAnalysisRequest other) {
    _$v = other as _$EdpAnalysisRequest;
  }

  @override
  void update(void Function(EdpAnalysisRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpAnalysisRequest build() => _build();

  _$EdpAnalysisRequest _build() {
    final _$result =
        _$v ??
        _$EdpAnalysisRequest._(
          url: BuiltValueNullFieldError.checkNotNull(
            url,
            r'EdpAnalysisRequest',
            'url',
          ),
          auth: auth,
          header: header,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
