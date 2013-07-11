cairngorm-navigation
====================

## Introduction

This is _core_ part of cairngorm-navigation library, it is not depend on Flex or other any other framework/library. It depend only on spicefactory's logging system.

## Dependencies
 * spicefactory/spicelib-logging
 * spicefactory/spicelib-util

## Overview

This library contain core functionality of navigation system. It is not designed to use in end application, due to it has _implementation points_ implemented in separate libraries.

### Implementation Points

This library defines interfaces for integration wit _IoC Framefork_ (such as Parsley) and with _Component Framework_ (such as Flex). It **requires** both implemetation to be used in end application.

#### Integration with IoC Framework

Implementations:
 * [cairngorm-navigation-parsley](https://github.com/rozdonmobile/cairngorm-navigation-parsley)

#### Integration with Componenets Framework

Implementations:
 * [cairngorm-navigation-flex](https://github.com/rozdonmobile/cairngorm-navigation-flex)
 * [cairngorm-navigation-feathers](https://github.com/rozdonmobile/cairngorm-navigation-feathers)
