import 'package:flutter_test/flutter_test.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/model/komiku/komiku_chapter_image_list/komiku_chapter_image_list.dart';
import 'package:weebs_app/model/komiku/komiku_detail_model/komiku_detail_model.dart';
import 'package:weebs_app/model/komiku/komiku_list_model/komiku_list_model.dart';
import 'package:weebs_app/services/repositories/komiku_repository.dart';

class KomikuRepositoryUnitTest {
  static Future<void> main() async {
    /// Komiku Manga Param
    String mangaUrl = "";
    String mangaChapterUrl = "";

    /// Test Group
    group('Komiku Repository Test :', () {
      test('Get Latest Manga Test', () async {
        /// Repository
        final repository = getIt<KomikuRepository>();

        /// Get the result
        final res = await repository.getLatestKomik();

        /// Test the result
        res.fold(
          (l) {
            fail(l.message);
          },
          (r) {
            expect(r.data, isNotEmpty);
            mangaUrl = r.data.first.detailUrl;
            expect(r, isA<KomikuListModel>());
          },
        );
      });

      test('Get Manga Detail Test', () async {
        /// Repository
        final repository = getIt<KomikuRepository>();

        /// Get the result
        final res = await repository.getKomikDetail(url: mangaUrl);

        /// Test the result
        res.fold(
          (l) {
            fail(l.message);
          },
          (r) {
            expect(r.chapters, isNotEmpty);
            mangaChapterUrl = r.chapters.first.detailUrl;
            expect(r, isA<KomikuDetailModel>());
          },
        );
      });

      test('Get Manga Chapter Images Test', () async {
        /// Repository
        final repository = getIt<KomikuRepository>();

        /// Get the result
        final res =
            await repository.getKomikDetailChapterImages(url: mangaChapterUrl);

        /// Test the result
        res.fold(
          (l) {
            fail(l.message);
          },
          (r) {
            expect(r.data, isNotEmpty);
            expect(r, isA<KomikuChapterImageListModel>());
          },
        );
      });
    });
  }
}
