// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapping_suggest_request_hints.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MappingSuggestRequestHints extends MappingSuggestRequestHints {
  @override
  final String? kind;
  @override
  final String? description;
  @override
  final String? sourceId;

  factory _$MappingSuggestRequestHints([
    void Function(MappingSuggestRequestHintsBuilder)? updates,
  ]) => (MappingSuggestRequestHintsBuilder()..update(updates))._build();

  _$MappingSuggestRequestHints._({this.kind, this.description, this.sourceId})
    : super._();
  @override
  MappingSuggestRequestHints rebuild(
    void Function(MappingSuggestRequestHintsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MappingSuggestRequestHintsBuilder toBuilder() =>
      MappingSuggestRequestHintsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MappingSuggestRequestHints &&
        kind == other.kind &&
        description == other.description &&
        sourceId == other.sourceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MappingSuggestRequestHints')
          ..add('kind', kind)
          ..add('description', description)
          ..add('sourceId', sourceId))
        .toString();
  }
}

class MappingSuggestRequestHintsBuilder
    implements
        Builder<MappingSuggestRequestHints, MappingSuggestRequestHintsBuilder> {
  _$MappingSuggestRequestHints? _$v;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  MappingSuggestRequestHintsBuilder() {
    MappingSuggestRequestHints._defaults(this);
  }

  MappingSuggestRequestHintsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _description = $v.description;
      _sourceId = $v.sourceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MappingSuggestRequestHints other) {
    _$v = other as _$MappingSuggestRequestHints;
  }

  @override
  void update(void Function(MappingSuggestRequestHintsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MappingSuggestRequestHints build() => _build();

  _$MappingSuggestRequestHints _build() {
    final _$result =
        _$v ??
        _$MappingSuggestRequestHints._(
          kind: kind,
          description: description,
          sourceId: sourceId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
