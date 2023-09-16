// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/configs/durations.dart';
import '/configs/images.dart';
import '/core/extensions/animation.dart';
import '/domain/entities/pokemon.dart';
import '/routes.dart';
import '/states/pokemon/pokemon_bloc.dart';
import '/states/pokemon/pokemon_event.dart';
import '/states/pokemon/pokemon_selector.dart';
import '/states/pokemon/pokemon_state.dart';
import '/ui/modals/generation_modal.dart';
import '/ui/modals/search_modal.dart';
import '/ui/widgets/pokemon_card.dart';
import '/ui/widgets/animated_overlay.dart';
import '/ui/widgets/fab.dart';
import '/ui/widgets/main_app_bar.dart';
import '/ui/widgets/pokeball_background.dart';
import '/ui/widgets/pokemon_refresh_control.dart';

part 'sections/fab_menu.dart';
part 'sections/pokemon_grid.dart';

class PokedexScreen extends StatefulWidget {
  const PokedexScreen({super.key});

  @override
  State<StatefulWidget> createState() => _PokedexScreenState();
}

class _PokedexScreenState extends State<PokedexScreen> {
  @override
  Widget build(BuildContext context) {
    return const PokeballBackground(
      child: Stack(
        children: [
          _PokemonGrid(),
          _FabMenu(),
        ],
      ),
    );
  }
}
