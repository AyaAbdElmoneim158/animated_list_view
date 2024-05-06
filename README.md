# animated_list_view

`AnimatedListView` A Flutter widget for animated listView.

## Features

 - `Animated List View` Show dynamically animated list items
 - `Easy to Use` Designed to be dropped into any existing Flutter project with minimal setup.
 - `Responsive and Versatile` Works great on both mobile and web platforms, adapting to various screen sizes.

## Getting started

To use this package, add animated_list_view as a dependency in your pubspec.yaml file.

## Usage

Custom settings:

```dart
     AnimatedListView(
          list: List.generate(
            10,
            (index) => Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: index.isEven ? Colors.blue[100] : Colors.blue[200],
              ),
              child: Center(
                child: Text(
                  'Item $index',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          separator: 12.0,
          duration: const Duration(milliseconds: 750),
        ),
```

## See also

 - [github repo](https://github.com/AyaAbdElmoneim158/animated_list_view.git)
<!-- - [pub.dev package](https://pub.dev/packages/text_scroll)
 - [api reference](https://pub.dev/documentation/text_scroll/latest/text_scroll/TextScroll-class.html)
 -->
