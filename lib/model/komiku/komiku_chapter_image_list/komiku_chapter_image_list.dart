import 'package:freezed_annotation/freezed_annotation.dart';

part 'komiku_chapter_image_list.freezed.dart';
part 'komiku_chapter_image_list.g.dart';

@freezed
class KomikuChapterImageListModel with _$KomikuChapterImageListModel {
  const factory KomikuChapterImageListModel({
    @Default([]) List<String> data,
  }) = _KomikuChapterImageListModel;

  factory KomikuChapterImageListModel.fromJson(Map<String, dynamic> json) =>
      _$KomikuChapterImageListModelFromJson(json);
}
