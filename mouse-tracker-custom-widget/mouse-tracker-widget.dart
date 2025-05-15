// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';

class MouseTracker extends StatefulWidget {
  const MouseTracker({
    super.key,
    this.width,
    this.height,
    this.onHover,
    this.onEnter,
    this.onExit,
  });

  final double? width;
  final double? height;
  final Future Function(double mousePositionX, double mousePositionY)? onHover;
  final Future Function()? onEnter;
  final Future Function()? onExit;

  @override
  State<MouseTracker> createState() => _MouseTrackerState();
}

class _MouseTrackerState extends State<MouseTracker> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        opaque: false,
        onHover: (PointerHoverEvent event) async {
          if (widget.onHover != null) {
            await widget.onHover!( event.localPosition.dx, event.localPosition.dy );
          }
        },
        onEnter: (PointerEnterEvent event) async {
            if ( widget.onEnter != null ) {
                await widget.onEnter!();
            }
        },
        onExit: (PointerExitEvent event) async {
          if (widget.onExit != null) {
            await widget.onExit!();
          }
        }
    );
  }
}
