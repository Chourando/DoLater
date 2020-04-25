<h1 align="center">DoLater 1.0.0</h1>

<p align="center">Deferred code execution for GameMaker Studio 2.3.0 by <b>@jujuadams</b></p>

&nbsp;

`DoLater(delayFrames, callbackFunction, callbackData, once)`

Sets up a function to be executed after a certain number of frames, as defined by `delayFrames`. The `callbackFunction` will be executed after the given number of frames in the scope of the instance that calls `DoLaterTick()`. The `callbackData` value (which can be any datatype, including an array or a struct) is passed into `callbackFunction` when it is executed. If `once` is set to `false`, `callbackFunction` will be called repeatedly.

&nbsp;

`DoLaterRealtime(delayMS, callbackFunction, callbackData, once)`

&nbsp;

`DoLaterTrigger(triggerFunction, callbackFunction, callbackData, once)`

&nbsp;

`DoLaterTick(tickSize)`

Call in a Step event to update the library. `tickSize` affects when `DoLater()` functions are called; a `tickSize` of `0.5` for example will cause `DoLater()` functions to be called half as often. Use a `tickSize` of `1` if you don't want to use delta timing.

&nbsp;

`DoLaterListen(message, callbackFunction, callbackData, once)`

&nbsp;

`DoLaterBroadcast(message, broadcastData)`

&nbsp;

`DoLaterAsync(asyncEventName, conditionsArray, callbackFunction, callbackData)`

&nbsp;

`DoLaterAsyncWatcher(asyncEventName)`

&nbsp;
