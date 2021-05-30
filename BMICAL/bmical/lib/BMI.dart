class BMI{
  String weight;
  String height;
  String BMIOutput;

  BMI(String weight, String height){
    this.weight = weight;
    this.height = height;
  }

  String calculateBMI(String weight, String height){
    double bmi = (double.parse(weight)*10000)/(double.parse(height)*double.parse(height));
    return bmi.toStringAsFixed(1);
  }

  String getBMIChart(String bmiVal) {
    if (double.parse(bmiVal) < 18.5) {
      return 'Underweight';
    } else if (18.5 <= double.parse(bmiVal) && double.parse(bmiVal) < 24.9) {
      return 'Normal';
    } else if (24.9 <= double.parse(bmiVal) && double.parse(bmiVal) <= 29.9) {
      return 'Overweight';
    } else if (29.9 < double.parse(bmiVal) && double.parse(bmiVal) < 39.9) {
      return 'Obese';
    } else if (39.9 <= double.parse(bmiVal)) {
      return 'Extremely Overweight';
    }
  }

  String gettingBMIConclusionString(String bmiCategory){
      if(bmiCategory == 'Underweight'){
          return 'Your BMI is quite low, you should eat more!';
      }else if(bmiCategory == 'Normal'){
          return 'Congo for your Optimal BMI, keep exercising!';
      }else if(bmiCategory == 'Overweight'){
          return 'Man you should do some weight lifting to toned up yourself!';
      }else if(bmiCategory == 'Obese'){
         return 'Buddy do some diet and HIT cardio to improve your physique';
      }else if(bmiCategory == 'Extremely Overweight'){
        return 'Man you immediately start doing Keto and HIT cardio to cut down some mass';
      }
  }

}