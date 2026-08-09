import 'package:bloc/bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:injectable/injectable.dart';
import 'package:mentorship_4/core/resources/language_manager.dart';
@singleton
class LocaleCubit extends Cubit<String> {
  LocaleCubit() : super('en');
  final localization = FlutterLocalization.instance;
  void init() {
    localization.init(
      mapLocales: [const MapLocale('en', AppLocale.EN), const MapLocale('ar', AppLocale.AR)],
      initLanguageCode: 'en',
    );
    localization.onTranslatedLanguage = (locale) => emit(locale?.languageCode ?? 'en');
  }

  void toggle() => changeLanguage(state == 'en' ? 'ar' : 'en');

  void changeLanguage(String code) => localization.translate(code);
}
