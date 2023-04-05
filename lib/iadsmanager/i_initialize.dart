typedef OnInitializationComplete = void Function();

class IInitialize {
  final OnInitializationComplete? onInitializationComplete;
  IInitialize({this.onInitializationComplete});
}
