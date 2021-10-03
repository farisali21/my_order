import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_order/mainPage/mainPageModel/main_page_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit of(context) => BlocProvider.of(context);
  int currentPositionfirstOffer = 0;
  final pageControllerFirstOffer = PageController(initialPage: 0);

  List<HomePageModel> _items = [];
  var dio = Dio();

  void updateCurrentPositionFirstOffer(int newPosition) {
    currentPositionfirstOffer = newPosition;
    emit(HomeRebuild());
  }

  Future<void> fetchFood([bool filterByUser = false]) async {
    final filterString = filterByUser ? '' : '';

    var url = '';
    try {
      final response = await dio.get(url);
      final Map<String, dynamic>? extractedData =
          response.data as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      url = '';
      final favouriteResponse = await dio.get(url);
      final favouriteData = favouriteResponse.data;
      final List<HomePageModel> loadedProducts = [];
      extractedData.forEach((prodId, prodData) {
        loadedProducts.add(HomePageModel(
          quantity: 5,
          id: prodId,
          title: prodData['title'],
          // description: prodData['description'],
          price: prodData['price'],
          // isFavourite:
          //     favouriteData == null ? false : favouriteData[prodId] ?? false,
          imageUrl: prodData['imageUrl'],
          // authToken: authToken,
        ));
      });
      _items = loadedProducts;
      // notifyListeners();
    } catch (error) {
      throw (error);
    }
  }
}
