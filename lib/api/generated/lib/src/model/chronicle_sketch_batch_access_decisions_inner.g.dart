// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_sketch_batch_access_decisions_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChronicleSketchBatchAccessDecisionsInnerStatusEnum
_$chronicleSketchBatchAccessDecisionsInnerStatusEnum_granted =
    const ChronicleSketchBatchAccessDecisionsInnerStatusEnum._('granted');
const ChronicleSketchBatchAccessDecisionsInnerStatusEnum
_$chronicleSketchBatchAccessDecisionsInnerStatusEnum_declined =
    const ChronicleSketchBatchAccessDecisionsInnerStatusEnum._('declined');
const ChronicleSketchBatchAccessDecisionsInnerStatusEnum
_$chronicleSketchBatchAccessDecisionsInnerStatusEnum_unknownDefaultOpenApi =
    const ChronicleSketchBatchAccessDecisionsInnerStatusEnum._(
      'unknownDefaultOpenApi',
    );

ChronicleSketchBatchAccessDecisionsInnerStatusEnum
_$chronicleSketchBatchAccessDecisionsInnerStatusEnumValueOf(String name) {
  switch (name) {
    case 'granted':
      return _$chronicleSketchBatchAccessDecisionsInnerStatusEnum_granted;
    case 'declined':
      return _$chronicleSketchBatchAccessDecisionsInnerStatusEnum_declined;
    case 'unknownDefaultOpenApi':
      return _$chronicleSketchBatchAccessDecisionsInnerStatusEnum_unknownDefaultOpenApi;
    default:
      return _$chronicleSketchBatchAccessDecisionsInnerStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ChronicleSketchBatchAccessDecisionsInnerStatusEnum>
_$chronicleSketchBatchAccessDecisionsInnerStatusEnumValues =
    BuiltSet<ChronicleSketchBatchAccessDecisionsInnerStatusEnum>(const <
      ChronicleSketchBatchAccessDecisionsInnerStatusEnum
    >[
      _$chronicleSketchBatchAccessDecisionsInnerStatusEnum_granted,
      _$chronicleSketchBatchAccessDecisionsInnerStatusEnum_declined,
      _$chronicleSketchBatchAccessDecisionsInnerStatusEnum_unknownDefaultOpenApi,
    ]);

const ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum
_$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum_report =
    const ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum._('report');
const ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum
_$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum_chronicleExtract =
    const ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum._(
      'chronicleExtract',
    );
const ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum
_$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum_unknownDefaultOpenApi =
    const ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum._(
      'unknownDefaultOpenApi',
    );

ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum
_$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnumValueOf(String name) {
  switch (name) {
    case 'report':
      return _$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum_report;
    case 'chronicleExtract':
      return _$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum_chronicleExtract;
    case 'unknownDefaultOpenApi':
      return _$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum_unknownDefaultOpenApi;
    default:
      return _$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum>
_$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnumValues =
    BuiltSet<ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum>(const <
      ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum
    >[
      _$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum_report,
      _$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum_chronicleExtract,
      _$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum_unknownDefaultOpenApi,
    ]);

Serializer<ChronicleSketchBatchAccessDecisionsInnerStatusEnum>
_$chronicleSketchBatchAccessDecisionsInnerStatusEnumSerializer =
    _$ChronicleSketchBatchAccessDecisionsInnerStatusEnumSerializer();
Serializer<ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum>
_$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnumSerializer =
    _$ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnumSerializer();

class _$ChronicleSketchBatchAccessDecisionsInnerStatusEnumSerializer
    implements
        PrimitiveSerializer<
          ChronicleSketchBatchAccessDecisionsInnerStatusEnum
        > {
  static const Map<String, Object> _toWire = const <String, Object>{
    'granted': 'granted',
    'declined': 'declined',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'granted': 'granted',
    'declined': 'declined',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChronicleSketchBatchAccessDecisionsInnerStatusEnum,
  ];
  @override
  final String wireName = 'ChronicleSketchBatchAccessDecisionsInnerStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSketchBatchAccessDecisionsInnerStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChronicleSketchBatchAccessDecisionsInnerStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChronicleSketchBatchAccessDecisionsInnerStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnumSerializer
    implements
        PrimitiveSerializer<
          ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum
        > {
  static const Map<String, Object> _toWire = const <String, Object>{
    'report': 'report',
    'chronicleExtract': 'chronicle-extract',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'report': 'report',
    'chronicle-extract': 'chronicleExtract',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum,
  ];
  @override
  final String wireName =
      'ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChronicleSketchBatchAccessDecisionsInner
    extends ChronicleSketchBatchAccessDecisionsInner {
  @override
  final String requestId;
  @override
  final ChronicleSketchBatchAccessDecisionsInnerStatusEnum status;
  @override
  final ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum? deliveredAs;
  @override
  final String? packageId;

  factory _$ChronicleSketchBatchAccessDecisionsInner([
    void Function(ChronicleSketchBatchAccessDecisionsInnerBuilder)? updates,
  ]) => (ChronicleSketchBatchAccessDecisionsInnerBuilder()..update(updates))
      ._build();

  _$ChronicleSketchBatchAccessDecisionsInner._({
    required this.requestId,
    required this.status,
    this.deliveredAs,
    this.packageId,
  }) : super._();
  @override
  ChronicleSketchBatchAccessDecisionsInner rebuild(
    void Function(ChronicleSketchBatchAccessDecisionsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleSketchBatchAccessDecisionsInnerBuilder toBuilder() =>
      ChronicleSketchBatchAccessDecisionsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSketchBatchAccessDecisionsInner &&
        requestId == other.requestId &&
        status == other.status &&
        deliveredAs == other.deliveredAs &&
        packageId == other.packageId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, deliveredAs.hashCode);
    _$hash = $jc(_$hash, packageId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ChronicleSketchBatchAccessDecisionsInner',
          )
          ..add('requestId', requestId)
          ..add('status', status)
          ..add('deliveredAs', deliveredAs)
          ..add('packageId', packageId))
        .toString();
  }
}

class ChronicleSketchBatchAccessDecisionsInnerBuilder
    implements
        Builder<
          ChronicleSketchBatchAccessDecisionsInner,
          ChronicleSketchBatchAccessDecisionsInnerBuilder
        > {
  _$ChronicleSketchBatchAccessDecisionsInner? _$v;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  ChronicleSketchBatchAccessDecisionsInnerStatusEnum? _status;
  ChronicleSketchBatchAccessDecisionsInnerStatusEnum? get status =>
      _$this._status;
  set status(ChronicleSketchBatchAccessDecisionsInnerStatusEnum? status) =>
      _$this._status = status;

  ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum? _deliveredAs;
  ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum? get deliveredAs =>
      _$this._deliveredAs;
  set deliveredAs(
    ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum? deliveredAs,
  ) => _$this._deliveredAs = deliveredAs;

  String? _packageId;
  String? get packageId => _$this._packageId;
  set packageId(String? packageId) => _$this._packageId = packageId;

  ChronicleSketchBatchAccessDecisionsInnerBuilder() {
    ChronicleSketchBatchAccessDecisionsInner._defaults(this);
  }

  ChronicleSketchBatchAccessDecisionsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestId = $v.requestId;
      _status = $v.status;
      _deliveredAs = $v.deliveredAs;
      _packageId = $v.packageId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSketchBatchAccessDecisionsInner other) {
    _$v = other as _$ChronicleSketchBatchAccessDecisionsInner;
  }

  @override
  void update(
    void Function(ChronicleSketchBatchAccessDecisionsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSketchBatchAccessDecisionsInner build() => _build();

  _$ChronicleSketchBatchAccessDecisionsInner _build() {
    final _$result =
        _$v ??
        _$ChronicleSketchBatchAccessDecisionsInner._(
          requestId: BuiltValueNullFieldError.checkNotNull(
            requestId,
            r'ChronicleSketchBatchAccessDecisionsInner',
            'requestId',
          ),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'ChronicleSketchBatchAccessDecisionsInner',
            'status',
          ),
          deliveredAs: deliveredAs,
          packageId: packageId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
