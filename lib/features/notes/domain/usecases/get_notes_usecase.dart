// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:notely/core/error/exception.dart';
import 'package:notely/core/usecase/base_use_case.dart';
import 'package:notely/features/notes/domain/entities/note.dart';
import 'package:notely/features/notes/domain/repositories/note_repository.dart';

class GetNotesUseCase
    implements UseCase<List<Note>, NoParameters, NoParameters, NoParameters> {
  BaseNoteRepository baseNoteRepository;
  GetNotesUseCase({required this.baseNoteRepository});

  @override
  Future<Either<Failure, List<Note>>> call(NoParameters noParameterOne,
      NoParameters noParameterTwo, NoParameters noParameterThree) async {
    return await baseNoteRepository.getAllNotes();
  }
}
