// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "body_profile": "Hello, my name is Arif Rahman. Graduated from Gunadarma University in 2018 with bachelor degree in Information Systems. Interested in mobile application development especially in Android. Experienced as Mobile Apps Developer. Curenntly maintaining apps using Flutter and Java for Android",
  "technical_skill": "Technical skills : Flutter and Java for Android",
  "experience": "Experience",
  "contacts": "Contacts",
  "himas_desc": "Hijrah Masjid serves as a mobile apps to bulid a Mosque ecosistem as the economic center of the Islamic community",
  "hinus_desc": "The Hijrah Nuswantara application is a donation-raising application that specializes in helping mosque throughout the country, from the nearest mosque to mosques that are far from your reach."
};
static const Map<String,dynamic> id = {
  "body_profile": "Halo, Nama saya Arif Rahman. Lulus dari Universitas Gunadarma pada tahun 2018, dari jurusan Sistem Informasi. Tertarik pada pengembangan aplikasi berbasis mobile, terutama Android. Berpengalaman sebagai Mobile apps developer. Saat ini sedang memelihara dan mengembangkan aplikasi menggunakan Flutter dan Java untuk Android",
  "technical_skill": "Skill Teknikal : Flutter dan Java untuk Android",
  "experience": "Pengalaman",
  "contacts": "Kontak",
  "himas_desc": "Hijrah Masjid berfungsi sebagai aplikasi mobile untuk membangun ekosistem masjid sebagai pusat ekonomi ummat Islam",
  "hinus_desc": "Aplikasi Hijrah Nuswantara adalah aplikasi penggalangan donasi yang mengkhususkan membantu masjid di seluruh penjuru negeri, dari Masjid yang terdekat hingga Masjid yang jauh dari jangkauanmu."
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "id": id};
}
