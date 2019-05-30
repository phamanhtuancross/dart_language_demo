

class NumberConverter{
  NumberConverter._privateConstructor();
  static final NumberConverter _instance = NumberConverter._privateConstructor();
  final numberLanguageMapings = ["Không", "Một", "Hai", "Ba", "Bốn", "Năm", "Sáu", "Bảy", "Tám", "Chín"];
  final valueLevels = ["Mười","Trăm", "Nghìn","Muơi ngàn","Trăm ngàn",  "Triệu","Mươi triệu","Trăm triệu"];

 static NumberConverter get instance {
    return _instance;
  }

  convertNumberToVietnamesLanguages(int number){
    var result = "";

    int tempNumber = number;

    if(tempNumber == 0){
      result =  this.getVietnamesSimpleValue(0);
    }
    else{
      int level = 0;
      while(tempNumber > 0){
        result = this.getVietnamesSimpleValue((tempNumber%10).round()) + result;
        result = this.getNumberValueLevel(level) + result;
        level += 1;
        tempNumber = (tempNumber/10).round();
      }
    }

    return result;
  }

  getVietnamesSimpleValue(int number){
    return this.numberLanguageMapings[number];
  }

  getNumberValueLevel(int level){
    return this.valueLevels[level];
  }
}

