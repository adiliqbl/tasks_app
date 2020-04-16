import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'TaskModel.dart';

class Providers {
  Providers._();

  static TaskModel tasksProvider(BuildContext context, [listen = false]) =>
      Provider.of<TaskModel>(context, listen: listen);
}
