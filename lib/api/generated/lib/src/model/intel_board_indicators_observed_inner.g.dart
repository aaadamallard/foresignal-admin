// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_board_indicators_observed_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelBoardIndicatorsObservedInner
    extends IntelBoardIndicatorsObservedInner {
  @override
  final String indicatorId;
  @override
  final String setId;
  @override
  final String? description;
  @override
  final DateTime at;

  factory _$IntelBoardIndicatorsObservedInner([
    void Function(IntelBoardIndicatorsObservedInnerBuilder)? updates,
  ]) => (IntelBoardIndicatorsObservedInnerBuilder()..update(updates))._build();

  _$IntelBoardIndicatorsObservedInner._({
    required this.indicatorId,
    required this.setId,
    this.description,
    required this.at,
  }) : super._();
  @override
  IntelBoardIndicatorsObservedInner rebuild(
    void Function(IntelBoardIndicatorsObservedInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelBoardIndicatorsObservedInnerBuilder toBuilder() =>
      IntelBoardIndicatorsObservedInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelBoardIndicatorsObservedInner &&
        indicatorId == other.indicatorId &&
        setId == other.setId &&
        description == other.description &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indicatorId.hashCode);
    _$hash = $jc(_$hash, setId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelBoardIndicatorsObservedInner')
          ..add('indicatorId', indicatorId)
          ..add('setId', setId)
          ..add('description', description)
          ..add('at', at))
        .toString();
  }
}

class IntelBoardIndicatorsObservedInnerBuilder
    implements
        Builder<
          IntelBoardIndicatorsObservedInner,
          IntelBoardIndicatorsObservedInnerBuilder
        > {
  _$IntelBoardIndicatorsObservedInner? _$v;

  String? _indicatorId;
  String? get indicatorId => _$this._indicatorId;
  set indicatorId(String? indicatorId) => _$this._indicatorId = indicatorId;

  String? _setId;
  String? get setId => _$this._setId;
  set setId(String? setId) => _$this._setId = setId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  IntelBoardIndicatorsObservedInnerBuilder() {
    IntelBoardIndicatorsObservedInner._defaults(this);
  }

  IntelBoardIndicatorsObservedInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indicatorId = $v.indicatorId;
      _setId = $v.setId;
      _description = $v.description;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelBoardIndicatorsObservedInner other) {
    _$v = other as _$IntelBoardIndicatorsObservedInner;
  }

  @override
  void update(
    void Function(IntelBoardIndicatorsObservedInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  IntelBoardIndicatorsObservedInner build() => _build();

  _$IntelBoardIndicatorsObservedInner _build() {
    final _$result =
        _$v ??
        _$IntelBoardIndicatorsObservedInner._(
          indicatorId: BuiltValueNullFieldError.checkNotNull(
            indicatorId,
            r'IntelBoardIndicatorsObservedInner',
            'indicatorId',
          ),
          setId: BuiltValueNullFieldError.checkNotNull(
            setId,
            r'IntelBoardIndicatorsObservedInner',
            'setId',
          ),
          description: description,
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'IntelBoardIndicatorsObservedInner',
            'at',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
