import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stakproject/Ui/Home/Home_Controller.dart';
// import 'package:stackflutter/ui/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onViewModelReady: (viewModel) {
          viewModel?.getPersons();
        },
        builder: (context, viewModel, child) {
          return Scaffold(
              body: viewModel.isDataFetched
                  ? ListView.builder(
                      itemCount: viewModel.persons.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(viewModel.persons[index].name),
                          subtitle:
                              Text(viewModel.persons[index].id.toString()),
                        );
                      },
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    ));
        });
  }
}
