package mobile;

import flixel.group.FlxGroup;

class TouchControls extends FlxGroup
{
    public var left:TouchButton;
    public var down:TouchButton;
    public var up:TouchButton;
    public var right:TouchButton;
    public var a:TouchButton;
    public var b:TouchButton;

    public function new()
    {
        super();

        // Positions Buttons with resolution
        left = new TouchButton(50, FlxG.height - 200, "left");
        down = new TouchButton(130, FlxG.height - 130, "down");
        up = new TouchButton(130, FlxG.height - 270, "up");
        right = new TouchButton(210, FlxG.height - 200, "right");

        a = new TouchButton(FlxG.width - 210, FlxG.height - 200, "a");
        b = new TouchButton(FlxG.width - 130, FlxG.height - 270, "b");

        add(left);
        add(down);
        add(up);
        add(right);
        add(a);
        add(b);
    }

    public function updateInput()
    {
        // Input System:
        if (left.isPressed()) controls.LEFT = true;
        if (right.isPressed()) controls.RIGHT = true;
        if (up.isPressed()) controls.UP = true;
        if (down.isPressed()) controls.DOWN = true;

        if (a.isPressed()) controls.ACCEPT = true;
        if (b.isPressed()) controls.BACK = true;
    }
}
