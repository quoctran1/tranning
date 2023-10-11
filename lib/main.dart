import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tranning/custom_paint/default_ticket_custom_paint.dart';
import 'package:tranning/custom_paint/seperate_ticket_custom_paint.dart';
import 'package:tranning/custom_paint/test_custom_paint.dart';
import 'package:tranning/test_bloc/bloc_test.dart';
import 'package:tranning/test_bloc/test_event.dart';
import 'package:tranning/test_bloc/test_state.dart';
import 'package:tranning/widget/loading_widget.dart';

void main() {
  runApp(const MyApp(
    title: "1234",
  ));
}

class MyApp extends StatelessWidget {
  final String title;

  const MyApp({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        WidgetsBinding.instance.focusManager.primaryFocus!.unfocus();
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Scaffold(
          body: SeperateTicketCustomPaint(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late BlocTest bloc;
  String data = '';

  @override
  void initState() {
    super.initState();
    bloc = BlocTest();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          BlocConsumer(
            bloc: bloc,
            listener: (BuildContext context, Object? state) {
              if (state is LoadedState) {
                data = state.data;
              }
            },
            builder: (BuildContext context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (state is LoadingState)
                    const LoadingWidget(
                      isLoading: true,
                      color: Colors.red,
                      child: SizedBox(),
                    ),
                  TextWidget(
                    data: data,
                  ),
                  ButtonClick(
                    title: 'Button',
                    onTap: () {
                      bloc.add(ChangeDataEvent('qwerty'));
                    },
                  ),
                  ButtonClick(
                    title: 'Loading',
                    onTap: () {
                      bloc.add(ShowLoadingEvent());
                    },
                    backgroundColor: Colors.red,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class ButtonClick extends StatelessWidget {
  final String title;
  final Function onTap;
  final Color backgroundColor;
  final double height, width;

  const ButtonClick({
    Key? key,
    required this.title,
    required this.onTap,
    this.backgroundColor = Colors.yellow,
    this.height = 200,
    this.width = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          // height: 50,
          //   width: 150,
          padding: const EdgeInsets.symmetric(
              vertical: 12, horizontal: 24),
          // margin: const EdgeInsets.symmetric(
          //     vertical: 12, horizontal: 24),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: backgroundColor),
          child: Text(title)),
      onTap: () {
        onTap();
      },
    );
  }
}

class TextWidget extends StatelessWidget {
  final String data;

  const TextWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(vertical: 12, horizontal: 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.red),
      child: Text(
        data,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 36,
              color: Colors.white,
              height: 1.2,
            ),
      ),
    );
  }
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Application',
      debugShowCheckedModeBanner: false,
      home: Page(),
    );
  }
}

const int _kNumberOfItems = 50;
const int _kNumberOfItemsPerRow = 2;

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Application title'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0, // this will be set when a tab is tapped
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            )
          ],
        ),
        body: ClipRect(
          // Forces the OverlayEntry not to overflow this container
          child: Overlay(
            // The Overlay that allows us to control the positioning
            initialEntries: <OverlayEntry>[
              OverlayEntry(
                builder: (BuildContext context) {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: _kNumberOfItemsPerRow,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: _kNumberOfItems,
                    itemBuilder: (BuildContext context, int index) {
                      return ItemWidget(
                        id: index,
                        color: Color(
                                (Random().nextDouble() * 0xFFFFFF)
                                        .toInt() <<
                                    0)
                            .withOpacity(1.0),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///
/// Simple Widget to demonstrate the use
/// of the OverlayableContainerOnLongPress
///
class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.id,
    required this.color,
  });

  final int id;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return OverlayableContainerOnLongPress(
      child: GridTile(
        child: Card(
          child: Container(
            color: color,
            child: Center(
              child: Text('item_$id',
                  style: const TextStyle(
                    color: Colors.black,
                  )),
            ),
          ),
        ),
      ),
      overlayContentBuilder:
          (BuildContext context, VoidCallback onHideOverlay) {
        return Container(
          height: double.infinity,
          color: Colors.black38,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                onPressed: () {
                  onHideOverlay();
                  _onEditItem();
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
                onPressed: () {
                  onHideOverlay();
                  _onDeleteItem();
                },
              ),
            ],
          ),
        );
      },
      onTap: () {
        _onViewItem();
      },
    );
  }

  void _onViewItem() {
    debugPrint('view item: $id');
  }

  void _onEditItem() {
    debugPrint('edit item: $id');
  }

  void _onDeleteItem() {
    debugPrint('delete item: $id');
  }
}

/// -----------------------------------------------------------------
/// Widget that accepts an overlay to be displayed on top of itself
/// when a LongPress gesture is detected.
///
/// Required a specific Overlay higher in the hierarchy to be used
/// as a parent
/// -----------------------------------------------------------------
typedef OverlayableContainerOnLongPressBuilder = Function(
    BuildContext context, VoidCallback hideOverlay);

class OverlayableContainerOnLongPress extends StatefulWidget {
  const OverlayableContainerOnLongPress({
    super.key,
    required this.child,
    required this.overlayContentBuilder,
    this.onTap,
  });

  final Widget child;
  final OverlayableContainerOnLongPressBuilder overlayContentBuilder;
  final VoidCallback? onTap;

  @override
  State<OverlayableContainerOnLongPress> createState() =>
      _OverlayableContainerOnLongPressState();
}

class _OverlayableContainerOnLongPressState
    extends State<OverlayableContainerOnLongPress> {
  OverlayEntry? _overlayEntry;

  @override
  void dispose() {
    _removeOverlayEntry();
    super.dispose();
  }

  void _removeOverlayEntry() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  ///
  /// Returns the position (as a Rect) of an item
  /// identified by its BuildContext
  ///
  Rect _getPosition(BuildContext context) {
    final RenderBox box = context.findRenderObject() as RenderBox;
    final Offset topLeft =
        box.size.topLeft(box.localToGlobal(Offset.zero));
    final Offset bottomRight =
        box.size.bottomRight(box.localToGlobal(Offset.zero));
    return Rect.fromLTRB(
        topLeft.dx, topLeft.dy, bottomRight.dx, bottomRight.dy);
  }

  ///
  /// Displays an OverlayEntry on top of the selected item
  /// This overlay disappears if we click outside or, on demand
  ///
  void _showOverlayOnTopOfItem(BuildContext context) {
    OverlayState overlayState = Overlay.of(context);
    final Rect overlayPosition = _getPosition(overlayState.context);

    // Get the coordinates of the item
    final Rect widgetPosition = _getPosition(context).translate(
      -overlayPosition.left,
      -overlayPosition.top,
    );

    // Generate the overlay entry
    _overlayEntry = OverlayEntry(builder: (BuildContext context) {
      return GestureDetector(
        behavior: HitTestBehavior.deferToChild,
        onTap: () {
          ///
          /// Remove the overlay when we tap outside
          ///
          _removeOverlayEntry();
        },
        child: Material(
          color: Colors.black12,
          child: CustomSingleChildLayout(
            delegate: _OverlayableContainerLayout(widgetPosition),
            child: widget.overlayContentBuilder(
                context, _removeOverlayEntry),
          ),
        ),
      );
    });

    // Insert the overlayEntry on the screen
    overlayState.insert(
      _overlayEntry!,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap?.call();
      },
      onLongPress: () {
        _showOverlayOnTopOfItem(context);
      },
      child: widget.child,
    );
  }
}

class _OverlayableContainerLayout extends SingleChildLayoutDelegate {
  _OverlayableContainerLayout(this.position);

  final Rect position;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints.loose(
        Size(position.width, position.height));
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(position.left, position.top);
  }

  @override
  bool shouldRelayout(_OverlayableContainerLayout oldDelegate) {
    return position != oldDelegate.position;
  }
}
