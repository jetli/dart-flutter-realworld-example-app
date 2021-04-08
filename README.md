# ![RealWorld Example App](logo.png)

[![RealWorld Frontend](https://img.shields.io/badge/realworld-frontend-%23783578.svg)](http://realworld.io)

> ### [Flutter] +  iOS + Android + Web + macOS + Linux + Windows codebase containing real world examples (CRUD, auth, advanced patterns, etc) that adheres to the [RealWorld] spec and API.


### [Demo]&nbsp;&nbsp;&nbsp;&nbsp;[RealWorld]


This codebase was created to demonstrate a fully fledged application for iOS/Android/Web/Desktop built with [Flutter] including CRUD operations, authentication, routing, pagination, and more.

We've gone to great lengths to adhere to the [Flutter] community styleguides & best practices.

For more information on how to this works with other frontends/backends, head over to the [RealWorld] repo.


# How it works

This is an application written in [Dart] that utilizes [Flutter] for developing the frontend app that powers the RealWorld application.

# Getting started

You can view a live demo over at [Demo]

* Install [Flutter]
* Build and develop
  ```
  flutter channel dev
  flutter upgrade
  flutter config --enable-web
  flutter config --enable-macos-desktop
  flutter config --enable-linux-desktop
  flutter config --enable-windows-desktop

  flutter run
  flutter run -d web
  flutter run -d macos
  flutter run -d linux
  flutter run -d windows
  flutter run -d android
  flutter run -d ios
  ```

# Contributing

Feel free to take a look at the current issues in this repo for anything that currently needs to be worked on.

You are also welcome to open a PR or a new issue if you see something is missing or could be improved upon.

# License

Apache License (Version 2.0)

See [LICENSE] for details

[Dart]: https://dart.dev
[Demo]: https://jetli.github.io/flutter-realworld-example-app/
[Flutter]: https://github.com/flutter/flutter
[LICENSE]: ./LICENSE
[RealWorld]: https://github.com/gothinkster/realworld