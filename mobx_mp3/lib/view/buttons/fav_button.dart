import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_mp3/view_model/fav_button/fav_button_model.dart';

class FavButton extends StatelessWidget {
  FavButton({Key? key}) : super(key: key);

  final _viewModel = FavButtonModel();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _viewModel.onFavPressed(),
      child: Observer(
        builder: (_) {
          return Icon(
            _viewModel.isFavTrue ? Icons.favorite : Icons.favorite_border,
          );
        },
      ),
    );
  }
}
