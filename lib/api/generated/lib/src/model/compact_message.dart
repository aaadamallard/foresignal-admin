//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'compact_message.g.dart';

/// Compact prioritised event message: an integer-key CBOR map (084 MeshCborProfile extended by 113), at most 160 bytes; keys 9 then 8 are dropped first to fit, keys 10–12 are kept. Shown here with the integer keys as strings (113)
///
/// Properties:
/// * [n0] - Format version
/// * [n1] - Message type (084 types; 5 = intelligence event)
/// * [n2] - Short code
/// * [n3] - Severity: 0 info, 1 warning, 2 critical
/// * [n4] - Kind
/// * [n5] - Latitude × 1e5
/// * [n6] - Longitude × 1e5
/// * [n7] - Epoch seconds
/// * [n8] - Title (truncated on a UTF-8 boundary)
/// * [n9] - Source id
/// * [n10] - Origin instance short id (4 bytes)
/// * [n11] - Message id: first 8 bytes of SHA-256 of the origin ref
/// * [n12] - Expiry in minutes after key 7
@BuiltValue()
abstract class CompactMessage
    implements Built<CompactMessage, CompactMessageBuilder> {
  /// Format version
  @BuiltValueField(wireName: r'0')
  CompactMessageN0Enum get n0;
  // enum n0Enum {  1,  };

  /// Message type (084 types; 5 = intelligence event)
  @BuiltValueField(wireName: r'1')
  int get n1;

  /// Short code
  @BuiltValueField(wireName: r'2')
  String? get n2;

  /// Severity: 0 info, 1 warning, 2 critical
  @BuiltValueField(wireName: r'3')
  int get n3;

  /// Kind
  @BuiltValueField(wireName: r'4')
  String? get n4;

  /// Latitude × 1e5
  @BuiltValueField(wireName: r'5')
  int? get n5;

  /// Longitude × 1e5
  @BuiltValueField(wireName: r'6')
  int? get n6;

  /// Epoch seconds
  @BuiltValueField(wireName: r'7')
  int get n7;

  /// Title (truncated on a UTF-8 boundary)
  @BuiltValueField(wireName: r'8')
  String? get n8;

  /// Source id
  @BuiltValueField(wireName: r'9')
  String? get n9;

  /// Origin instance short id (4 bytes)
  @BuiltValueField(wireName: r'10')
  String? get n10;

  /// Message id: first 8 bytes of SHA-256 of the origin ref
  @BuiltValueField(wireName: r'11')
  String? get n11;

  /// Expiry in minutes after key 7
  @BuiltValueField(wireName: r'12')
  int? get n12;

  CompactMessage._();

  factory CompactMessage([void updates(CompactMessageBuilder b)]) =
      _$CompactMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CompactMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CompactMessage> get serializer =>
      _$CompactMessageSerializer();
}

class _$CompactMessageSerializer
    implements PrimitiveSerializer<CompactMessage> {
  @override
  final Iterable<Type> types = const [CompactMessage, _$CompactMessage];

  @override
  final String wireName = r'CompactMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CompactMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'0';
    yield serializers.serialize(
      object.n0,
      specifiedType: const FullType(CompactMessageN0Enum),
    );
    yield r'1';
    yield serializers.serialize(
      object.n1,
      specifiedType: const FullType(int),
    );
    if (object.n2 != null) {
      yield r'2';
      yield serializers.serialize(
        object.n2,
        specifiedType: const FullType(String),
      );
    }
    yield r'3';
    yield serializers.serialize(
      object.n3,
      specifiedType: const FullType(int),
    );
    if (object.n4 != null) {
      yield r'4';
      yield serializers.serialize(
        object.n4,
        specifiedType: const FullType(String),
      );
    }
    if (object.n5 != null) {
      yield r'5';
      yield serializers.serialize(
        object.n5,
        specifiedType: const FullType(int),
      );
    }
    if (object.n6 != null) {
      yield r'6';
      yield serializers.serialize(
        object.n6,
        specifiedType: const FullType(int),
      );
    }
    yield r'7';
    yield serializers.serialize(
      object.n7,
      specifiedType: const FullType(int),
    );
    if (object.n8 != null) {
      yield r'8';
      yield serializers.serialize(
        object.n8,
        specifiedType: const FullType(String),
      );
    }
    if (object.n9 != null) {
      yield r'9';
      yield serializers.serialize(
        object.n9,
        specifiedType: const FullType(String),
      );
    }
    if (object.n10 != null) {
      yield r'10';
      yield serializers.serialize(
        object.n10,
        specifiedType: const FullType(String),
      );
    }
    if (object.n11 != null) {
      yield r'11';
      yield serializers.serialize(
        object.n11,
        specifiedType: const FullType(String),
      );
    }
    if (object.n12 != null) {
      yield r'12';
      yield serializers.serialize(
        object.n12,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CompactMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CompactMessageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'0':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CompactMessageN0Enum),
          ) as CompactMessageN0Enum;
          result.n0 = valueDes;
          break;
        case r'1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.n1 = valueDes;
          break;
        case r'2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.n2 = valueDes;
          break;
        case r'3':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.n3 = valueDes;
          break;
        case r'4':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.n4 = valueDes;
          break;
        case r'5':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.n5 = valueDes;
          break;
        case r'6':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.n6 = valueDes;
          break;
        case r'7':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.n7 = valueDes;
          break;
        case r'8':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.n8 = valueDes;
          break;
        case r'9':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.n9 = valueDes;
          break;
        case r'10':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.n10 = valueDes;
          break;
        case r'11':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.n11 = valueDes;
          break;
        case r'12':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.n12 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CompactMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CompactMessageBuilder();
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

/// Format version
class CompactMessageN0Enum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 1)
  static const CompactMessageN0Enum number1 = _$compactMessageN0Enum_number1;

  static Serializer<CompactMessageN0Enum> get serializer =>
      _$compactMessageN0EnumSerializer;

  const CompactMessageN0Enum._(String name) : super(name);

  static BuiltSet<CompactMessageN0Enum> get values =>
      _$compactMessageN0EnumValues;
  static CompactMessageN0Enum valueOf(String name) =>
      _$compactMessageN0EnumValueOf(name);
}
