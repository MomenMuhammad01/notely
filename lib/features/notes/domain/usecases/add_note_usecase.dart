import 'package:notely/core/error/exception.dart';
import 'package:dartz/dartz.dart';
import 'package:notely/core/usecase/base_use_case.dart';
import 'package:notely/features/notes/domain/entities/note.dart';
import 'package:notely/features/notes/domain/repositories/note_repository.dart';

class AddNoteUseCase implements UseCase<List<Note>, String, String, NoParameters> {
  BaseNoteRepository baseNoteRepository;

  AddNoteUseCase({required this.baseNoteRepository});
  
  @override
  Future<Either<Failure, List<Note>>> call(String noteTitle, String noteDescription, NoParameters noParameters) async{
    return await baseNoteRepository.addNote(title: noteTitle, description: noteDescription);
  }
  
}
