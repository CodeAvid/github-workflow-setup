enum Flavor {
  prod,
  qa,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'Skynet';
      case Flavor.qa:
        return 'Skynet QA';
      default:
        return 'title';
    }
  }

}
