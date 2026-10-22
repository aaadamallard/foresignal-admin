// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_model_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LlmModelInfo extends LlmModelInfo {
  @override
  final String id;
  @override
  final String? displayName;
  @override
  final int? contextWindow;
  @override
  final bool? supportsTools;
  @override
  final bool? supportsEmbeddings;

  factory _$LlmModelInfo([void Function(LlmModelInfoBuilder)? updates]) =>
      (LlmModelInfoBuilder()..update(updates))._build();

  _$LlmModelInfo._(
      {required this.id,
      this.displayName,
      this.contextWindow,
      this.supportsTools,
      this.supportsEmbeddings})
      : super._();
  @override
  LlmModelInfo rebuild(void Function(LlmModelInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LlmModelInfoBuilder toBuilder() => LlmModelInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmModelInfo &&
        id == other.id &&
        displayName == other.displayName &&
        contextWindow == other.contextWindow &&
        supportsTools == other.supportsTools &&
        supportsEmbeddings == other.supportsEmbeddings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, contextWindow.hashCode);
    _$hash = $jc(_$hash, supportsTools.hashCode);
    _$hash = $jc(_$hash, supportsEmbeddings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmModelInfo')
          ..add('id', id)
          ..add('displayName', displayName)
          ..add('contextWindow', contextWindow)
          ..add('supportsTools', supportsTools)
          ..add('supportsEmbeddings', supportsEmbeddings))
        .toString();
  }
}

class LlmModelInfoBuilder
    implements Builder<LlmModelInfo, LlmModelInfoBuilder> {
  _$LlmModelInfo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  int? _contextWindow;
  int? get contextWindow => _$this._contextWindow;
  set contextWindow(int? contextWindow) =>
      _$this._contextWindow = contextWindow;

  bool? _supportsTools;
  bool? get supportsTools => _$this._supportsTools;
  set supportsTools(bool? supportsTools) =>
      _$this._supportsTools = supportsTools;

  bool? _supportsEmbeddings;
  bool? get supportsEmbeddings => _$this._supportsEmbeddings;
  set supportsEmbeddings(bool? supportsEmbeddings) =>
      _$this._supportsEmbeddings = supportsEmbeddings;

  LlmModelInfoBuilder() {
    LlmModelInfo._defaults(this);
  }

  LlmModelInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _displayName = $v.displayName;
      _contextWindow = $v.contextWindow;
      _supportsTools = $v.supportsTools;
      _supportsEmbeddings = $v.supportsEmbeddings;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmModelInfo other) {
    _$v = other as _$LlmModelInfo;
  }

  @override
  void update(void Function(LlmModelInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmModelInfo build() => _build();

  _$LlmModelInfo _build() {
    final _$result = _$v ??
        _$LlmModelInfo._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'LlmModelInfo', 'id'),
          displayName: displayName,
          contextWindow: contextWindow,
          supportsTools: supportsTools,
          supportsEmbeddings: supportsEmbeddings,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
