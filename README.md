# Dymanic Widget App  ( Dynamic Widget Renderer )

The Dynamic Widget Renderer is a Flutter application that demonstrates how to dynamically render widgets from JSON data. It showcases a variety of widgets, including banners and horizontal lists, loaded from a JSON configuration. The app also features dynamic theme support for both light and dark modes, all of which can be configured using JSON data.

In many Flutter applications, the layout and structure of widgets are often defined statically in code. However, there are scenarios where the ability to render widgets dynamically based on external data, such as JSON, can provide great flexibility and reusability. The Dynamic Widget Renderer addresses this need by showing how to create a rendering system that interprets JSON data and generates widget trees at runtime.

In this app we are showing the intaractive UI interface with Dymanic widget Api data  to understand the basic flow. In this project we are using the clean architecture  with following folder breakup -> Parent folder - ( View, Bloc, Network ). We are using the modular approach for reduce the modular dependency between the each module of the project. Clean architecture also decouple the presentation layer and business layer.


## Logo

<img src="https://github.com/vksep07/dynamic_widget_api/blob/main/assets/images/nymble_logo.png" alt="drawing" style="width:400px;"/>


## Features
- JSON-Based Widget Rendering: This app leverages JSON data to describe various widgets and their properties. Each JSON entry represents a specific widget type along with its customization options.

- Dynamic Theme Support: The app showcases the ability to apply dynamic themes based on JSON data. Both light and dark modes can be configured, allowing users to switch between themes seamlessly.

- Flexible Widget Types: The renderer supports multiple widget types. As of now, it demonstrates two types: banners and dynamic horizontal lists. However, the architecture is extensible, allowing you to easily add new widget types.

- Responsive UI: The dynamically rendered widgets adapt to various screen sizes and orientations. The renderer maintains a coherent layout even when the content changes dynamically.

- Customization: The app demonstrates how widget properties like images, text, shapes, and themes can be customized using JSON. This customization provides a versatile approach to building UIs that cater to specific design requirements.


## Screenshots

![dark_theme_screenshot](https://github.com/vksep07/dynamic_widget_api/assets/16042343/a2570790-9167-4189-b453-20e1d6039737)


![light_theme_screenshot](https://github.com/vksep07/dynamic_widget_api/assets/16042343/457a49d8-9cad-4aa1-9c4a-3ad8df80da12)



## App Preview Video


https://github.com/vksep07/dynamic_widget_api/assets/16042343/b347b3df-fccf-4322-8ced-c816387a89c1


## Requirements

- Any Operating System (ie. MacOS, Windows, Linux)
- Flutter
- Android Studio or Visual Studio Code
- Basic knowledge of Flutter/Dart


## Installation

Clone the repo

```bash
  git clone https://github.com/vksep07/dynamic_widget_api.git
```

Install the dependencies

```bash
    flutter pub get
```

Run the App

```bash
    flutter run
```
### Created and maintained by 
[Varun Kumar](https://github.com/vksep07)


If you found this project helpful or you learned something from the source code and want to thank me, consider buying me a cup of ☕<br>
!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)
## License

```
    MIT License

Copyright (c) 2022 Varun Kumar

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

```
