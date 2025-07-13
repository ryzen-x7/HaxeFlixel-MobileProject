package mobile;

import flixel.FlxG;
import flixel.group.FlxGroup;
import mobile.ui.VirtualButton;

class MobileControls extends FlxGroup {

public var left:VirtualButton; public var right:VirtualButton; public var up:VirtualButton; public var down:VirtualButton; public var a:VirtualButton; public var b:VirtualButton;

public function new() {
    super();

    left = new VirtualButton(50, FlxG.height - 200, "left");
    down = new VirtualButton(130, FlxG.height - 130, "down");
    up = new VirtualButton(130, FlxG.height - 270, "up");
    right = new VirtualButton(210, FlxG.height - 200, "right");

    a = new VirtualButton(FlxG.width - 210, FlxG.height - 200, "a");
    b = new VirtualButton(FlxG.width - 130, FlxG.height - 270, "b");

    add(left);
    add(down);
    add(up);
    add(right);
    add(a);
    add(b);
}

public function updateInput():Void {
    if (left.isPressed()) FlxG.keys.pressed.LEFT = true;
    if (right.isPressed()) FlxG.keys.pressed.RIGHT = true;
    if (up.isPressed()) FlxG.keys.pressed.UP = true;
    if (down.isPressed()) FlxG.keys.pressed.DOWN = true;
    if (a.isPressed()) FlxG.keys.pressed.Z = true;
    if (b.isPressed()) FlxG.keys.pressed.X = true;
}

}
