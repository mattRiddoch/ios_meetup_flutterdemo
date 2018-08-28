# iOS Dev Meetup

![Flutter Logo](https://cdn.arstechnica.net/wp-content/uploads/2018/06/7-2-1.jpg)

---

### Primary Features

- Cross platform.
- Fast: 60 fps.
- Uses rendering engine written in C++, single view.
- Flutter framework written in dart.
- Open source.

---

### Flutter vs. Others

- Not a faceoff.
- Web tech, hybrid. (performance)
- Native wrapping. (interop bridge, map to 2 platforms)
- Full stack rendering.

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
### Widgets
##CupertinoButton
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
```dart
new CupertinoButton(
   child: const Text('Cupertino Button'),
      onPressed: () {
        setState(() { _pressedCount += 1; });
      }
),
```
---
