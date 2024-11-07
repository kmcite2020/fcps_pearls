/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Pearl
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  Pearl._({
    required this.id,
    String? statement,
    String? explaination,
    required this.created_at,
    String? answer,
  })  : statement = statement ?? '',
        explaination = explaination ?? '',
        answer = answer ?? '';

  factory Pearl({
    required _i1.UuidValue id,
    String? statement,
    String? explaination,
    required DateTime created_at,
    String? answer,
  }) = _PearlImpl;

  factory Pearl.fromJson(Map<String, dynamic> jsonSerialization) {
    return Pearl(
      id: _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      statement: jsonSerialization['statement'] as String,
      explaination: jsonSerialization['explaination'] as String,
      created_at:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['created_at']),
      answer: jsonSerialization['answer'] as String,
    );
  }

  _i1.UuidValue id;

  String statement;

  String explaination;

  DateTime created_at;

  String answer;

  Pearl copyWith({
    _i1.UuidValue? id,
    String? statement,
    String? explaination,
    DateTime? created_at,
    String? answer,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id.toJson(),
      'statement': statement,
      'explaination': explaination,
      'created_at': created_at.toJson(),
      'answer': answer,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'id': id.toJson(),
      'statement': statement,
      'explaination': explaination,
      'created_at': created_at.toJson(),
      'answer': answer,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _PearlImpl extends Pearl {
  _PearlImpl({
    required _i1.UuidValue id,
    String? statement,
    String? explaination,
    required DateTime created_at,
    String? answer,
  }) : super._(
          id: id,
          statement: statement,
          explaination: explaination,
          created_at: created_at,
          answer: answer,
        );

  @override
  Pearl copyWith({
    _i1.UuidValue? id,
    String? statement,
    String? explaination,
    DateTime? created_at,
    String? answer,
  }) {
    return Pearl(
      id: id ?? this.id,
      statement: statement ?? this.statement,
      explaination: explaination ?? this.explaination,
      created_at: created_at ?? this.created_at,
      answer: answer ?? this.answer,
    );
  }
}
