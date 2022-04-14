import 'package:get/get.dart';

mixin GetViewModel<T> {
  T get viewModel => GetInstance().find<T>();
  T get controller => GetInstance().find<T>();
}
