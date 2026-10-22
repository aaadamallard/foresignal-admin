// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribution_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttributionSummary extends AttributionSummary {
  @override
  final BuiltList<Attribution> attributions;
  @override
  final String text;

  factory _$AttributionSummary([
    void Function(AttributionSummaryBuilder)? updates,
  ]) => (AttributionSummaryBuilder()..update(updates))._build();

  _$AttributionSummary._({required this.attributions, required this.text})
    : super._();
  @override
  AttributionSummary rebuild(
    void Function(AttributionSummaryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AttributionSummaryBuilder toBuilder() =>
      AttributionSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributionSummary &&
        attributions == other.attributions &&
        text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributions.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttributionSummary')
          ..add('attributions', attributions)
          ..add('text', text))
        .toString();
  }
}

class AttributionSummaryBuilder
    implements Builder<AttributionSummary, AttributionSummaryBuilder> {
  _$AttributionSummary? _$v;

  ListBuilder<Attribution>? _attributions;
  ListBuilder<Attribution> get attributions =>
      _$this._attributions ??= ListBuilder<Attribution>();
  set attributions(ListBuilder<Attribution>? attributions) =>
      _$this._attributions = attributions;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  AttributionSummaryBuilder() {
    AttributionSummary._defaults(this);
  }

  AttributionSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributions = $v.attributions.toBuilder();
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttributionSummary other) {
    _$v = other as _$AttributionSummary;
  }

  @override
  void update(void Function(AttributionSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttributionSummary build() => _build();

  _$AttributionSummary _build() {
    _$AttributionSummary _$result;
    try {
      _$result =
          _$v ??
          _$AttributionSummary._(
            attributions: attributions.build(),
            text: BuiltValueNullFieldError.checkNotNull(
              text,
              r'AttributionSummary',
              'text',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributions';
        attributions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AttributionSummary',
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
