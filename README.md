In PlayState.hx:
#if android
touchControls = new TouchControls();
add(touchControls);
#end

In Update():
#if android
touchControls.updateInput();
#end

This project are in develpment...
