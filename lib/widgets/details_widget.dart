import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popular/ui/person_details/person_details_screen.dart';
import 'package:popular/ui/person_images/person_images_provider.dart';
import 'package:provider/provider.dart';

class DetailsWidget extends StatelessWidget {
  final details;
  const DetailsWidget({Key key, this.details}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [


        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  ChangeNotifierProvider<ImagesProvider>(
                    create: (context) => ImagesProvider(details.id),
                    child: Consumer<ImagesProvider>(
                      builder: (buildContext, imagesProvider, _){
                        return (imagesProvider.images != null)?
                        Container(
                          height: 500,
                          child:GridView.count(

                            crossAxisCount: 2,
                            children: List.generate(imagesProvider.images.profiles.length, (index) {
                              final image = imagesProvider.images.profiles[index];
                              return Center(
                                child: SizedBox(
                                     child: Image.network('https://image.tmdb.org/t/p/w500${image.filePath}',)),
                              );
                            }),
                          ) ,
                        )
                        : Center(child: CircularProgressIndicator());
                      },
                    )),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Center(
                                  child: Text(
                                details.name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Biography:',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        child: Text('${details.biography}')),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Birthday:',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        child: Text('${details.birthday}')),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Rating:',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        child: Text('${details.popularity}')),
                                  ),


                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ],
    ));
  }
}




