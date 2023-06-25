import 'package:flutter/material.dart';
import '../../../../../Core/Utils/assets.dart';
import 'masjed_azkar_list_view_items.dart';

class MasjedAzkarListView extends StatefulWidget
{
  const MasjedAzkarListView({super.key});

  @override
  State<MasjedAzkarListView> createState() => _MasjedAzkarListViewState();
}

class _MasjedAzkarListViewState extends State<MasjedAzkarListView>
{
  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.115),
        itemCount: AssetsData.masjedAzkar.length,
        itemBuilder: (context, index)
        {
          return MasjedAzkarListViewItems(index: index);
        }
    );
  }
}
