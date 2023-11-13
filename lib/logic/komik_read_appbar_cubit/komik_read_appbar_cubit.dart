import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weebs_app/helpers/general/debouncer.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';

import '../komiku_detail_fetch_bloc/komiku_detail_fetch_bloc.dart';

part 'komik_read_appbar_state.dart';
part 'komik_read_appbar_cubit.freezed.dart';

class KomikReadAppbarCubit extends Cubit<KomikReadAppbarState> {
  final Debouncer debouncer = Debouncer(duration: const Duration(seconds: 3));
  KomikReadAppbarCubit() : super(const KomikReadAppbarState.state());

  /// Init
  void init({required String currentChapterParam}) {
    toggleShowAppbar();
    getAppbarTitle(currentChapterParam: currentChapterParam);
  }

  /// Show app bar for 2 seconds
  void toggleShowAppbar() {
    /// Show app bar
    emit(state.copyWith(shouldShow: true));

    /// Hide app bar within 3 seconds
    debouncer.run(() {
      emit(state.copyWith(shouldShow: false));
    });
  }

  /// App bar title
  void getAppbarTitle({required String currentChapterParam}) {
    /// Title
    final title = getIt<KomikuDetailFetchBloc>().state.mapOrNull(
            completed: (value) => value.komikuDetailModel.chapters
                .firstWhereOrNull(
                    (element) => element.param == currentChapterParam)
                ?.chapter) ??
        "-";

    /// Emit the title
    emit(state.copyWith(title: title));
  }
}
