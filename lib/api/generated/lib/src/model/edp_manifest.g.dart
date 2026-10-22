// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_manifest.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdpManifest extends EdpManifest {
  @override
  final String protocol;
  @override
  final EdpSourceInfo source_;
  @override
  final EdpTransport transport;
  @override
  final BuiltList<EdpStream> streams;

  factory _$EdpManifest([void Function(EdpManifestBuilder)? updates]) =>
      (EdpManifestBuilder()..update(updates))._build();

  _$EdpManifest._({
    required this.protocol,
    required this.source_,
    required this.transport,
    required this.streams,
  }) : super._();
  @override
  EdpManifest rebuild(void Function(EdpManifestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpManifestBuilder toBuilder() => EdpManifestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpManifest &&
        protocol == other.protocol &&
        source_ == other.source_ &&
        transport == other.transport &&
        streams == other.streams;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, transport.hashCode);
    _$hash = $jc(_$hash, streams.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpManifest')
          ..add('protocol', protocol)
          ..add('source_', source_)
          ..add('transport', transport)
          ..add('streams', streams))
        .toString();
  }
}

class EdpManifestBuilder implements Builder<EdpManifest, EdpManifestBuilder> {
  _$EdpManifest? _$v;

  String? _protocol;
  String? get protocol => _$this._protocol;
  set protocol(String? protocol) => _$this._protocol = protocol;

  EdpSourceInfoBuilder? _source_;
  EdpSourceInfoBuilder get source_ =>
      _$this._source_ ??= EdpSourceInfoBuilder();
  set source_(EdpSourceInfoBuilder? source_) => _$this._source_ = source_;

  EdpTransportBuilder? _transport;
  EdpTransportBuilder get transport =>
      _$this._transport ??= EdpTransportBuilder();
  set transport(EdpTransportBuilder? transport) =>
      _$this._transport = transport;

  ListBuilder<EdpStream>? _streams;
  ListBuilder<EdpStream> get streams =>
      _$this._streams ??= ListBuilder<EdpStream>();
  set streams(ListBuilder<EdpStream>? streams) => _$this._streams = streams;

  EdpManifestBuilder() {
    EdpManifest._defaults(this);
  }

  EdpManifestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _protocol = $v.protocol;
      _source_ = $v.source_.toBuilder();
      _transport = $v.transport.toBuilder();
      _streams = $v.streams.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpManifest other) {
    _$v = other as _$EdpManifest;
  }

  @override
  void update(void Function(EdpManifestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpManifest build() => _build();

  _$EdpManifest _build() {
    _$EdpManifest _$result;
    try {
      _$result =
          _$v ??
          _$EdpManifest._(
            protocol: BuiltValueNullFieldError.checkNotNull(
              protocol,
              r'EdpManifest',
              'protocol',
            ),
            source_: source_.build(),
            transport: transport.build(),
            streams: streams.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'source_';
        source_.build();
        _$failedField = 'transport';
        transport.build();
        _$failedField = 'streams';
        streams.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdpManifest',
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
