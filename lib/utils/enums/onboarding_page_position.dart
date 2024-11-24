enum OnboardingPagePosition {
  page1,
  page2,
  page3
}

extension OnboardingPagePositionExtension on OnboardingPagePosition {
  String onBoardingPageImage(){
    switch(this){
      case OnboardingPagePosition.page1: return "assets/images/on_boarding1.png";
      case OnboardingPagePosition.page2: return "assets/images/on_boarding2.png";
      case OnboardingPagePosition.page3: return "assets/images/on_boarding3.png";
    }
  }

  String onBoardingPageTitle(){
    switch(this){
      case OnboardingPagePosition.page1: return "Sắp xếp công việc của bạn";
      case OnboardingPagePosition.page2: return "Tạo nhiệm vụ hàng ngày";
      case OnboardingPagePosition.page3: return "Tổ chức công việc của bạn";
    }
  }

  String onBoardingPageContent(){
    switch(this){
      case OnboardingPagePosition.page1: return "Bạn có thể quản lý tất cả công việc hàng ngày của bạn";
      case OnboardingPagePosition.page2: return "Bạn có thể tạo bảng công việc của bạn để duy trì tính chủ động";
      case OnboardingPagePosition.page3: return "Bạn có thể tổ chức công việc hàng ngày của bạn bằng cho các công việc vào mục riêng";
    }
  }

}