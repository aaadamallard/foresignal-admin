// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_sketch_batch_access_requests_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleSketchBatchAccessRequestsInner
    extends ChronicleSketchBatchAccessRequestsInner {
  @override
  final String requestId;
  @override
  final String? linkId;
  @override
  final String sketchId;
  @override
  final String requesterHandle;
  @override
  final String? message;
  @override
  final bool? offerShare;

  factory _$ChronicleSketchBatchAccessRequestsInner(
          [void Function(ChronicleSketchBatchAccessRequestsInnerBuilder)?
              updates]) =>
      (ChronicleSketchBatchAccessRequestsInnerBuilder()..update(updates))
          ._build();

  _$ChronicleSketchBatchAccessRequestsInner._(
      {required this.requestId,
      this.linkId,
      required this.sketchId,
      required this.requesterHandle,
      this.message,
      this.offerShare})
      : super._();
  @override
  ChronicleSketchBatchAccessRequestsInner rebuild(
          void Function(ChronicleSketchBatchAccessRequestsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleSketchBatchAccessRequestsInnerBuilder toBuilder() =>
      ChronicleSketchBatchAccessRequestsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSketchBatchAccessRequestsInner &&
        requestId == other.requestId &&
        linkId == other.linkId &&
        sketchId == other.sketchId &&
        requesterHandle == other.requesterHandle &&
        message == other.message &&
        offerShare == other.offerShare;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, linkId.hashCode);
    _$hash = $jc(_$hash, sketchId.hashCode);
    _$hash = $jc(_$hash, requesterHandle.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, offerShare.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ChronicleSketchBatchAccessRequestsInner')
          ..add('requestId', requestId)
          ..add('linkId', linkId)
          ..add('sketchId', sketchId)
          ..add('requesterHandle', requesterHandle)
          ..add('message', message)
          ..add('offerShare', offerShare))
        .toString();
  }
}

class ChronicleSketchBatchAccessRequestsInnerBuilder
    implements
        Builder<ChronicleSketchBatchAccessRequestsInner,
            ChronicleSketchBatchAccessRequestsInnerBuilder> {
  _$ChronicleSketchBatchAccessRequestsInner? _$v;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  String? _sketchId;
  String? get sketchId => _$this._sketchId;
  set sketchId(String? sketchId) => _$this._sketchId = sketchId;

  String? _requesterHandle;
  String? get requesterHandle => _$this._requesterHandle;
  set requesterHandle(String? requesterHandle) =>
      _$this._requesterHandle = requesterHandle;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _offerShare;
  bool? get offerShare => _$this._offerShare;
  set offerShare(bool? offerShare) => _$this._offerShare = offerShare;

  ChronicleSketchBatchAccessRequestsInnerBuilder() {
    ChronicleSketchBatchAccessRequestsInner._defaults(this);
  }

  ChronicleSketchBatchAccessRequestsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestId = $v.requestId;
      _linkId = $v.linkId;
      _sketchId = $v.sketchId;
      _requesterHandle = $v.requesterHandle;
      _message = $v.message;
      _offerShare = $v.offerShare;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSketchBatchAccessRequestsInner other) {
    _$v = other as _$ChronicleSketchBatchAccessRequestsInner;
  }

  @override
  void update(
      void Function(ChronicleSketchBatchAccessRequestsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSketchBatchAccessRequestsInner build() => _build();

  _$ChronicleSketchBatchAccessRequestsInner _build() {
    final _$result = _$v ??
        _$ChronicleSketchBatchAccessRequestsInner._(
          requestId: BuiltValueNullFieldError.checkNotNull(requestId,
              r'ChronicleSketchBatchAccessRequestsInner', 'requestId'),
          linkId: linkId,
          sketchId: BuiltValueNullFieldError.checkNotNull(
              sketchId, r'ChronicleSketchBatchAccessRequestsInner', 'sketchId'),
          requesterHandle: BuiltValueNullFieldError.checkNotNull(
              requesterHandle,
              r'ChronicleSketchBatchAccessRequestsInner',
              'requesterHandle'),
          message: message,
          offerShare: offerShare,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
