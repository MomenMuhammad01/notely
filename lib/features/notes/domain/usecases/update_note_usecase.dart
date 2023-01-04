// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:notely/core/error/exception.dart';
import 'package:notely/core/usecase/base_use_case.dart';
import 'package:notely/features/notes/domain/entities/note.dart';
import 'package:notely/features/notes/domain/repositories/note_repository.dart';

class UpdateNoteUseCase implements UseCase<List<Note>, int, String, String> {
  BaseNoteRepository baseNoteRepository;
  UpdateNoteUseCase({required this.baseNoteRepository});

  @override
  Future<Either<Failure, List<Note>>> call(
      int noteId, String noteTitle, String noteDescription) async{
    return await baseNoteRepository.updateNote(id: noteId, title: noteTitle, description: noteDescription);
  }
}
