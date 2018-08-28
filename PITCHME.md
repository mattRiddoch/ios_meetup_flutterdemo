# iOS Dev Meetup

![Flutter Logo](https://cdn.arstechnica.net/wp-content/uploads/2018/06/7-2-1.jpg)

---

![XKCD](https://imgs.xkcd.com/comics/standards.png)

---

### Primary Features

- Cross platform.
- Fast: 60 fps.
- Uses rendering engine written in C++, single view.
- Flutter framework written in dart.
- Open source.

---

### OEM SDKs

![OEM SDKs](https://cdn-images-1.medium.com/max/800/1*DXsvg0ir2nvYOTiUpp9KJw.png)

---

### WebViews

![WebViews](https://cdn-images-1.medium.com/max/800/1*kxf6pHPvCeqmy-bdCqkHFA.png)

---

### Reactive Views

![Reactive Views](https://cdn-images-1.medium.com/max/800/1*8ugYUcmOYnoDx7d99qkEjQ.png)

---

### Flutter/native interop

![Flutter/native interop](https://cdn-images-1.medium.com/max/800/1*UpoHX3az39ZqkFwBr_gndA.png)

---

### Flutter stack

![Flutter stack](https://cdn-images-1.medium.com/max/800/0*NeeJq8PwkiTj8eMf.)

---

### Unified UI

![UI One](https://cdn-images-1.medium.com/max/600/1*xIdaloHvQPE78oAXLJ7Rzg.png)

---

### UI 1/4

![UI Two](https://cdn-images-1.medium.com/max/600/1*cxcLBy8_MnUprKE_JliA7w.png)

---
### UI 2/4

![UI Three](https://cdn-images-1.medium.com/max/400/1*nQ9gwT4kdN8SIXzxq0XyYg.png) ![UI Four](https://cdn-images-1.medium.com/max/400/1*CWtefgiPMBwNi8Q1dxPI5A.png)

---
### UI 3/4

![UI Five](https://cdn-images-1.medium.com/max/400/1*WiPwyMCRrVn_iit7HiG4Pg.png) ![UI Six](https://cdn-images-1.medium.com/max/400/1*N2U8dMlt2pD5ozUGHOTXwg.png)

---

### UI 4/4

![UI Seven](https://cdn-images-1.medium.com/max/400/1*jSlI0OpsEEqomXhgEbZNTA.png) ![UI Eight](https://cdn-images-1.medium.com/max/400/1*eKLcIR16WZCNmwFcBzL8Zw.png)

---

### Widgets in action

![action](https://cdn-images-1.medium.com/max/600/0*XaqUM2laHn4N9aGv.)

---
### Widgets - CupertinoButton
```dart
const CupertinoButton({
  @required this.child,
  this.padding,
  this.color,
  this.minSize: 44.0,
  this.pressedOpacity: 0.1,
  this.borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
  @required this.onPressed,
}) : assert(pressedOpacity == null || (pressedOpacity >= 0.0 && pressedOpacity <= 1.0));
```
---
### CupertinoButton - example
```dart
new CupertinoButton(
   child: const Text('Cupertino Button'),
      onPressed: () {
        setState(() { _pressedCount += 1; });
      }
),
```
---
### Widget - RaisedButton
```dart
const RaisedButton({
  Key key,
  @required this.onPressed,
  this.onHighlightChanged,
  this.textTheme,
  this.textColor,
  this.disabledTextColor,
  this.color,
  this.disabledColor,
  this.highlightColor,
  this.splashColor,
  this.colorBrightness,
  this.elevation: 2.0,
  this.highlightElevation: 8.0,
  this.disabledElevation: 0.0,
  this.padding,
  this.shape,
  this.animationDuration: kThemeChangeDuration,
  this.child,
}) : assert(elevation != null),
     assert(highlightElevation != null),
     assert(disabledElevation != null),
     assert(animationDuration != null),
     super(key: key);
```
---
### RaisedButton example
```dart
new RaisedButton(
  child: const Text('Connect with Twitter'),
  color: Theme.of(context).accentColor,
  elevation: 4.0,
  splashColor: Colors.blueGrey,
  onPressed: () {
    // Perform some action
  },
),
```
---
### Code Demo
---
