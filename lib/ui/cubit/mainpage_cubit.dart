import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organizer_app/data/entity/messages.dart';
import 'package:organizer_app/data/repo/repository.dart';

class MainpageCubit extends Cubit<List<Messages>>{
  MainpageCubit():super(<Messages>[]);
  var mRepo = Repository();

  Future<void> loadMessages() async {
    var list = await mRepo.loadMessages();
    emit(list);
  }
}