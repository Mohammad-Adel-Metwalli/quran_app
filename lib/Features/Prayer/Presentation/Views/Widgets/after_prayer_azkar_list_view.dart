import 'package:flutter/material.dart';
import '../../../../../Core/Utils/assets.dart';
import 'after_prayer_azkar_list_view_items.dart';

class AfterPrayerAzkarListView extends StatefulWidget
{
  const AfterPrayerAzkarListView({super.key});

  @override
  State<AfterPrayerAzkarListView> createState() => _AfterPrayerAzkarListViewState();
}

class _AfterPrayerAzkarListViewState extends State<AfterPrayerAzkarListView>
{
  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.115),
        itemCount: AssetsData.afterPrayerAzkar.length,
        itemBuilder: (context, index)
        {
          return AfterPrayerAzkarListViewItems(index: index);
        }
    );
  }
}
