package mobile;

import flixel.FlxSprite;
import flixel.input.touch.FlxTouch;
import flixel.FlxG;

class TouchButton extends FlxSprite
{
    public var action:String; // e.g.: "left", "a", "z"

    public function new(x:Float, y:Float, action:String)
    {
        super(x, y);
        this.action = action;
        loadGraphic("assets/mobile/virtualpad.png", true, 396, 127);
        frames = FlxAtlasFrames.fromSparrow(graphic, "assets/mobile/virtualpad.xml");
        animation.addByPrefix("idle", action, 0, false);
        animation.play("idle");
        scrollFactor.set();
        alpha = 0.7;
    }

    public function isPressed():Bool
    {
        for (touch in FlxG.touches.list)
        {
            if (overlapsPoint(touch.screenX, touch.screenY))
                return true;
        }
        return false;
    }
}
