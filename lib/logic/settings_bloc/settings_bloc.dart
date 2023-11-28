import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:weebs_app/model/settings/settings_model.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends HydratedBloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(const _State()) {
    /// Setting Toggle
    on<_Started>((event, emit) {
      emit(
        state.copyWith(
          settingsData: state.map(
            state: (value) => value.settingsData.copyWith(
              /// App Bar Video
              anoboyAppBarVideo: event.anoboyAppBarVideo ??
                  value.settingsData.anoboyAppBarVideo,

              /// Komik Read Image Mode.
              komikReadImageMode: event.komikReadImageMode ??
                  value.settingsData.komikReadImageMode,
            ),
          ),
        ),
      );
    });
  }

  /// Switch Komik Read Mode
  void switchKomikReadMode() {
    state.map(
      state: (value) {
        switch (value.settingsData.komikReadImageMode) {
          case KomikReadImageMode.normal:
            add(
              const SettingsEvent.started(
                komikReadImageMode: KomikReadImageMode.fitHeight,
              ),
            );
            break;
          case KomikReadImageMode.fitHeight:
            add(
              const SettingsEvent.started(
                komikReadImageMode: KomikReadImageMode.fillWidth,
              ),
            );
            break;
          default:
            add(
              const SettingsEvent.started(
                komikReadImageMode: KomikReadImageMode.normal,
              ),
            );
        }
      },
    );
  }

  @override
  SettingsState? fromJson(Map<String, dynamic> json) {
    return state.copyWith(settingsData: SettingsModel.fromJson(json));
  }

  @override
  Map<String, dynamic>? toJson(SettingsState state) {
    return state.map(
      state: (value) => value.settingsData.toJson(),
    );
  }
}
