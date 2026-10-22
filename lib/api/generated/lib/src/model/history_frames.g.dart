// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_frames.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HistoryFrames extends HistoryFrames {
  @override
  final DateTime asOf;
  @override
  final String step;
  @override
  final int watermarkSeq;
  @override
  final DateTime? horizon;
  @override
  final bool? approximate;
  @override
  final BuiltList<FrameItem> keyframe;
  @override
  final BuiltList<HistoryFrame> frames;

  factory _$HistoryFrames([void Function(HistoryFramesBuilder)? updates]) =>
      (HistoryFramesBuilder()..update(updates))._build();

  _$HistoryFrames._({
    required this.asOf,
    required this.step,
    required this.watermarkSeq,
    this.horizon,
    this.approximate,
    required this.keyframe,
    required this.frames,
  }) : super._();
  @override
  HistoryFrames rebuild(void Function(HistoryFramesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryFramesBuilder toBuilder() => HistoryFramesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryFrames &&
        asOf == other.asOf &&
        step == other.step &&
        watermarkSeq == other.watermarkSeq &&
        horizon == other.horizon &&
        approximate == other.approximate &&
        keyframe == other.keyframe &&
        frames == other.frames;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, watermarkSeq.hashCode);
    _$hash = $jc(_$hash, horizon.hashCode);
    _$hash = $jc(_$hash, approximate.hashCode);
    _$hash = $jc(_$hash, keyframe.hashCode);
    _$hash = $jc(_$hash, frames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HistoryFrames')
          ..add('asOf', asOf)
          ..add('step', step)
          ..add('watermarkSeq', watermarkSeq)
          ..add('horizon', horizon)
          ..add('approximate', approximate)
          ..add('keyframe', keyframe)
          ..add('frames', frames))
        .toString();
  }
}

class HistoryFramesBuilder
    implements Builder<HistoryFrames, HistoryFramesBuilder> {
  _$HistoryFrames? _$v;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _step;
  String? get step => _$this._step;
  set step(String? step) => _$this._step = step;

  int? _watermarkSeq;
  int? get watermarkSeq => _$this._watermarkSeq;
  set watermarkSeq(int? watermarkSeq) => _$this._watermarkSeq = watermarkSeq;

  DateTime? _horizon;
  DateTime? get horizon => _$this._horizon;
  set horizon(DateTime? horizon) => _$this._horizon = horizon;

  bool? _approximate;
  bool? get approximate => _$this._approximate;
  set approximate(bool? approximate) => _$this._approximate = approximate;

  ListBuilder<FrameItem>? _keyframe;
  ListBuilder<FrameItem> get keyframe =>
      _$this._keyframe ??= ListBuilder<FrameItem>();
  set keyframe(ListBuilder<FrameItem>? keyframe) => _$this._keyframe = keyframe;

  ListBuilder<HistoryFrame>? _frames;
  ListBuilder<HistoryFrame> get frames =>
      _$this._frames ??= ListBuilder<HistoryFrame>();
  set frames(ListBuilder<HistoryFrame>? frames) => _$this._frames = frames;

  HistoryFramesBuilder() {
    HistoryFrames._defaults(this);
  }

  HistoryFramesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _asOf = $v.asOf;
      _step = $v.step;
      _watermarkSeq = $v.watermarkSeq;
      _horizon = $v.horizon;
      _approximate = $v.approximate;
      _keyframe = $v.keyframe.toBuilder();
      _frames = $v.frames.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryFrames other) {
    _$v = other as _$HistoryFrames;
  }

  @override
  void update(void Function(HistoryFramesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistoryFrames build() => _build();

  _$HistoryFrames _build() {
    _$HistoryFrames _$result;
    try {
      _$result =
          _$v ??
          _$HistoryFrames._(
            asOf: BuiltValueNullFieldError.checkNotNull(
              asOf,
              r'HistoryFrames',
              'asOf',
            ),
            step: BuiltValueNullFieldError.checkNotNull(
              step,
              r'HistoryFrames',
              'step',
            ),
            watermarkSeq: BuiltValueNullFieldError.checkNotNull(
              watermarkSeq,
              r'HistoryFrames',
              'watermarkSeq',
            ),
            horizon: horizon,
            approximate: approximate,
            keyframe: keyframe.build(),
            frames: frames.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keyframe';
        keyframe.build();
        _$failedField = 'frames';
        frames.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HistoryFrames',
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
