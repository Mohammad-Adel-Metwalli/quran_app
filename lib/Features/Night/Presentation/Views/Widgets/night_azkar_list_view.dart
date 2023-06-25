import 'package:flutter/material.dart';
import '../../../../../Core/Utils/assets.dart';
import 'night_azkar_list_view_items.dart';

class NightAzkarListView extends StatefulWidget
{
  const NightAzkarListView({super.key});

  @override
  State<NightAzkarListView> createState() => _NightAzkarListViewState();
}

class _NightAzkarListViewState extends State<NightAzkarListView>
{
  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.115),
        itemCount: AssetsData.nightAzkar.length,
        itemBuilder: (context, index)
        {
          return NightAzkarListViewItems(index: index);
        }
    );
  }
}
