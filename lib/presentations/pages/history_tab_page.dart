import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: AppBar(
          title: const Text('登録履歴'),
          centerTitle: true,
          elevation: 1,
          backgroundColor: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                width: double.infinity,

                /// Todo : フォーカスのオンオフ
                /// Todo : 検索機能の実装 (対象:カテゴリ?とメモ）
                child: TextField(
                    decoration: InputDecoration(
                  labelText: 'リスト検索',
                  labelStyle: TextStyle(color: Colors.black87),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  suffixIcon: Icon(FontAwesomeIcons.search),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide:
                        BorderSide(width: 1, color: Colors.orangeAccent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide:
                        BorderSide(width: 1, color: Colors.orangeAccent),
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Todo : 前の月へ戻る
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios_outlined)),

                    /// Todo : 今月を表示
                    Text(
                      '8月の使用履歴',
                      style: TextStyle(fontSize: 16),
                    ),

                    /// Todo : 翌月を表示（無限または今月までの制限をかける）
                    /// Todo : 今月だったら非表示
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios_outlined))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 30,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      /// Todo : 詳細ページに遷移
                      onTap: () {},
                      leading: Icon(
                        FontAwesomeIcons.shoppingCart,
                        size: 30,
                      ),
                      title: Row(
                        children: [
                          Text('2021/7/21'),
                          SizedBox(
                            width: 36,
                          ),
                          Text('12,500')
                        ],
                      ),
                      subtitle: Text('show memo'),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
