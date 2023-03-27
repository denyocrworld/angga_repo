import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class MainMenuView extends StatefulWidget {
  const MainMenuView({Key? key}) : super(key: key);

  Widget build(context, MainMenuController controller) {
    controller.view = this;

    List menuList = [
      {
        "label": "EDashboard1",
        "page": const Edashboard1View(),
      },
      {
        "label": "EDashboard2",
        "page": const Edashboard2View(),
      },
      {
        "label": "EDashboard3",
        "page": const Edashboard3View(),
      },
      {
        "label": "Elist1",
        "page": const Elist1View(),
      },
      {
        "label": "Elist2",
        "page": const Elist2View(),
      },
      {
        "label": "Elist3",
        "page": const Elist3View(),
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("MainMenu"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: menuList.length,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = menuList[index];
                  return Container(
                    height: 42,
                    margin: const EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () => Get.to(item["page"]),
                      child: Text(item["label"]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<MainMenuView> createState() => MainMenuController();
}
