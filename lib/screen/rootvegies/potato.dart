import 'package:flutter/material.dart';
import 'package:vegapp/bottombar_custom.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/shimmer/page_shimmer.dart';

class Potato extends StatefulWidget {
  static String routeName = '/potato';

  @override
  _PotatoState createState() => _PotatoState();
}

class _PotatoState extends State<Potato> {
  bool isReadmore = false;
  late bool isLoading ;
  @override
  void initState() {
    isLoading = true;
    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        isLoading=false;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Potato',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
        leading: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepOrange),
            child:IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Center(child: Padding(
                padding: const EdgeInsets.only(left: 4,top: 0),
                child: Icon(Icons.arrow_back_ios,color: Colors.white,),
              )),
            ),
          ),
        ),
      ),
      bottomNavigationBar:BottomBar(),
      body: isLoading?PageShimmer(): ListView(
        children: [
          Container(
            height: 250,
            //color: Colors.deepOrange,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage(
                    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUTExMVFhUVFRUVGBIVFxgXFhYYFRUXFxcVFxUYHSggGBolHhUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGysmICUtLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAAAQQCAwUGB//EADYQAAIBAgMGBAUCBgMBAAAAAAABAgMRBCExBRJBUWGRcYGh8AYTIrHBMtFCUnKS4fEUYrJT/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAECAwQF/8QAIxEBAAICAQQDAAMAAAAAAAAAAAECAxESBCExQRMicRQygf/aAAwDAQACEQMRAD8A+4XJBDYEgAAAAAAAAAAAAAAAAENgGwSAITJBCYEgAAAAAAAAAAAAAAAAEJgRvdGDIAAABDZIIAkAAAAAAAAAAAABFyRYAAAABzMftVQygnJt2utF18DmracpZ5v055mNs9YnTWuG093pEyTgQq3zz98DdDHTT5rv/krHUR7TOGXZBUoY6MtcvsWzetonwymsx5AASgAAAAAACACZIAAAAAAAAAEJEghICQAAAAAAACEgkSAAAA5W1q8m/lx0/id7Xy0TR0q1RRi5PRJvseUnj8275t3fm7nP1GSKxpthpudq85SnU3FGUYxS+uzUeOXXhobI1VvOCbtHgvvysap4+74+/wAERrO9rZPVnmzlj07YrLrUpXtraxg7qWuVtOPc0U3dWehslLkWjJtXi2wm/IuYfFOOma5e9DnqfkZ3NK5JjvCtqRPl6GjVUldGZwcPXcHdf76HaoVlJXR3YssX/XJkx8WwAGzMAIaANEgAAAAAAAAAAAAAAEEg11KyWvpqRM6GwFSeM5Lua54uXC357FJy1XjHK+yEUP8Aky5+hjLES5sr81U/HLpA5scW/wCYyji3z9B81T4pdAFFY18UjZDHRbs8n10LxkrPtE0sr/Ec7Yeo+i/9I+c0JuTvf9n1+59G+II72Gq2z+ne/td39j5thKrTV+/U83r5+8fjs6SPrLo0f99ixRvr+dSjSmm73tZ6cPXx9C1vdbeB58ul1qU8i1SSeZxqOIzt62OhTej/AIrWubUlnaG2o2msm1pfl1M94xc1fNeHWyvl74Gb9s0/EMaryy15FnBYlxfTiiq48WKfMtS8xO4VtWJjT09OaaTWjMjlbMxKX0vR6eJ1Ez1sd4vXbgvXjOgkAuqAAAAAAAAAAAAABhWqqKu2Y4muoRcn/t8jzmJxzk738uhjlyxT9aY8c2X6+1G3lkvXuVni/ef7FGOJV9PfQne6++hx2z7l01xaX/ncGFW42+5UVQ2OaKfLC3CVqFRvlzMoPiUfmI2qpkPliThKzv8AmSpFaMyfmj5Di3Sq2KteundPNEVY3zuU6scvwUvlmF60hlLb6p5NZaNPRrqeIq14xqSjF3in9P8ATw87a+B1trYZtM+fbRrToVd93cOK5dUc85Jy/Wf8dFMcV3MPe0a10tNc/CxejLI8lg9pqyad0zr4bHLmZSma6dmNm78c/wDK8Ml2LdOso5N9zlU63Ezo4lP9WXnp7yIiVZh34Vb+JlGrzXvqUqFS5dhBHRS2/LK0JjK+v559EYuXJd9TZJLLtka4o0nSsRLKM/fLgdrAYxyST1je/VZWficNLNlzZk0prxs/P2jp6fJqWWWm4duFR5XtnpY2mMaaWiMj0XEAAAAAAAAAAAAAPI/E20fr3U8oZefF/jyOLHEPmWNqwe/O/wDNL7spQieH1F5m8y9TFWIrCzTq88+xaUyistTbTqHNMy0Wozt5m1XKdRbysb6LyINLcUZsxps2RSNqs5Rcyiro1yRiq+6ru7u1yy4di0T37jcjTUtp5m2T4midREW0QpYunkeL+J8CpI9hi8Ujy+2KyeRzx/bs6KbXNh/CyxOBpVado14KVJp5RqqnJqO9ykoqK3umfNcKvh3CbU1KE4vOEvf21PqnwTgXTwdJPWSc/wC+Ta9LGXxP8P0cVC02oTS+mrlePR849PsetfpudItHnTjr1HG81nxt85weMtZNnWw9aPBankNo7KxVCo4bjqW0nSvOLXNOP21RvwWIrRf10qsVzlCSXdo8y+OYdsatG4e8w1Q6VCZ5PZ+0YvR+R3cJiVzKY7zE6Z3q68YrgCKTVjLfudkMFWTtKxvoJqUfFe/sY1Kd2WcDT3qkeju/I0x1+2kWns9CCLEnrvOAAAAAAAAAABBBLMGyEvNfE2Bal8xL6Zfq6Pn5nAlTz18j6DUs00809U9Dyu1cBuTvCLcbN34xzzV+RwdTg39odeHL6lzadMn5fHyMoNcDdvHnTWIdW2u3I200YpmW8ZTCW5TNsahTc0h87kWrMwTCzUqWOd85rv48TfUnncqyxCTa9RM7kiFx4m0czk4/aHC9vArbQx9l0POV8ZKrUVOGTb15Liys8pa0rHl0niJ1JbkE5O/krvi+B0cF8N7zTrTv/wBY5Lvq/Qt7Ow8acLQ166t82zqYWnu66218XmXxxrure/qFn63k5ytwW9lbK2SyXkRHBQ4rzZjHe4ta8MjOOJVjomYt5YR28MoYW/KxsWDRnGrlks+RuUyYpVE2lzK+yqcnnBf1ce+qKVTZUoZwvJfyvXyZ3JzV9NfQ2JcCs4qytGSYcGjiHo7rp+5fpVrmzGYNSzWUuD/foUaFKo3bdaayz/f9hXHMdoJtEugqunX1O7s3C7iu/wBT9FyKey8AofU85c+XgdeJ6ODFx7y48uTfaGRDRIOtzgIZIAAAAAAAIbAxkzCRsZrkiEq1aoczFVzoYiJysVTZnZerhY1Wbcexqw+Jvqy9iKBzq+DOLL08W7w6qZNdpWo1US66OVOnUXXxNLxVRfwepyz01m0ZKuy6y4mueKOPLHT/APm+5Vq4qq9KfeTt2sR/HunnV1cTtFRWZxsVtTrb31KeK/5EuEV5NnNqbNqvVvyy+xpXpp9ny1btobRT0eZZ+FaV5SnJdF93+OxQpbJa4Hd2RS3U11v+CcmKK0nSa5Nzp6WjUzeRZhXzOdTk7eZYpSfE4e8LL8ZdSviIxtlfJJ2jfJJ52S6JmEp5GUJvi/fiWi2vJpcpVHu5PzZvjXKalpZ2S1VtSxEtW8+kTCxBrlmb1O/lqivTLcGb1nbOUORswtRXz48TS4/d6ehnTLUvNbK2iJh2KaN8Stg5XiuenYsxPWrO424beWYALqAYAEJkghMCQABDZJBIEMwkjYQ0BWqQKdagdJo1zgVmFolxKuGK8sIdydE0yolJqtFnFeC6GD2cuR2/lEfLI4p5OG9lrkYvZa5Hd+WYukOJyefns1cinX2euR6adAq1cKRxTFnkK+FtwNEKVj0mKwRzauHsZ3puNNK21LCnZLPu+bN9NFeEl+l6FuB5l6anUuuLbjab9PM2KSv1NNyUzKYW237xtpVSslfXsbG7GfhZfpu9vfIvQ5HNoSsXqFXI3x2Z2hZpcegi+ljXG2uaMa1Xgnn19Tor3ZS62zP0v+p/ZF1FbZ9O0F1z76eli0j1McarDivP2lIANFAAAAABjvIGQAhokENASAAIaIaMgBrcTB0zdYixGhXdMj5ZZsRYaTtX+UR8os7pG6NCq6RrnQL26YuBGjbkV8McnF4I9TOmVK+GuVmq0WeIxOHaKsako+B67FYC5yq+z+hhfFFvLemTTmUsSno/8fk2KS8ONhX2Xx0fNFaeDqrR38Tkt00+m8ZYXo1EbI1EcveqLWHmn+DKGKfGMu37GFuntHppF4l2oVDfSk+fhY41OvfPPwsXqEpPRFYxW34TNodSlUvxLuz8Jvy3n+letuBWwOCk85djv0IWVjvwYJ82cuXL6hvRJCJPQcYAAAAAAEJARugyAAAAQyUAwAIRIAAAAABFhYkARYixkQBi0YygbSLEJVZ0SrUwiOm0YuBGk7cWeCXI1SwK5HcdMwdIjink4T2cuRK2VHkdv5QVMjink5NPZUeRco4KK4F1QM1AnjCOUtdOnY3RRKiSWiFdpABKAAAAyGyQIRIAAAAAAAAAAhMACQAAAAAAAQmSAAAAAgkARYWAAiw3QADMgAAAAAAAQ2ABIAAAAAAAP//Z'),
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 17),
                  child: Row(
                    children: [
                      Text(
                        'Available Options',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(6.0),
                              child: CircleAvatar(
                                radius: 5,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '2 Kg',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              '\u{20B9} 28',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.deepOrange),
                            ),
                            AddButton1(),
                          ],
                        ),
                      ),
                      elevation: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(6.0),
                              child: CircleAvatar(
                                radius: 5,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '1 Kg',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              '\u{20B9} 10',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.deepOrange),
                            ),
                            AddButton1(),
                            // Padding(
                            //   padding: EdgeInsets.all(14.0),
                            //   child: Expanded(
                            //     child: SizedBox(
                            //       height: 40,
                            //       width: 120,
                            //       child: ElevatedButton(
                            //         style: ElevatedButton.styleFrom(
                            //             padding: EdgeInsets.symmetric(
                            //                 horizontal: 40.0, vertical: 20.0),
                            //             shape: RoundedRectangleBorder(
                            //                 borderRadius:
                            //                     BorderRadius.circular(10.0)),
                            //             primary: Colors.deepOrange),
                            //         onPressed: () {},
                            //         child: Text(
                            //           'Add',
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      elevation: 5,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text(
                            'Product Description',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: buildText(
                    "The potato is a tuber, round or oval, with small white roots called eyes, that are growth buds. The size varies depending on the variety; the colour of the skin can be white, yellow or even purple. The potato culture had an enormous importance in Ireland, since it was part of the basic food."),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isReadmore = !isReadmore;
                        });
                      },
                      child: Text(isReadmore ? 'Read Less' : 'Read More'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildText(String text) {
    final lines = isReadmore ? null : 3;

    return Text(
      text,
      style: TextStyle(
        color: Colors.grey,
      ),
      maxLines: lines,
      //overflow: TextOverflow.ellipsis,
    );
  }
}
