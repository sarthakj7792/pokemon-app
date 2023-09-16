// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/configs/durations.dart';
import '/configs/images.dart';
import '/core/extensions/animation.dart';
import '/states/item/item_bloc.dart';
import '/states/item/item_event.dart';
import '/states/item/item_selector.dart';
import '/states/item/item_state.dart';
import '/ui/modals/generation_modal.dart';
import '/ui/modals/search_modal.dart';
import '/ui/widgets/animated_overlay.dart';
import '/ui/widgets/fab.dart';
import '/ui/widgets/main_app_bar.dart';
import '/ui/widgets/pokeball_background.dart';
import '/ui/widgets/pokemon_refresh_control.dart';

import 'widgets/item_card.dart';

part 'sections/fab_menu.dart';
part 'sections/items_grid.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ItemsScreenState createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return const PokeballBackground(
      child: Stack(
        children: [
          _ItemGrid(),
        ],
      ),
    );
  }
}
