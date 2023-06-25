import 'package:flutter/material.dart';
import '../../../../../Core/Utils/assets.dart';
import 'morning_azkar_list_view_items.dart';

class MorningAzkarListView extends StatefulWidget
{
  const MorningAzkarListView({super.key});

  @override
  State<MorningAzkarListView> createState() => _MorningAzkarListViewState();
}

class _MorningAzkarListViewState extends State<MorningAzkarListView> {
  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.115),
        itemCount: AssetsData.morningAzkar.length,
        itemBuilder: (context, index)
        {
          return MorningAzkarListViewItems(index: index);
        }
    );
  }
}
