class ProductInfo {
  /* 상품명 / 이미지 / 배너 ---------------------*/
  String title;
  String backgroundImgUrl;
  String banner;

  /* 판매자 --------------------------------*/
  String sellerImgUrl;

  /* 가격 ----------------------------------------*/
  String highPrice;
  String lowPrice;
  String avgPrice;

  /* 주최 ----------------------------------------*/
  String sihang;
  String sigong;
  String sintak;
  String bungyang;

  /* 규모 ----------------------------------------*/
  int myunjuk;
  int upfloor;
  int downfloor;
  int dongNum;
  int hoNum;
  int parkingNum;

  /* 예정 ----------------------------------------*/
  int chkgongDate;
  int jungongDate;
  int ipjuDate;

  /* 계약 ----------------------------------------*/
  int contractCost;
  int middlecContractCost;
  int lastContractCost;

  /* 생성자 ----------------------------------------*/
  ProductInfo({this.title, this.backgroundImgUrl, this.banner, this.sellerImgUrl,
      this.highPrice, this.lowPrice, this.avgPrice, this.sihang, this.sigong,
      this.sintak, this.bungyang, this.myunjuk, this.upfloor, this.downfloor,
      this.dongNum, this.hoNum, this.parkingNum, this.chkgongDate,
      this.jungongDate, this.ipjuDate, this.contractCost,
      this.middlecContractCost, this.lastContractCost});


}