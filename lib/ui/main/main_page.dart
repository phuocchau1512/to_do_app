import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List<Widget> _pages=[];
  int _currentPage =0;

  @override
  void initState() {
    super.initState();
    _pages  = [
      Container(
        color: Colors.white,
      ),
      Container(
        color: Colors.red,
      ),
      Container(),
      Container(
        color: Colors.green,
      ),
      Container(
        color: Colors.blue,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
        body: _pages.elementAt(_currentPage),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF363636),
          unselectedItemColor: Colors.white,
          selectedItemColor: const Color(0xFF8687e7),
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentPage,
          onTap: (index){
            if ( index == 2 ){
              return ;
            }
            setState(() {
              _currentPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon:Image.asset("assets/images/home.png",
                      width: 24,
                      height: 24,
                      fit: BoxFit.fill),
              label: "Trang chủ",
              backgroundColor: Colors.transparent,
              activeIcon: Image.asset("assets/images/home.png",
                  width: 24,
                  height: 24,
                  fit: BoxFit.fill,
                  color: const Color(0xFF8687e7),),
            ),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/calendar.png",
                    width: 24, height: 24,fit: BoxFit.fill),
                label: "Lịch",
                backgroundColor: Colors.transparent,
                activeIcon: Image.asset("assets/images/calendar.png",
                  width: 24,
                  height: 24,
                  fit: BoxFit.fill,
                  color: const Color(0xFF8687e7),),
              ),
            BottomNavigationBarItem(
                icon: Container(),
              label: "",
              backgroundColor: Colors.transparent
            ),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/clock.png",
                    width: 24, height: 24,fit: BoxFit.fill),
                label: "Công việc",
                backgroundColor: Colors.transparent,
                activeIcon: Image.asset("assets/images/clock.png",
                  width: 24,
                  height: 24,
                  fit: BoxFit.fill,
                  color: const Color(0xFF8687e7),),
            ),
            BottomNavigationBarItem(
                icon:Image.asset("assets/images/user.png",
                      width: 24, height: 24,fit: BoxFit.fill),
                label: "Cá nhân",
                backgroundColor: Colors.transparent,
                activeIcon: Image.asset("assets/images/user.png",
                  width: 24,
                  height: 24,
                  fit: BoxFit.fill,
                  color: const Color(0xFF8687e7),),
            ),
          ],
        ),
      floatingActionButton: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          color: const Color(0xFF8687E7),
          borderRadius: BorderRadius.circular(32),
        ),
        child: IconButton(
          onPressed: (){

          },
          icon: const Icon(
            Icons.add,
            size: 30,
            color: Colors.white,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
