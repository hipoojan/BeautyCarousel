# **Beauty Carousel**

## **Usage**

```dart
    BeautyCarousel(
            height: 250,
            padding: EdgeInsets.only(top: 20, bottom: 0, right: 20, left: 20),
            indicatorActiveColor: Color(0xfff2a365),
            indicatorInactiveColor: Color(0x1cececec),
            slideTransitionCurve: Curves.easeIn,
            indicatorAlignment: Alignment.bottomLeft,
            indicatorPadding: EdgeInsets.only(left: 35),
            isScrollable: true,
            isLooping: true,
            showIndicator: true,
            indicatorBorder: Border.all(color: Colors.white, width: 1),
            indicatorShape: BoxShape.circle,
            duration: Duration(seconds: 5),
            slides: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1506849041215-e76092bdaa7f?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"))),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1472152083436-a6eede6efad9?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"))),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1507065255811-f3b9fe968f84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjExMzk2fQ&auto=format&fit=crop&w=500&q=60"))),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1441794016917-7b6933969960?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"))),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1491466424936-e304919aada7?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"))),
              ),
            ],
          ),
```

## **Developer Info**

- <a href="https://github.com/hipoojan">Github</a>

- <a href="https://www.facebook.com/hipoojan">Facebook</a>

- <a href="https://www.instagram.com/hipoojan/">Instagram</a>

- <a href="https://twitter.com/hipoojan">Twitter</a>
