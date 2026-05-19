import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note/constant.dart';
import 'package:note/model/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());

  fetchAllNotes() async {
    emit(NotesCubitLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesCubitSuccess(notes));
    } on Exception catch (e) {
      emit(NotesCubitFailure(e.toString()));
    }
  }
}
