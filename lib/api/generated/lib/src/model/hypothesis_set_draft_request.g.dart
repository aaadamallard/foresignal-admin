// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_set_draft_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HypothesisSetDraftRequest extends HypothesisSetDraftRequest {
  @override
  final String text;
  @override
  final String? situationId;
  @override
  final BuiltList<String>? regionCodes;

  factory _$HypothesisSetDraftRequest(
          [void Function(HypothesisSetDraftRequestBuilder)? updates]) =>
      (HypothesisSetDraftRequestBuilder()..update(updates))._build();

  _$HypothesisSetDraftRequest._(
      {required this.text, this.situationId, this.regionCodes})
      : super._();
  @override
  HypothesisSetDraftRequest rebuild(
          void Function(HypothesisSetDraftRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HypothesisSetDraftRequestBuilder toBuilder() =>
      HypothesisSetDraftRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisSetDraftRequest &&
        text == other.text &&
        situationId == other.situationId &&
        regionCodes == other.regionCodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisSetDraftRequest')
          ..add('text', text)
          ..add('situationId', situationId)
          ..add('regionCodes', regionCodes))
        .toString();
  }
}

class HypothesisSetDraftRequestBuilder
    implements
        Builder<HypothesisSetDraftRequest, HypothesisSetDraftRequestBuilder> {
  _$HypothesisSetDraftRequest? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  HypothesisSetDraftRequestBuilder() {
    HypothesisSetDraftRequest._defaults(this);
  }

  HypothesisSetDraftRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _situationId = $v.situationId;
      _regionCodes = $v.regionCodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisSetDraftRequest other) {
    _$v = other as _$HypothesisSetDraftRequest;
  }

  @override
  void update(void Function(HypothesisSetDraftRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisSetDraftRequest build() => _build();

  _$HypothesisSetDraftRequest _build() {
    _$HypothesisSetDraftRequest _$result;
    try {
      _$result = _$v ??
          _$HypothesisSetDraftRequest._(
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'HypothesisSetDraftRequest', 'text'),
            situationId: situationId,
            regionCodes: _regionCodes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regionCodes';
        _regionCodes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'HypothesisSetDraftRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
