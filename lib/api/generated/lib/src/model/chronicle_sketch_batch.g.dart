// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_sketch_batch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleSketchBatch extends ChronicleSketchBatch {
  @override
  final String instanceId;
  @override
  final String networkId;
  @override
  final BuiltList<ChronicleSketchPackage> sketches;
  @override
  final BuiltList<String>? withdrawn;
  @override
  final BuiltList<ChronicleSketchBatchAccessRequestsInner>? accessRequests;
  @override
  final BuiltList<ChronicleSketchBatchAccessDecisionsInner>? accessDecisions;

  factory _$ChronicleSketchBatch([
    void Function(ChronicleSketchBatchBuilder)? updates,
  ]) => (ChronicleSketchBatchBuilder()..update(updates))._build();

  _$ChronicleSketchBatch._({
    required this.instanceId,
    required this.networkId,
    required this.sketches,
    this.withdrawn,
    this.accessRequests,
    this.accessDecisions,
  }) : super._();
  @override
  ChronicleSketchBatch rebuild(
    void Function(ChronicleSketchBatchBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleSketchBatchBuilder toBuilder() =>
      ChronicleSketchBatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSketchBatch &&
        instanceId == other.instanceId &&
        networkId == other.networkId &&
        sketches == other.sketches &&
        withdrawn == other.withdrawn &&
        accessRequests == other.accessRequests &&
        accessDecisions == other.accessDecisions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, networkId.hashCode);
    _$hash = $jc(_$hash, sketches.hashCode);
    _$hash = $jc(_$hash, withdrawn.hashCode);
    _$hash = $jc(_$hash, accessRequests.hashCode);
    _$hash = $jc(_$hash, accessDecisions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleSketchBatch')
          ..add('instanceId', instanceId)
          ..add('networkId', networkId)
          ..add('sketches', sketches)
          ..add('withdrawn', withdrawn)
          ..add('accessRequests', accessRequests)
          ..add('accessDecisions', accessDecisions))
        .toString();
  }
}

class ChronicleSketchBatchBuilder
    implements Builder<ChronicleSketchBatch, ChronicleSketchBatchBuilder> {
  _$ChronicleSketchBatch? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _networkId;
  String? get networkId => _$this._networkId;
  set networkId(String? networkId) => _$this._networkId = networkId;

  ListBuilder<ChronicleSketchPackage>? _sketches;
  ListBuilder<ChronicleSketchPackage> get sketches =>
      _$this._sketches ??= ListBuilder<ChronicleSketchPackage>();
  set sketches(ListBuilder<ChronicleSketchPackage>? sketches) =>
      _$this._sketches = sketches;

  ListBuilder<String>? _withdrawn;
  ListBuilder<String> get withdrawn =>
      _$this._withdrawn ??= ListBuilder<String>();
  set withdrawn(ListBuilder<String>? withdrawn) =>
      _$this._withdrawn = withdrawn;

  ListBuilder<ChronicleSketchBatchAccessRequestsInner>? _accessRequests;
  ListBuilder<ChronicleSketchBatchAccessRequestsInner> get accessRequests =>
      _$this._accessRequests ??=
          ListBuilder<ChronicleSketchBatchAccessRequestsInner>();
  set accessRequests(
    ListBuilder<ChronicleSketchBatchAccessRequestsInner>? accessRequests,
  ) => _$this._accessRequests = accessRequests;

  ListBuilder<ChronicleSketchBatchAccessDecisionsInner>? _accessDecisions;
  ListBuilder<ChronicleSketchBatchAccessDecisionsInner> get accessDecisions =>
      _$this._accessDecisions ??=
          ListBuilder<ChronicleSketchBatchAccessDecisionsInner>();
  set accessDecisions(
    ListBuilder<ChronicleSketchBatchAccessDecisionsInner>? accessDecisions,
  ) => _$this._accessDecisions = accessDecisions;

  ChronicleSketchBatchBuilder() {
    ChronicleSketchBatch._defaults(this);
  }

  ChronicleSketchBatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _networkId = $v.networkId;
      _sketches = $v.sketches.toBuilder();
      _withdrawn = $v.withdrawn?.toBuilder();
      _accessRequests = $v.accessRequests?.toBuilder();
      _accessDecisions = $v.accessDecisions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSketchBatch other) {
    _$v = other as _$ChronicleSketchBatch;
  }

  @override
  void update(void Function(ChronicleSketchBatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSketchBatch build() => _build();

  _$ChronicleSketchBatch _build() {
    _$ChronicleSketchBatch _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleSketchBatch._(
            instanceId: BuiltValueNullFieldError.checkNotNull(
              instanceId,
              r'ChronicleSketchBatch',
              'instanceId',
            ),
            networkId: BuiltValueNullFieldError.checkNotNull(
              networkId,
              r'ChronicleSketchBatch',
              'networkId',
            ),
            sketches: sketches.build(),
            withdrawn: _withdrawn?.build(),
            accessRequests: _accessRequests?.build(),
            accessDecisions: _accessDecisions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sketches';
        sketches.build();
        _$failedField = 'withdrawn';
        _withdrawn?.build();
        _$failedField = 'accessRequests';
        _accessRequests?.build();
        _$failedField = 'accessDecisions';
        _accessDecisions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleSketchBatch',
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
