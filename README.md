cairngorm-navigation
====================

The [Adobe Cairngorm Navigation](http://sourceforge.net/adobe/cairngorm/wiki/HowToUseCairngormNavigation/) library adapted for use in pure as3 project, especially for [Starling](http://gamua.com/starling/)-based with [Feathers](http://feathersui.com/) components.

## Introduction

This is fork of original [Adobe Cairngorm Navigation](http://sourceforge.net/adobe/cairngorm/wiki/HowToUseCairngormNavigation/) library, that removes dependencies on Flex classes. The original library has been splitted on [cairngorm-library](http://ginthub.com/rozd-cairngorm/cairngorm-navigation) (this library with no Flex classes) and [cairngorm-navigation-flex](http://github.com/rozd-cairngorm/cairngorm-navigation-flex) (with Flex classes).

## Dependencies
 * spicefactory/spicelib-logging
 * spicefactory/spicelib-util

## Overview

This library contain core functionality of navigation system. It is not designed to use in end application, due to it has _implementation points_ implemented in separate libraries.

### Implementation Points

This library defines interfaces for integration wit _IoC Framefork_ (such as Parsley) and with _Component Framework_ (such as Feathers). It **requires** both implemetation to be used in end application.

#### Integration with IoC Framework

Implementations:
 * [cairngorm-navigation-parsley](https://github.com/rozd-cairngorm/cairngorm-navigation-parsley)

#### Integration with Componenets Framework

Implementations:
 * [cairngorm-navigation-flex](https://github.com/rozd-cairngorm/cairngorm-navigation-flex)
 * [cairngorm-navigation-feathers](https://github.com/rozd-cairngorm/cairngorm-navigation-feathers)
