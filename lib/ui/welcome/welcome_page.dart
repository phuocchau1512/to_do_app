import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget {
  final bool isFirstTimeInstallApp;
  const WelcomePage({
  super.key, required this.isFirstTimeInstallApp
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFF121212),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: isFirstTimeInstallApp ? IconButton(
              onPressed: (){
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                } else {
                  // Thoát ứng dụng
                  SystemNavigator.pop();
                }
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 18,
                color: Colors.white,),
            ): null,
          ),
          body: Column(
            children: [
              _buildTitleAndDesc(),
              const Spacer(),
              _buildLoginButton(),
              _buildRegisterButton()
            ],
          ),
        ));
  }

  Widget _buildTitleAndDesc() {
    return Container(
      margin: const EdgeInsets.only(top:28),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Chào Mừng',
              style: TextStyle(
                color: Colors.white.withOpacity(0.87),
                fontFamily: "Lato",
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // Căn giữa văn bản
            ),
          ),
          const SizedBox(height: 15),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Hãy đăng nhập hoặc tạo tài khoản \n để tiếp tục sử dụng ứng dụng",
              style: TextStyle(
                color: Colors.white.withOpacity(0.87),
                fontFamily: "Lato",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // Căn giữa văn bản
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButton() {
    return Container(
      width: double.infinity,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ElevatedButton(
          onPressed: (){

      },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF8875FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4)
          )
        ),
          child: Text(
            'Đăng Nhập',
            style: TextStyle(
              color: Colors.white.withOpacity(0.87),
              fontFamily: "Lato",
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center, // Căn giữa văn bản
          ),
      ),
    );
  }

  Widget _buildRegisterButton() {
    return Container(
      width: double.infinity,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      margin: const EdgeInsets.symmetric(vertical: 28),
      child: ElevatedButton(
        onPressed: (){

        },
        style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)
            ),
          side: const BorderSide(
            width: 1,
            color: Colors.white
          )
        ),
        child: Text(
          'Đăng Ký',
          style: TextStyle(
            color: Colors.white.withOpacity(0.87),
            fontFamily: "Lato",
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center, // Căn giữa văn bản
        ),
      ),
    );
  }

}




