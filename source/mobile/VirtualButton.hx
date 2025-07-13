package mobile;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import openfl.utils.Assets;

class VirtualButton extends FlxSprite {
    public var action:String;

    public function new(x:Float, y:Float, action:String) {
        super(x, y);
        this.action = action;

        frames = FlxAtlasFrames.fromSparrow(
            Assets.getBitmapData("assets/mobile/virtualpad.png"),
            Assets.getText("assets/mobile/virtualpad.xml")
        );

        animation.addByPrefix("idle", action, 0);
        animation.play("idle");

        scrollFactor.set();
        alpha = 0.7;
    }

    public function isPressed():Bool {
        for (touch in FlxG.touches.list) {
            if (overlapsPoint(touch.screenX, touch.screenY)) {
                return true;
            }
        }
        return false;
    }
}
