// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'window_state_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WindowStateListTypeEnum _$windowStateListTypeEnum_count =
    const WindowStateListTypeEnum._('count');
const WindowStateListTypeEnum _$windowStateListTypeEnum_absence =
    const WindowStateListTypeEnum._('absence');
const WindowStateListTypeEnum _$windowStateListTypeEnum_anomaly =
    const WindowStateListTypeEnum._('anomaly');

WindowStateListTypeEnum _$windowStateListTypeEnumValueOf(String name) {
  switch (name) {
    case 'count':
      return _$windowStateListTypeEnum_count;
    case 'absence':
      return _$windowStateListTypeEnum_absence;
    case 'anomaly':
      return _$windowStateListTypeEnum_anomaly;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WindowStateListTypeEnum> _$windowStateListTypeEnumValues =
    BuiltSet<WindowStateListTypeEnum>(const <WindowStateListTypeEnum>[
      _$windowStateListTypeEnum_count,
      _$windowStateListTypeEnum_absence,
      _$windowStateListTypeEnum_anomaly,
    ]);

Serializer<WindowStateListTypeEnum> _$windowStateListTypeEnumSerializer =
    _$WindowStateListTypeEnumSerializer();

class _$WindowStateListTypeEnumSerializer
    implements PrimitiveSerializer<WindowStateListTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'count': 'count',
    'absence': 'absence',
    'anomaly': 'anomaly',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'count': 'count',
    'absence': 'absence',
    'anomaly': 'anomaly',
  };

  @override
  final Iterable<Type> types = const <Type>[WindowStateListTypeEnum];
  @override
  final String wireName = 'WindowStateListTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    WindowStateListTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WindowStateListTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WindowStateListTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WindowStateList extends WindowStateList {
  @override
  final String ruleId;
  @override
  final WindowStateListTypeEnum type;
  @override
  final BuiltList<WindowState> groups;
  @override
  final bool? groupsTruncated;

  factory _$WindowStateList([void Function(WindowStateListBuilder)? updates]) =>
      (WindowStateListBuilder()..update(updates))._build();

  _$WindowStateList._({
    required this.ruleId,
    required this.type,
    required this.groups,
    this.groupsTruncated,
  }) : super._();
  @override
  WindowStateList rebuild(void Function(WindowStateListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WindowStateListBuilder toBuilder() => WindowStateListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WindowStateList &&
        ruleId == other.ruleId &&
        type == other.type &&
        groups == other.groups &&
        groupsTruncated == other.groupsTruncated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, groupsTruncated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WindowStateList')
          ..add('ruleId', ruleId)
          ..add('type', type)
          ..add('groups', groups)
          ..add('groupsTruncated', groupsTruncated))
        .toString();
  }
}

class WindowStateListBuilder
    implements Builder<WindowStateList, WindowStateListBuilder> {
  _$WindowStateList? _$v;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  WindowStateListTypeEnum? _type;
  WindowStateListTypeEnum? get type => _$this._type;
  set type(WindowStateListTypeEnum? type) => _$this._type = type;

  ListBuilder<WindowState>? _groups;
  ListBuilder<WindowState> get groups =>
      _$this._groups ??= ListBuilder<WindowState>();
  set groups(ListBuilder<WindowState>? groups) => _$this._groups = groups;

  bool? _groupsTruncated;
  bool? get groupsTruncated => _$this._groupsTruncated;
  set groupsTruncated(bool? groupsTruncated) =>
      _$this._groupsTruncated = groupsTruncated;

  WindowStateListBuilder() {
    WindowStateList._defaults(this);
  }

  WindowStateListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleId = $v.ruleId;
      _type = $v.type;
      _groups = $v.groups.toBuilder();
      _groupsTruncated = $v.groupsTruncated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WindowStateList other) {
    _$v = other as _$WindowStateList;
  }

  @override
  void update(void Function(WindowStateListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WindowStateList build() => _build();

  _$WindowStateList _build() {
    _$WindowStateList _$result;
    try {
      _$result =
          _$v ??
          _$WindowStateList._(
            ruleId: BuiltValueNullFieldError.checkNotNull(
              ruleId,
              r'WindowStateList',
              'ruleId',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'WindowStateList',
              'type',
            ),
            groups: groups.build(),
            groupsTruncated: groupsTruncated,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        groups.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WindowStateList',
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
