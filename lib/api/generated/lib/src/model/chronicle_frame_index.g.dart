// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_frame_index.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleFrameIndex extends ChronicleFrameIndex {
  @override
  final String chronicleId;
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final String step;
  @override
  final BuiltList<String>? layers;
  @override
  final BuiltList<ChronicleFrameIndexFramesInner> frames;
  @override
  final bool? truncated;

  factory _$ChronicleFrameIndex([
    void Function(ChronicleFrameIndexBuilder)? updates,
  ]) => (ChronicleFrameIndexBuilder()..update(updates))._build();

  _$ChronicleFrameIndex._({
    required this.chronicleId,
    required this.from,
    required this.to,
    required this.step,
    this.layers,
    required this.frames,
    this.truncated,
  }) : super._();
  @override
  ChronicleFrameIndex rebuild(
    void Function(ChronicleFrameIndexBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleFrameIndexBuilder toBuilder() =>
      ChronicleFrameIndexBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleFrameIndex &&
        chronicleId == other.chronicleId &&
        from == other.from &&
        to == other.to &&
        step == other.step &&
        layers == other.layers &&
        frames == other.frames &&
        truncated == other.truncated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, chronicleId.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, layers.hashCode);
    _$hash = $jc(_$hash, frames.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleFrameIndex')
          ..add('chronicleId', chronicleId)
          ..add('from', from)
          ..add('to', to)
          ..add('step', step)
          ..add('layers', layers)
          ..add('frames', frames)
          ..add('truncated', truncated))
        .toString();
  }
}

class ChronicleFrameIndexBuilder
    implements Builder<ChronicleFrameIndex, ChronicleFrameIndexBuilder> {
  _$ChronicleFrameIndex? _$v;

  String? _chronicleId;
  String? get chronicleId => _$this._chronicleId;
  set chronicleId(String? chronicleId) => _$this._chronicleId = chronicleId;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  String? _step;
  String? get step => _$this._step;
  set step(String? step) => _$this._step = step;

  ListBuilder<String>? _layers;
  ListBuilder<String> get layers => _$this._layers ??= ListBuilder<String>();
  set layers(ListBuilder<String>? layers) => _$this._layers = layers;

  ListBuilder<ChronicleFrameIndexFramesInner>? _frames;
  ListBuilder<ChronicleFrameIndexFramesInner> get frames =>
      _$this._frames ??= ListBuilder<ChronicleFrameIndexFramesInner>();
  set frames(ListBuilder<ChronicleFrameIndexFramesInner>? frames) =>
      _$this._frames = frames;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  ChronicleFrameIndexBuilder() {
    ChronicleFrameIndex._defaults(this);
  }

  ChronicleFrameIndexBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chronicleId = $v.chronicleId;
      _from = $v.from;
      _to = $v.to;
      _step = $v.step;
      _layers = $v.layers?.toBuilder();
      _frames = $v.frames.toBuilder();
      _truncated = $v.truncated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleFrameIndex other) {
    _$v = other as _$ChronicleFrameIndex;
  }

  @override
  void update(void Function(ChronicleFrameIndexBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleFrameIndex build() => _build();

  _$ChronicleFrameIndex _build() {
    _$ChronicleFrameIndex _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleFrameIndex._(
            chronicleId: BuiltValueNullFieldError.checkNotNull(
              chronicleId,
              r'ChronicleFrameIndex',
              'chronicleId',
            ),
            from: BuiltValueNullFieldError.checkNotNull(
              from,
              r'ChronicleFrameIndex',
              'from',
            ),
            to: BuiltValueNullFieldError.checkNotNull(
              to,
              r'ChronicleFrameIndex',
              'to',
            ),
            step: BuiltValueNullFieldError.checkNotNull(
              step,
              r'ChronicleFrameIndex',
              'step',
            ),
            layers: _layers?.build(),
            frames: frames.build(),
            truncated: truncated,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'layers';
        _layers?.build();
        _$failedField = 'frames';
        frames.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleFrameIndex',
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
