import 'package:flutter/material.dart';

class CustomSearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search for your job...',
                    contentPadding: const EdgeInsets.all(10.0),
                    hintStyle: TextStyle(color: Colors.black)),
              ),
            ),
            // TextFormField(
            //   decoration: InputDecoration(
            //       hintText: 'Search for your job',
            //       hintStyle: TextStyle(color: Colors.black)),
            // ),
            Container(
                child: Align(
              alignment: Alignment.topRight,
              child: Ink(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0)),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ),
            )),
          ],
        ));
  }
}
