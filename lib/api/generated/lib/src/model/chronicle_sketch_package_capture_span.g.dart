// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_sketch_package_capture_span.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleSketchPackageCaptureSpan
    extends ChronicleSketchPackageCaptureSpan {
  @override
  final String from;
  @override
  final String? to;

  factory _$ChronicleSketchPackageCaptureSpan(
          [void Function(ChronicleSketchPackageCaptureSpanBuilder)? updates]) =>
      (ChronicleSketchPackageCaptureSpanBuilder()..update(updates))._build();

  _$ChronicleSketchPackageCaptureSpan._({required this.from, this.to})
      : super._();
  @override
  ChronicleSketchPackageCaptureSpan rebuild(
          void Function(ChronicleSketchPackageCaptureSpanBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleSketchPackageCaptureSpanBuilder toBuilder() =>
      ChronicleSketchPackageCaptureSpanBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSketchPackageCaptureSpan &&
        from == other.from &&
        to == other.to;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleSketchPackageCaptureSpan')
          ..add('from', from)
          ..add('to', to))
        .toString();
  }
}

class ChronicleSketchPackageCaptureSpanBuilder
    implements
        Builder<ChronicleSketchPackageCaptureSpan,
            ChronicleSketchPackageCaptureSpanBuilder> {
  _$ChronicleSketchPackageCaptureSpan? _$v;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  ChronicleSketchPackageCaptureSpanBuilder() {
    ChronicleSketchPackageCaptureSpan._defaults(this);
  }

  ChronicleSketchPackageCaptureSpanBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSketchPackageCaptureSpan other) {
    _$v = other as _$ChronicleSketchPackageCaptureSpan;
  }

  @override
  void update(
      void Function(ChronicleSketchPackageCaptureSpanBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSketchPackageCaptureSpan build() => _build();

  _$ChronicleSketchPackageCaptureSpan _build() {
    final _$result = _$v ??
        _$ChronicleSketchPackageCaptureSpan._(
          from: BuiltValueNullFieldError.checkNotNull(
              from, r'ChronicleSketchPackageCaptureSpan', 'from'),
          to: to,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
