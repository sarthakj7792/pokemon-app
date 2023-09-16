// ignore_for_file: depend_on_referenced_packages

import 'dart:math';

import 'package:flutter/material.dart' hide AnimatedSlide;
import 'package:flutter_bloc/flutter_bloc.dart';
import '/configs/colors.dart';
import '/configs/images.dart';
import '/domain/entities/pokemon.dart';
import '/domain/entities/pokemon_props.dart';
import '/domain/entities/pokemon_types.dart';
import '/states/pokemon/pokemon_bloc.dart';
import '/states/pokemon/pokemon_event.dart';
import '/states/pokemon/pokemon_selector.dart';
import '/ui/screens/pokemon_info/state_provider.dart';
import '/ui/widgets/animated_fade.dart';
import '/ui/widgets/animated_slide.dart';
import '/ui/widgets/auto_slideup_panel.dart';
import '/ui/widgets/hero.dart';
import '/ui/widgets/main_app_bar.dart';
import '/ui/widgets/main_tab_view.dart';
import '/ui/widgets/pokemon_image.dart';
import '/ui/widgets/pokemon_type.dart';
import '/ui/widgets/progress.dart';
import '/utils/string.dart';

import '../../../states/theme/theme_cubit.dart';

part 'sections/background_decoration.dart';
part 'sections/pokemon_overall_info.dart';
part 'sections/pokemon_info_card.dart';
part 'sections/pokemon_info_card_about.dart';
part 'sections/pokemon_info_card_basestats.dart';
part 'sections/pokemon_info_card_evolutions.dart';

class PokemonInfo extends StatefulWidget {
  const PokemonInfo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PokemonInfoState createState() => _PokemonInfoState();
}

class _PokemonInfoState extends State<PokemonInfo>
    with TickerProviderStateMixin {
  late AnimationController _slideController;
  late AnimationController _rotateController;

  @override
  void initState() {
    _slideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _rotateController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 5000),
    )..repeat();

    super.initState();
  }

  @override
  void dispose() {
    _slideController.dispose();
    _rotateController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PokemonInfoStateProvider(
      slideController: _slideController,
      rotateController: _rotateController,
      child: const Scaffold(
        body: Stack(
          children: <Widget>[
            _BackgroundDecoration(),
            _PokemonInfoCard(),
            _PokemonOverallInfo(),
          ],
        ),
      ),
    );
  }
}
