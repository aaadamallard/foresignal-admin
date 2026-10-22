// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metar_payload_sky_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetarPayloadSkyInner extends MetarPayloadSkyInner {
  @override
  final String cover;
  @override
  final int? baseFtAgl;

  factory _$MetarPayloadSkyInner(
          [void Function(MetarPayloadSkyInnerBuilder)? updates]) =>
      (MetarPayloadSkyInnerBuilder()..update(updates))._build();

  _$MetarPayloadSkyInner._({required this.cover, this.baseFtAgl}) : super._();
  @override
  MetarPayloadSkyInner rebuild(
          void Function(MetarPayloadSkyInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetarPayloadSkyInnerBuilder toBuilder() =>
      MetarPayloadSkyInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetarPayloadSkyInner &&
        cover == other.cover &&
        baseFtAgl == other.baseFtAgl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cover.hashCode);
    _$hash = $jc(_$hash, baseFtAgl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MetarPayloadSkyInner')
          ..add('cover', cover)
          ..add('baseFtAgl', baseFtAgl))
        .toString();
  }
}

class MetarPayloadSkyInnerBuilder
    implements Builder<MetarPayloadSkyInner, MetarPayloadSkyInnerBuilder> {
  _$MetarPayloadSkyInner? _$v;

  String? _cover;
  String? get cover => _$this._cover;
  set cover(String? cover) => _$this._cover = cover;

  int? _baseFtAgl;
  int? get baseFtAgl => _$this._baseFtAgl;
  set baseFtAgl(int? baseFtAgl) => _$this._baseFtAgl = baseFtAgl;

  MetarPayloadSkyInnerBuilder() {
    MetarPayloadSkyInner._defaults(this);
  }

  MetarPayloadSkyInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cover = $v.cover;
      _baseFtAgl = $v.baseFtAgl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetarPayloadSkyInner other) {
    _$v = other as _$MetarPayloadSkyInner;
  }

  @override
  void update(void Function(MetarPayloadSkyInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetarPayloadSkyInner build() => _build();

  _$MetarPayloadSkyInner _build() {
    final _$result = _$v ??
        _$MetarPayloadSkyInner._(
          cover: BuiltValueNullFieldError.checkNotNull(
              cover, r'MetarPayloadSkyInner', 'cover'),
          baseFtAgl: baseFtAgl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
