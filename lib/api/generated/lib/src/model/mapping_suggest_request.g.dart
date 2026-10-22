// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapping_suggest_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MappingSuggestRequest extends MappingSuggestRequest {
  @override
  final MappingSample sample;
  @override
  final MappingSuggestRequestHints? hints;
  @override
  final bool? confirmEgress;

  factory _$MappingSuggestRequest([
    void Function(MappingSuggestRequestBuilder)? updates,
  ]) => (MappingSuggestRequestBuilder()..update(updates))._build();

  _$MappingSuggestRequest._({
    required this.sample,
    this.hints,
    this.confirmEgress,
  }) : super._();
  @override
  MappingSuggestRequest rebuild(
    void Function(MappingSuggestRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MappingSuggestRequestBuilder toBuilder() =>
      MappingSuggestRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MappingSuggestRequest &&
        sample == other.sample &&
        hints == other.hints &&
        confirmEgress == other.confirmEgress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sample.hashCode);
    _$hash = $jc(_$hash, hints.hashCode);
    _$hash = $jc(_$hash, confirmEgress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MappingSuggestRequest')
          ..add('sample', sample)
          ..add('hints', hints)
          ..add('confirmEgress', confirmEgress))
        .toString();
  }
}

class MappingSuggestRequestBuilder
    implements Builder<MappingSuggestRequest, MappingSuggestRequestBuilder> {
  _$MappingSuggestRequest? _$v;

  MappingSampleBuilder? _sample;
  MappingSampleBuilder get sample => _$this._sample ??= MappingSampleBuilder();
  set sample(MappingSampleBuilder? sample) => _$this._sample = sample;

  MappingSuggestRequestHintsBuilder? _hints;
  MappingSuggestRequestHintsBuilder get hints =>
      _$this._hints ??= MappingSuggestRequestHintsBuilder();
  set hints(MappingSuggestRequestHintsBuilder? hints) => _$this._hints = hints;

  bool? _confirmEgress;
  bool? get confirmEgress => _$this._confirmEgress;
  set confirmEgress(bool? confirmEgress) =>
      _$this._confirmEgress = confirmEgress;

  MappingSuggestRequestBuilder() {
    MappingSuggestRequest._defaults(this);
  }

  MappingSuggestRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sample = $v.sample.toBuilder();
      _hints = $v.hints?.toBuilder();
      _confirmEgress = $v.confirmEgress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MappingSuggestRequest other) {
    _$v = other as _$MappingSuggestRequest;
  }

  @override
  void update(void Function(MappingSuggestRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MappingSuggestRequest build() => _build();

  _$MappingSuggestRequest _build() {
    _$MappingSuggestRequest _$result;
    try {
      _$result =
          _$v ??
          _$MappingSuggestRequest._(
            sample: sample.build(),
            hints: _hints?.build(),
            confirmEgress: confirmEgress,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sample';
        sample.build();
        _$failedField = 'hints';
        _hints?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MappingSuggestRequest',
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
