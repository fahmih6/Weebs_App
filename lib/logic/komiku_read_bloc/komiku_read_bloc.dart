import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../model/komiku/komiku_detail_model/komiku_detail_model.dart';

part 'komiku_read_event.dart';
part 'komiku_read_state.dart';
part 'komiku_read_bloc.freezed.dart';

class KomikuReadBloc extends HydratedBloc<KomikuReadEvent, KomikuReadState> {
  KomikuReadBloc() : super(const _State()) {
    /// Mark as read
    on<_MarkAsRead>((event, emit) {
      /// Reinitialize
      final komikuData = event.komikuData.copyWith();

      /// State list
      final komikuList = [...state.komikuList];

      /// Komik Index
      final komikIndex =
          komikuList.indexWhere((element) => element.param == komikuData.param);

      /// Chapter List
      final chapterList = [...komikuData.chapters];

      /// Chapter Index
      final chapterIndex = chapterList
          .indexWhere((element) => element.param == event.chapterParam);

      /// Chapter data
      final chapterData = komikuData.chapters
          .firstWhereOrNull((element) => element.param == event.chapterParam)
          ?.copyWith(isRead: true);

      /// Edit the chapter list
      if (chapterIndex >= 0 && chapterData != null) {
        chapterList[chapterIndex] = chapterData;
      }

      /// Modify the komiku data
      final newKomikuData = komikuData.copyWith(chapters: chapterList);

      /// Edit the komiku list
      if (komikIndex >= 0) {
        komikuList[komikIndex] = newKomikuData;
      } else {
        komikuList.add(newKomikuData);
      }

      /// Emit the new komik list
      emit(state.copyWith(komikuList: komikuList));
    });
  }

  @override
  KomikuReadState? fromJson(Map<String, dynamic> json) {
    /// Parse komiku data
    final List<KomikuDetailModel> komikuList = json['komikuList'] != null
        ? (json['komikuList'] as List)
            .map((e) => KomikuDetailModel.fromJson(e))
            .toList()
        : [];

    /// Return state
    return KomikuReadState.state(komikuList: komikuList);
  }

  @override
  Map<String, dynamic>? toJson(KomikuReadState state) {
    return {
      "komikuList": state.komikuList.map((e) => e.toJson()).toList(),
    };
  }

  bool isChapterRead(
      {required String komikuParam, required String chapterParam}) {
    /// Komik Data
    final komikData = state.komikuList
        .firstWhereOrNull((element) => element.param == komikuParam);

    /// Chapter Data
    final chapterData = komikData?.chapters
        .firstWhereOrNull((element) => element.param == chapterParam);

    return chapterData?.isRead ?? false;
  }
}
