import 'package:flutter/material.dart';
import 'package:quran_app/Features/Tasbeeh/Presentation/Views/Widgets/custom_tasbeeh_app_bar.dart';
import 'package:quran_app/Features/Tasbeeh/Presentation/Views/Widgets/tasbeeh_list_view.dart';

class TasbeehBody extends StatefulWidget
{
  const TasbeehBody({Key? key}) : super(key: key);

  @override
  State<TasbeehBody> createState() => _TasbeehBodyState();
}

class _TasbeehBodyState extends State<TasbeehBody>
{
  @override
  Widget build(BuildContext context)
  {
    return const Stack(
      children: [
        TasbeehListView(),

        CustomTasbeehAppBar(),
      ],
    );
  }
}
