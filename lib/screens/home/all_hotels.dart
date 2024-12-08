import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/routes/app_routes.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/screens/home/widgets/hotel.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: Text('All Hotels'),
        backgroundColor: AppStyles.bgColor,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 8.0),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.9),
              itemCount: hotelList.length,
              itemBuilder: (context, index) {
                return HotelGridView(hotel: hotelList[index], index: index);
              }),
        ),
      ),
    );
  }
}

class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final int index;

  const HotelGridView({super.key, required this.hotel, required this.index});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.hotelDetail,
            arguments: {'index': index});
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.only(right: 8.0),
        height: 350,
        decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.8,
              child: Container(
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/${hotel['image']}')),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(hotel['place'],
                    style: AppStyles.headlineStyle2
                        .copyWith(color: AppStyles.kakiColor))),
            SizedBox(
              width: 5,
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(hotel['destination'],
                        style: AppStyles.headlineStyle3
                            .copyWith(color: Colors.white))),
                SizedBox(
                  height: 5,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text('\$${hotel['price']}/night',
                        style: AppStyles.headlineStyle4
                            .copyWith(color: AppStyles.kakiColor)))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
