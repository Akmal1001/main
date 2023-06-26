import 'dart:io';

import 'package:aplication/service/get_currency_service.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

import '../model/news_model.dart';

class NewRepository {
  Box<NewsModel>? newsBox;
  GetNewscyService getNewscyService = GetNewscyService();

  Future<dynamic> getNews() async {
    dynamic response = await getNewscyService.getCyrrency();
    if (response is List<NewsModel>) {
      await openBox();
      await writeToBox(response);
      return newsBox;
    } else {
      return response;
    }
  }

  Future<void> openBox() async {
    Directory appDocDir = await getApplicationSupportDirectory();
    Hive.init(appDocDir.path);
    newsBox = await Hive.openBox<NewsModel>("news");
  }

  void registerAdapter() {
    Hive.registerAdapter(NewsModelAdapter());
    Hive.registerAdapter(AddressAdapter());
    Hive.registerAdapter(GeoAdapter());
    Hive.registerAdapter(CompanyAdapter());
  }

  Future <void> writeToBox( List <NewsModel> data ) async {
    await newsBox!.clear();
    for (int i = 0; i < data.length; i++) {
      await newsBox!.add(data[i]);
    }
  }
}