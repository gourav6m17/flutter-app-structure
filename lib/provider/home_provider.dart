import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../data/repository/home_repo.dart';
import '../data/repository/project_model/home_page_model.dart';

class HomeProvider extends ChangeNotifier {
  final HomeRepo homeRepo;

  HomeProvider({required this.homeRepo});
  HomePageModel? homePageModel;
  bool isLoading = false;

  Future<HomePageModel?> fetchHomeData() async {
    isLoading = true;
    notifyListeners();
    final response = await homeRepo.fetchHomeData();
    if (response.response.statusCode == 200) {
      isLoading = false;

      homePageModel = HomePageModel.fromJson(response.response.data);
      notifyListeners();
    } else {
      isLoading = false;
      Fluttertoast.showToast(msg: "Unable to prcoeed request.");
    }
    return homePageModel;
  }
}
