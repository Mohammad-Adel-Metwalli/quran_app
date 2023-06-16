import 'package:flutter/material.dart';
import 'package:quran_app/Features/Home/Presentation/Views/Widgets/custom_app_bar.dart';
import 'package:quran_app/Features/Home/Presentation/Views/Widgets/quran_fehres_list_view.dart';

class QuranFehresBody extends StatelessWidget
{
  const QuranFehresBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return const Stack(
      children: [
        QuranFehresListView(),

        CustomAppBar(),
      ],
    );
  }
}
