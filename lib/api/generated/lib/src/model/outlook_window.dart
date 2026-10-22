//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/quantiles.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'outlook_window.g.dart';

/// One rolling 4-week window of a regional outlook
///
/// Properties:
/// * [index]
/// * [windowStart]
/// * [windowEnd]
/// * [quantiles]
/// * [questionId] - ULID identifier
/// * [status]
/// * [actual]
/// * [withinP10P90]
/// * [exceedance]
@BuiltValue()
abstract class OutlookWindow
    implements Built<OutlookWindow, OutlookWindowBuilder> {
  @BuiltValueField(wireName: r'index')
  int get index;

  @BuiltValueField(wireName: r'windowStart')
  Date get windowStart;

  @BuiltValueField(wireName: r'windowEnd')
  Date get windowEnd;

  @BuiltValueField(wireName: r'quantiles')
  Quantiles get quantiles;

  /// ULID identifier
  @BuiltValueField(wireName: r'questionId')
  String? get questionId;

  @BuiltValueField(wireName: r'status')
  OutlookWindowStatusEnum get status;
  // enum statusEnum {  open,  resolved,  annulled,  };

  @BuiltValueField(wireName: r'actual')
  int? get actual;

  @BuiltValueField(wireName: r'withinP10P90')
  bool? get withinP10P90;

  @BuiltValueField(wireName: r'exceedance')
  OutlookWindowExceedanceEnum? get exceedance;
  // enum exceedanceEnum {  above-p95,  below-p05,  };

  OutlookWindow._();

  factory OutlookWindow([void updates(OutlookWindowBuilder b)]) =
      _$OutlookWindow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OutlookWindowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OutlookWindow> get serializer =>
      _$OutlookWindowSerializer();
}

class _$OutlookWindowSerializer implements PrimitiveSerializer<OutlookWindow> {
  @override
  final Iterable<Type> types = const [OutlookWindow, _$OutlookWindow];

  @override
  final String wireName = r'OutlookWindow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OutlookWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'index';
    yield serializers.serialize(
      object.index,
      specifiedType: const FullType(int),
    );
    yield r'windowStart';
    yield serializers.serialize(
      object.windowStart,
      specifiedType: const FullType(Date),
    );
    yield r'windowEnd';
    yield serializers.serialize(
      object.windowEnd,
      specifiedType: const FullType(Date),
    );
    yield r'quantiles';
    yield serializers.serialize(
      object.quantiles,
      specifiedType: const FullType(Quantiles),
    );
    if (object.questionId != null) {
      yield r'questionId';
      yield serializers.serialize(
        object.questionId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(OutlookWindowStatusEnum),
    );
    if (object.actual != null) {
      yield r'actual';
      yield serializers.serialize(
        object.actual,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.withinP10P90 != null) {
      yield r'withinP10P90';
      yield serializers.serialize(
        object.withinP10P90,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.exceedance != null) {
      yield r'exceedance';
      yield serializers.serialize(
        object.exceedance,
        specifiedType: const FullType.nullable(OutlookWindowExceedanceEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OutlookWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OutlookWindowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.index = valueDes;
          break;
        case r'windowStart':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Date),
                  )
                  as Date;
          result.windowStart = valueDes;
          break;
        case r'windowEnd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Date),
                  )
                  as Date;
          result.windowEnd = valueDes;
          break;
        case r'quantiles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Quantiles),
                  )
                  as Quantiles;
          result.quantiles.replace(valueDes);
          break;
        case r'questionId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.questionId = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(OutlookWindowStatusEnum),
                  )
                  as OutlookWindowStatusEnum;
          result.status = valueDes;
          break;
        case r'actual':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.actual = valueDes;
          break;
        case r'withinP10P90':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.withinP10P90 = valueDes;
          break;
        case r'exceedance':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      OutlookWindowExceedanceEnum,
                    ),
                  )
                  as OutlookWindowExceedanceEnum?;
          if (valueDes == null) continue;
          result.exceedance = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OutlookWindow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OutlookWindowBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class OutlookWindowStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'open')
  static const OutlookWindowStatusEnum open = _$outlookWindowStatusEnum_open;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const OutlookWindowStatusEnum resolved =
      _$outlookWindowStatusEnum_resolved;
  @BuiltValueEnumConst(wireName: r'annulled')
  static const OutlookWindowStatusEnum annulled =
      _$outlookWindowStatusEnum_annulled;

  static Serializer<OutlookWindowStatusEnum> get serializer =>
      _$outlookWindowStatusEnumSerializer;

  const OutlookWindowStatusEnum._(String name) : super(name);

  static BuiltSet<OutlookWindowStatusEnum> get values =>
      _$outlookWindowStatusEnumValues;
  static OutlookWindowStatusEnum valueOf(String name) =>
      _$outlookWindowStatusEnumValueOf(name);
}

class OutlookWindowExceedanceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'above-p95')
  static const OutlookWindowExceedanceEnum aboveP95 =
      _$outlookWindowExceedanceEnum_aboveP95;
  @BuiltValueEnumConst(wireName: r'below-p05')
  static const OutlookWindowExceedanceEnum belowP05 =
      _$outlookWindowExceedanceEnum_belowP05;

  static Serializer<OutlookWindowExceedanceEnum> get serializer =>
      _$outlookWindowExceedanceEnumSerializer;

  const OutlookWindowExceedanceEnum._(String name) : super(name);

  static BuiltSet<OutlookWindowExceedanceEnum> get values =>
      _$outlookWindowExceedanceEnumValues;
  static OutlookWindowExceedanceEnum valueOf(String name) =>
      _$outlookWindowExceedanceEnumValueOf(name);
}
