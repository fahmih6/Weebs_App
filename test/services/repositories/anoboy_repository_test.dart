import 'package:flutter_test/flutter_test.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/model/anoboy/anoboy_detail_model/anoboy_detail_model.dart';
import 'package:weebs_app/model/anoboy/anoboy_list_model/anoboy_list_model.dart';
import 'package:weebs_app/services/repositories/anoboy_repository.dart';

class AnoboyRepositoryUnitTest {
  static Future<void> main() async {
    /// Anime Param
    String param = "2022~12~yama-no-susume-next-summit-episode-10~";

    /// Test Group
    group('Anoboy Repository Test :', () {
      test('Get Latest Anime Test', () async {
        /// Repository
        final repository = getIt<AnoboyRepository>();

        /// Get anoboy latest anime
        final res = await repository.getLatestAnime();

        /// Test the result.
        res.fold(
          (l) => fail(l.message),
          (r) {
            expect(r.data, isNotEmpty);
            param = r.data.first.param;
            expect(r, isA<AnoboyListModel>());
          },
        );

        /// Get anoboy latest anime V2
        final resV2 = await repository.getLatestAnime();

        /// Test the result
        resV2.fold(
          (l) => fail(l.message),
          (r) {
            expect(r.data, isNotEmpty);
            expect(r, isA<AnoboyListModel>());
          },
        );
      });

      test('Get Anime Detail Test', () async {
        /// Repository
        final repository = getIt<AnoboyRepository>();

        /// Get anime detail from anoboy
        final res = await repository.getAnimeDetail(param: param);

        /// Test the result.
        res.fold(
          (l) => fail(l.message),
          (r) => expect(r, isA<AnoboyDetailModel>()),
        );

        /// Get anime detail from anoboy V2
        final resV2 = await repository.getAnimeDetail(param: param);

        /// Test the result.
        resV2.fold(
          (l) => fail(l.message),
          (r) => expect(r, isA<AnoboyDetailModel>()),
        );
      });
    });
  }
}
