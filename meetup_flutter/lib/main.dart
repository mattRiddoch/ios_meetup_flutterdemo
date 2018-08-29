import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';


enum Actions { Increment, Decrement }

int counterReducer(int state, dynamic action) {
  if (action == Actions.Increment) {
    return state + 1;
  }
  if (action == Actions.Decrement) {
    return state - 1;
  }
  return state;
}


void main() {
  // Create your store as a final variable in a base Widget. This works better
  // with Hot Reload than creating it directly in the `build` function.
  final store = new Store<int>(counterReducer, initialState: 0);

  runApp(new FlutterReduxApp(
    title: 'Flutter Redux Demo',
    store: store,
  ));
}


class FlutterReduxApp extends StatelessWidget {
  final Store<int> store;
  final String title;

  FlutterReduxApp({Key key, this.store, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // The StoreProvider should wrap your MaterialApp or WidgetsApp. This will
    // ensure all routes have access to the store.
    return new StoreProvider<int>(
      // Pass the store to the StoreProvider. Any ancestor `StoreConnector`
      // Widgets will find and use this value as the `Store`.
      store: store,
      child: new MaterialApp(
        theme: new ThemeData.light(),
        title: title,
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text(title),
          ),
          body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Text(
                  'You have pushed the button this many times:',
                ),
                new StoreConnector<int, String>(
                  converter: (store) => store.state.toString(),
                  builder: (context, count) {
                    return new Text(
                      count,
                      style: Theme.of(context).textTheme.display1,
                    );
                  },
                ),
                new StoreConnector<int, VoidCallback>(
                  converter: (store) {
                    return () => store.dispatch(Actions.Decrement);
                  },
                  builder: (context, callback) {
                    return new CupertinoButton(
                      child: Text('Decement'),
                      onPressed: callback,
                    );
                  },
                )
              ],
            ),
          ),
          
          floatingActionButton: new StoreConnector<int, VoidCallback>(
            converter: (store) {
              // Return a `VoidCallback`, which is a fancy name for a function
              // with no parameters. It only dispatches an Increment action.
              return () => store.dispatch(Actions.Increment);
            },
            builder: (context, callback) {
              return new FloatingActionButton(
                // Attach the `callback` to the `onPressed` attribute
                onPressed: callback,
                tooltip: 'asdasdasd',
                child: new Icon(Icons.add),
              );
            },
          ),
        ),
      ),
    );
  }
}
