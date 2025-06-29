// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_do_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ToDoListRecord> _$toDoListRecordSerializer =
    _$ToDoListRecordSerializer();

class _$ToDoListRecordSerializer
    implements StructuredSerializer<ToDoListRecord> {
  @override
  final Iterable<Type> types = const [ToDoListRecord, _$ToDoListRecord];
  @override
  final String wireName = 'ToDoListRecord';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ToDoListRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[];
    Object? value;
    value = object.toDoDate;
    if (value != null) {
      result
        ..add('toDoDate')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(DateTime)),
        );
    }
    value = object.toDoName;
    if (value != null) {
      result
        ..add('toDoName')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.toDoDescription;
    if (value != null) {
      result
        ..add('toDoDescription')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.toDoState;
    if (value != null) {
      result
        ..add('toDoState')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(bool)),
        );
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(DocumentReference, const [
              const FullType.nullable(Object),
            ]),
          ),
        );
    }
    return result;
  }

  @override
  ToDoListRecord deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ToDoListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'toDoDate':
          result.toDoDate =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime?;
          break;
        case 'toDoName':
          result.toDoName =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'toDoDescription':
          result.toDoDescription =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'toDoState':
          result.toDoState =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool?;
          break;
        case 'Document__Reference__Field':
          result.reference =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DocumentReference, const [
                      const FullType.nullable(Object),
                    ]),
                  )
                  as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ToDoListRecord extends ToDoListRecord {
  @override
  final DateTime? toDoDate;
  @override
  final String? toDoName;
  @override
  final String? toDoDescription;
  @override
  final bool? toDoState;
  @override
  final DocumentReference<Object?>? reference;

  factory _$ToDoListRecord([void Function(ToDoListRecordBuilder)? updates]) =>
      (ToDoListRecordBuilder()..update(updates))._build();

  _$ToDoListRecord._({
    this.toDoDate,
    this.toDoName,
    this.toDoDescription,
    this.toDoState,
    this.reference,
  }) : super._();
  @override
  ToDoListRecord rebuild(void Function(ToDoListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ToDoListRecordBuilder toBuilder() => ToDoListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ToDoListRecord &&
        toDoDate == other.toDoDate &&
        toDoName == other.toDoName &&
        toDoDescription == other.toDoDescription &&
        toDoState == other.toDoState &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, toDoDate.hashCode);
    _$hash = $jc(_$hash, toDoName.hashCode);
    _$hash = $jc(_$hash, toDoDescription.hashCode);
    _$hash = $jc(_$hash, toDoState.hashCode);
    _$hash = $jc(_$hash, reference.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ToDoListRecord')
          ..add('toDoDate', toDoDate)
          ..add('toDoName', toDoName)
          ..add('toDoDescription', toDoDescription)
          ..add('toDoState', toDoState)
          ..add('reference', reference))
        .toString();
  }
}

class ToDoListRecordBuilder
    implements Builder<ToDoListRecord, ToDoListRecordBuilder> {
  _$ToDoListRecord? _$v;

  DateTime? _toDoDate;
  DateTime? get toDoDate => _$this._toDoDate;
  set toDoDate(DateTime? toDoDate) => _$this._toDoDate = toDoDate;

  String? _toDoName;
  String? get toDoName => _$this._toDoName;
  set toDoName(String? toDoName) => _$this._toDoName = toDoName;

  String? _toDoDescription;
  String? get toDoDescription => _$this._toDoDescription;
  set toDoDescription(String? toDoDescription) =>
      _$this._toDoDescription = toDoDescription;

  bool? _toDoState;
  bool? get toDoState => _$this._toDoState;
  set toDoState(bool? toDoState) => _$this._toDoState = toDoState;

  DocumentReference<Object?>? _reference;
  DocumentReference<Object?>? get reference => _$this._reference;
  set reference(DocumentReference<Object?>? reference) =>
      _$this._reference = reference;

  ToDoListRecordBuilder() {
    ToDoListRecord._initializeBuilder(this);
  }

  ToDoListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _toDoDate = $v.toDoDate;
      _toDoName = $v.toDoName;
      _toDoDescription = $v.toDoDescription;
      _toDoState = $v.toDoState;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ToDoListRecord other) {
    _$v = other as _$ToDoListRecord;
  }

  @override
  void update(void Function(ToDoListRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ToDoListRecord build() => _build();

  _$ToDoListRecord _build() {
    final _$result =
        _$v ??
        _$ToDoListRecord._(
          toDoDate: toDoDate,
          toDoName: toDoName,
          toDoDescription: toDoDescription,
          toDoState: toDoState,
          reference: reference,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
