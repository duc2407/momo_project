import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int _currentIndex = 3;
  final List<Widget> _views = [
    const Center(child: Text('Home Page')),
    const Center(child: Text('Search Page')),
    const Center(child: Text('Profile Page')),
    const Center(child: Text('Profile Page')),
    const Center(child: Text('Profile Page')),
  ];

  int get currentIndex => _currentIndex;
  Widget get currentView => _views[_currentIndex];

  void setIndex(int index) {
    if (index >= 0 && index < _views.length) {
      _currentIndex = index;
      notifyListeners();
    }
  }
}
