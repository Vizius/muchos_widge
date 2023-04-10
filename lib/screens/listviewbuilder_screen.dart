import 'package:flutter/material.dart';
import 'package:muchos_widge/themes/app_theme.dart';

class ListviewBuilderScreen extends StatefulWidget {
   
  const ListviewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {

  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool isloading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {

      if((scrollController.position.pixels+500)>= scrollController.position.maxScrollExtent){
        //add10();
        fetchdata();
      }
      
    });
    
  }

  Future fetchdata() async{

    if (isloading) return;

    isloading = true;

    setState(() {
      
    });

    await Future.delayed(const Duration(seconds: 3));

    add10();

    isloading = false;

    setState(() {
      
    });

    if(scrollController.position.pixels + 100 <= scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(
      scrollController.position.pixels + 120 , 
      duration: const Duration(seconds: 3), 
      curve: Curves.fastOutSlowIn,
    );

  }


  void add10(){
    final lastid = imagesIds.last;
    imagesIds.addAll(
      [1,2,3,4,5,6,7,8,9,10].map((e) => lastid + e)
    );
    setState(() {
      
    });
  }

  Future<void> onRefresh()async{
    await Future.delayed(const Duration(seconds: 2));
    final lastid = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastid + 1);
    add10();
  }


  @override
  Widget build(BuildContext context) {

    final sizes = MediaQuery.of(context).size;

    return Scaffold(
      
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [

            RefreshIndicator(
              color: AppTheme.primaryColor,
              onRefresh: onRefresh,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage("assets/loadpictures.gif"), 
                    image: NetworkImage("https://picsum.photos/500/300?=image=${imagesIds[index]}")
                  );
                },
              ),
            ),

            if (isloading)
            Positioned(
              bottom: 40,
              left: sizes.width * 0.5 - 25,
              child: _Loadingicon()
            )


          ],
        ),
      ),
    );
  }
}

class _Loadingicon extends StatelessWidget {
  const _Loadingicon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.all(10),
      height: 50,
      width: 50,
      decoration:BoxDecoration(
        color: Colors.white38.withOpacity(0.9),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(color: AppTheme.primaryColor,),


    );
  }
}