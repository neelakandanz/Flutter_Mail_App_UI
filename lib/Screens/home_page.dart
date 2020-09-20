import 'package:flutter/material.dart';

class KMail extends StatefulWidget {
  @override
  _KMailState createState() => _KMailState();
}

class _KMailState extends State<KMail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(
        title: Text('Primary'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: buildDrawer(),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.edit,
        ),
        onPressed: () {
          print('compas mail');
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            topTail(
                title: 'Social',
                subtitle: 'Google++',
                idata: Icons.people,
                Icolor: Colors.blue,
                msg: '1 New'),
            Divider(
              height: 0.1,
            ),
            topTail(
                title: 'Promotions',
                subtitle: 'Swiggy,Google Offers',
                idata: Icons.more,
                Icolor: Colors.green,
                msg: '2 New'),
            Divider(
              height: 0.1,
            ),
            topTail(
                title: 'Update',
                subtitle: 'Google Pay',
                idata: Icons.info,
                Icolor: Colors.orange,
                msg: '3 New'),
            Divider(
              height: 0.1,
            ),
            msgTail(
                url: 'images/1.png',
                name: 'Neela',
                logs: '10.30 PM',
                isuread: false,
                msg: 'I Am At Work Day'),
            msgTail(
                url: 'images/2.png',
                name: 'Meela',
                logs: '6.30 PM',
                isuread: true,
                msg: 'I Am At Work Day'),
            msgTail(
                url: 'images/3.png',
                name: 'Reela',
                logs: '2.30 PM',
                isuread: true,
                msg: 'I Am At Work Day'),
            msgTail(
                url: 'images/4.png',
                name: 'Keela',
                logs: 'Yesterday',
                isuread: true,
                msg: 'I Am At Work Day'),
            msgTail(
                url: 'images/5.png',
                name: 'Leela',
                logs: 'May 29',
                isuread: false,
                msg: 'I Am At Work Day'),
            msgTail(
                url: 'images/4.png',
                name: 'Jeela',
                logs: 'Yesterday',
                isuread: true,
                msg: 'I Am At Work Day'),
            msgTail(
                url: 'images/2.png',
                name: 'Deela',
                logs: '6.30 PM',
                isuread: true,
                msg: 'I Am At Work Day'),
          ],
        ),
      ),
    );
  }

  Drawer buildDrawer() {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 170.0,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              image: DecorationImage(
                image: ExactAssetImage('images/back.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 30.0,
                    backgroundImage: ExactAssetImage('images/2.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 5.0),
                    child: Text(
                      'Neela kandan',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 5.0),
                    child: Text(
                      'Neelaka@gmail.com',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
          DrawerListTile(
              idata: Icons.inbox,
              title: 'All Inbox',
              count: '',
              icolor: Color(0xfffafafa)),
          Divider(
            height: 1.0,
            thickness: 1.0,
          ),
          DrawerListTile(
              idata: Icons.people,
              title: 'Primary',
              count: '99+',
              icolor: Color(0xfffafafa)),
          DrawerListTile(
              idata: Icons.more,
              title: 'Social',
              count: '2 New',
              icolor: Colors.blue),
          DrawerListTile(
              idata: Icons.star,
              title: 'Promotions',
              count: '',
              icolor: Color(0xfffafafa)),
          Divider(
            height: 1.0,
            thickness: 1.0,
          ),
          DrawerListTile(
              idata: Icons.alarm,
              title: 'Starred',
              count: '2',
              icolor: Color(0xfffafafa)),
          DrawerListTile(
              idata: Icons.play_arrow,
              title: 'Snoozed',
              count: '',
              icolor: Color(0xfffafafa)),
          DrawerListTile(
              idata: Icons.mail_outline,
              title: 'Important',
              count: '99',
              icolor: Color(0xfffafafa)),
          DrawerListTile(
              idata: Icons.bookmark,
              title: 'Sent',
              count: '9',
              icolor: Color(0xfffafafa)),
          DrawerListTile(
              idata: Icons.insert_drive_file,
              title: 'Outlook',
              count: '',
              icolor: Color(0xfffafafa)),
        ],
      ),
    );
  }

  ListTile DrawerListTile(
      {IconData idata, String title, String count, Color icolor}) {
    return ListTile(
      leading: Icon(idata),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            color: icolor,
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
            child: Text(
              count,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: icolor == Color(0xfffafafa)
                      ? Colors.black
                      : Colors.white),
            ),
          )
        ],
      ),
    );
  }

  ListTile msgTail(
      {String url, String name, String logs, String msg, bool isuread}) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20.0,
        backgroundImage: ExactAssetImage(url),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
                fontWeight: isuread ? FontWeight.bold : FontWeight.normal),
          ),
          Text(logs)
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(msg),
          Icon(
            Icons.star_border,
            size: 20.0,
          ),
        ],
      ),
    );
  }

  ListTile topTail(
      {String title,
      String subtitle,
      IconData idata,
      Color Icolor,
      String msg}) {
    return ListTile(
      leading: Icon(
        idata,
        color: Icolor,
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
      trailing: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3.0),
        color: Colors.blue,
        child: Text(
          msg,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
