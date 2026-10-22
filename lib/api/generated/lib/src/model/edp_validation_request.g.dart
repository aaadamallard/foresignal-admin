// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_validation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdpValidationRequest extends EdpValidationRequest {
  @override
  final EdpManifest? manifest;
  @override
  final String? sourceId;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>>? items;

  factory _$EdpValidationRequest([
    void Function(EdpValidationRequestBuilder)? updates,
  ]) => (EdpValidationRequestBuilder()..update(updates))._build();

  _$EdpValidationRequest._({this.manifest, this.sourceId, this.items})
    : super._();
  @override
  EdpValidationRequest rebuild(
    void Function(EdpValidationRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EdpValidationRequestBuilder toBuilder() =>
      EdpValidationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpValidationRequest &&
        manifest == other.manifest &&
        sourceId == other.sourceId &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, manifest.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpValidationRequest')
          ..add('manifest', manifest)
          ..add('sourceId', sourceId)
          ..add('items', items))
        .toString();
  }
}

class EdpValidationRequestBuilder
    implements Builder<EdpValidationRequest, EdpValidationRequestBuilder> {
  _$EdpValidationRequest? _$v;

  EdpManifestBuilder? _manifest;
  EdpManifestBuilder get manifest => _$this._manifest ??= EdpManifestBuilder();
  set manifest(EdpManifestBuilder? manifest) => _$this._manifest = manifest;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  ListBuilder<BuiltMap<String, JsonObject?>>? _items;
  ListBuilder<BuiltMap<String, JsonObject?>> get items =>
      _$this._items ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set items(ListBuilder<BuiltMap<String, JsonObject?>>? items) =>
      _$this._items = items;

  EdpValidationRequestBuilder() {
    EdpValidationRequest._defaults(this);
  }

  EdpValidationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _manifest = $v.manifest?.toBuilder();
      _sourceId = $v.sourceId;
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpValidationRequest other) {
    _$v = other as _$EdpValidationRequest;
  }

  @override
  void update(void Function(EdpValidationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpValidationRequest build() => _build();

  _$EdpValidationRequest _build() {
    _$EdpValidationRequest _$result;
    try {
      _$result =
          _$v ??
          _$EdpValidationRequest._(
            manifest: _manifest?.build(),
            sourceId: sourceId,
            items: _items?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'manifest';
        _manifest?.build();

        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdpValidationRequest',
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
