import 'package:flutter/material.dart';
import 'package:flutterhttp/HttpFlowers/model/http_flower_model.dart';
import '../viewModel/http_flowers._view_model.dart';

class HttpFlowersView extends HttpFlowersViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView.builder(
          itemCount: httpflowers.length,
          itemBuilder: (context, index) =>buildCard(httpflowers[index])
              ),
    );
  }

  Card buildCard(HttpFlowerModel flower) {
    return Card(
          margin: EdgeInsets.all(40),
          child: ListTile(
            title: Image.network(flower.imageUrl),
            subtitle: Text(flower.description),
            
            
          ),
        );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: buildAppBarTitle(),
      leading: buildPaddingProgress,
      actions: [
        IconButton(icon: Icon(Icons.child_care), onPressed: null)
      ],
      
    );
  }

  Widget get buildPaddingProgress {
    return Visibility(
      visible: isLoading,
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
        child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
      ),
    );
  }

  Text buildAppBarTitle() => Text("Cennetten Çiçek ");
}
