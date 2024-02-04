import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:file_picker/file_picker.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<EnPickFile>(_onEnPickFile);
  }

  Future<FutureOr<void>> _onEnPickFile(
    EnPickFile event,
    Emitter<HomeState> emit,
  ) async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      final file = result.files.first;
    }
  }
}
