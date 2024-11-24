
import 'package:flutter/material.dart';

class CreateOrEditCategory extends StatelessWidget{
   CreateOrEditCategory({super.key});

  final _nameCategoryTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          backgroundColor: const Color(0xFF121212),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: const Text(
              "Tạo mục mới",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
          body: _buildBodyPageScreen(),
        )
    );
  }

  Widget _buildBodyPageScreen() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCategoryNameField(),
        _buildCategoryChooseIconField(),
        _buildCategoryChooseBackgroundColorField(),
      ],
    );
  }

  Widget _buildCategoryNameField() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildFieldTitle("Tên thư mục:"),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: TextFormField(
              controller: _nameCategoryTextController,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white
              ),
              decoration: InputDecoration(
                hintText: "Nhập tên thư mục",
                hintStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.white
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(
                    width:1,
                    color: Colors.white,
                  ),
                ),
              )
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCategoryChooseIconField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildFieldTitle("Icon của thư mục:"),
          GestureDetector(
            onTap: (){  },
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFFFFFFF).withOpacity(0.21),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  "chọn icon từ thư viện",
                  style:  TextStyle(
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.87) ,
                  ),
                ),
              )
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCategoryChooseBackgroundColorField() {
    return Container(
      child: Column(
        children: [
          _buildFieldTitle("Chọn màu cho thư mục")
        ],
      ),
    );
  }

  Widget _buildFieldTitle( String titleLabel ){
    return Text(
      titleLabel,
      style:  TextStyle(
          fontSize: 16,
          color: Colors.white.withOpacity(0.87) ,
      ),
    );
  }

}



