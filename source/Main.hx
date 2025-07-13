import flixel.FlxGame;
import mobile.MobileControls;

class Main extends FlxGame {
  public function new() {
    super(480, 854, PlayState);
  }
}

class PlayState extends flixel.FlxState {
  var controls:MobileControls;

  override public function create() {
    super.create();
    #if android
    controls = new MobileControls();
    add(controls);
    #end
  }

  override public function update(elapsed:Float) {
    #if android
    controls.updateInput();
    #end
    super.update(elapsed);
  }
}
