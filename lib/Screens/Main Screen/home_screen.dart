import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kia_watchstore/Components/text_style.dart';
import 'package:kia_watchstore/Resources/colors.dart';
import 'package:kia_watchstore/Resources/dimens.dart';
import 'package:kia_watchstore/Resources/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainScreenScaffold,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(MyDimens.medium),
                child: Container(
                  height: 52,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: MyColors.searchBar,
                    borderRadius: BorderRadius.circular(60),
                    boxShadow: [
                      BoxShadow(
                          color: MyColors.shadow,
                          offset: Offset(0, 3),
                        blurRadius: 4

                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    SvgPicture.asset("assets/icons/SVG/Search.svg"),
                    Text(MyStrings.search , style: LightTextStyles.hint,),
                    Image.asset("assets/images/PNG/Logo.png")
                    
                    
                    
                    
                  ],),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
