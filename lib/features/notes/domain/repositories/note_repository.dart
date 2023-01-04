import 'package:dartz/dartz.dart';
import 'package:notely/core/error/exception.dart';
import 'package:notely/features/notes/domain/entities/note.dart';

abstract class BaseNoteRepository {
  Future<Either<Failure, List<Note>>> getAllNotes();
  Future<Either<Failure, List<Note>>> addNote({
    required String title,
    required String description,
  });
  Future<Either<Failure, List<Note>>> updateNote({
    required int id,
    required String title,
    required String description,
  });
  Future<Either<Failure, List<Note>>> deleteNote({required int id});
  Future<Either<Failure, List<Note>>> pinNote({
    required int id,
    required int isPinned,
  });
}
