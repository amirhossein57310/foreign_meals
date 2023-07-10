import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/model/filter_state.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filterState = Provider.of<FilterState>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          'Filter',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SwitchListTile(
              title: Text(
                'IsGlutenFree',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              value: filterState.isGlutenFree,
              onChanged: (value) {
                filterState.toggleGlutenFree();
              },
            ),
            SwitchListTile(
              title: Text(
                'IsLactosFree',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              value: filterState.isLactoseFree,
              onChanged: (value) {
                filterState.toggleLactoseFree();
              },
            ),
            SwitchListTile(
              title: Text(
                'IsVeganFree',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              value: filterState.isVeganFree,
              onChanged: (value) {
                filterState.toggleVeganFree();
              },
            ),
            SwitchListTile(
              title: Text(
                'IsVegetrainFree',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              value: filterState.isVegetrainFree,
              onChanged: (value) {
                filterState.toggleVegetrainFree();
              },
            ),
          ],
        ),
      ),
    );
  }
}
