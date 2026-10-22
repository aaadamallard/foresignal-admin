// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleState extends ChronicleState {
  @override
  final String chronicleId;
  @override
  final DateTime at;
  @override
  final BuiltList<ChronicleStateLayersInner> layers;
  @override
  final BuiltList<Caveat>? caveats;

  factory _$ChronicleState([void Function(ChronicleStateBuilder)? updates]) =>
      (ChronicleStateBuilder()..update(updates))._build();

  _$ChronicleState._({
    required this.chronicleId,
    required this.at,
    required this.layers,
    this.caveats,
  }) : super._();
  @override
  ChronicleState rebuild(void Function(ChronicleStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleStateBuilder toBuilder() => ChronicleStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleState &&
        chronicleId == other.chronicleId &&
        at == other.at &&
        layers == other.layers &&
        caveats == other.caveats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, chronicleId.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, layers.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleState')
          ..add('chronicleId', chronicleId)
          ..add('at', at)
          ..add('layers', layers)
          ..add('caveats', caveats))
        .toString();
  }
}

class ChronicleStateBuilder
    implements Builder<ChronicleState, ChronicleStateBuilder> {
  _$ChronicleState? _$v;

  String? _chronicleId;
  String? get chronicleId => _$this._chronicleId;
  set chronicleId(String? chronicleId) => _$this._chronicleId = chronicleId;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ListBuilder<ChronicleStateLayersInner>? _layers;
  ListBuilder<ChronicleStateLayersInner> get layers =>
      _$this._layers ??= ListBuilder<ChronicleStateLayersInner>();
  set layers(ListBuilder<ChronicleStateLayersInner>? layers) =>
      _$this._layers = layers;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  ChronicleStateBuilder() {
    ChronicleState._defaults(this);
  }

  ChronicleStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chronicleId = $v.chronicleId;
      _at = $v.at;
      _layers = $v.layers.toBuilder();
      _caveats = $v.caveats?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleState other) {
    _$v = other as _$ChronicleState;
  }

  @override
  void update(void Function(ChronicleStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleState build() => _build();

  _$ChronicleState _build() {
    _$ChronicleState _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleState._(
            chronicleId: BuiltValueNullFieldError.checkNotNull(
              chronicleId,
              r'ChronicleState',
              'chronicleId',
            ),
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'ChronicleState',
              'at',
            ),
            layers: layers.build(),
            caveats: _caveats?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'layers';
        layers.build();
        _$failedField = 'caveats';
        _caveats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleState',
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
