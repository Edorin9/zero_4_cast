import 'package:auto_route/auto_route_annotations.dart';

import 'pages/detail_page/detail_page.dart';
import 'pages/main_page/main_page.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: MainPage, initial: true),
  MaterialRoute(page: DetailPage)
])
class $Router {}
