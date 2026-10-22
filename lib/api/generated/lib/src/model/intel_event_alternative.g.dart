// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_event_alternative.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelEventAlternative extends IntelEventAlternative {
  @override
  final String hypothesis;
  @override
  final String basis;
  @override
  final BuiltList<String>? supportingMemberIds;

  factory _$IntelEventAlternative([
    void Function(IntelEventAlternativeBuilder)? updates,
  ]) => (IntelEventAlternativeBuilder()..update(updates))._build();

  _$IntelEventAlternative._({
    required this.hypothesis,
    required this.basis,
    this.supportingMemberIds,
  }) : super._();
  @override
  IntelEventAlternative rebuild(
    void Function(IntelEventAlternativeBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelEventAlternativeBuilder toBuilder() =>
      IntelEventAlternativeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelEventAlternative &&
        hypothesis == other.hypothesis &&
        basis == other.basis &&
        supportingMemberIds == other.supportingMemberIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hypothesis.hashCode);
    _$hash = $jc(_$hash, basis.hashCode);
    _$hash = $jc(_$hash, supportingMemberIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelEventAlternative')
          ..add('hypothesis', hypothesis)
          ..add('basis', basis)
          ..add('supportingMemberIds', supportingMemberIds))
        .toString();
  }
}

class IntelEventAlternativeBuilder
    implements Builder<IntelEventAlternative, IntelEventAlternativeBuilder> {
  _$IntelEventAlternative? _$v;

  String? _hypothesis;
  String? get hypothesis => _$this._hypothesis;
  set hypothesis(String? hypothesis) => _$this._hypothesis = hypothesis;

  String? _basis;
  String? get basis => _$this._basis;
  set basis(String? basis) => _$this._basis = basis;

  ListBuilder<String>? _supportingMemberIds;
  ListBuilder<String> get supportingMemberIds =>
      _$this._supportingMemberIds ??= ListBuilder<String>();
  set supportingMemberIds(ListBuilder<String>? supportingMemberIds) =>
      _$this._supportingMemberIds = supportingMemberIds;

  IntelEventAlternativeBuilder() {
    IntelEventAlternative._defaults(this);
  }

  IntelEventAlternativeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hypothesis = $v.hypothesis;
      _basis = $v.basis;
      _supportingMemberIds = $v.supportingMemberIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelEventAlternative other) {
    _$v = other as _$IntelEventAlternative;
  }

  @override
  void update(void Function(IntelEventAlternativeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelEventAlternative build() => _build();

  _$IntelEventAlternative _build() {
    _$IntelEventAlternative _$result;
    try {
      _$result =
          _$v ??
          _$IntelEventAlternative._(
            hypothesis: BuiltValueNullFieldError.checkNotNull(
              hypothesis,
              r'IntelEventAlternative',
              'hypothesis',
            ),
            basis: BuiltValueNullFieldError.checkNotNull(
              basis,
              r'IntelEventAlternative',
              'basis',
            ),
            supportingMemberIds: _supportingMemberIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'supportingMemberIds';
        _supportingMemberIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IntelEventAlternative',
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
