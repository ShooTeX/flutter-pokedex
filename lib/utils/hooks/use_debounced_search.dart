import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

String useDebouncedSearch(TextEditingController controller) {
  final search = useState(controller.text);

  useEffect(() {
    Timer? timer;
    void listener() {
      timer?.cancel();
      timer = Timer(
        const Duration(milliseconds: 1000),
        () => search.value = controller.text,
      );
    }

    controller.addListener(listener);
    return () {
      timer?.cancel();
      controller.removeListener(listener);
    };
  }, [controller]);

  return search.value;
}
