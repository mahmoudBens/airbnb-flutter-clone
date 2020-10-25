import 'package:flutter/material.dart';

class SliderModel{
  String imagePath;
  String title;
  String text;

  SliderModel(this.imagePath, this.title, this.text);


  static List<SliderModel> getSlides(){
    List<SliderModel> slides = new List<SliderModel>();
    SliderModel s1 = new SliderModel("assets/images/Illustrations/il1.jpg", "first screen", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. as vehicula ante nisl. Nullam faucibus purus sed tellus fermentum, ac porttitor metus laoreet. ");
    SliderModel s2 = new SliderModel("assets/images/Illustrations/il2.jpg", "second screen", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. tum, ac porttitor metus laoreet. ");
    SliderModel s3 = new SliderModel("assets/images/Illustrations/il3.jpg", "third screen", "Lorem ipsum dolor sit amet, consectetur adipiscing elit.s purus sed tellus fermentum, ac porttitor metus laoreet. ");
    slides.add(s1);
    slides.add(s2);
    slides.add(s3);
    return slides;

  }

}