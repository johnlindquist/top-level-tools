package topleveltools
{
	import flash.display.Sprite;
	import flash.events.Event;

	public class SingleEnterFrame extends Sprite
	{
		private static var singleEnterFrame:SingleEnterFrame;

		private var callbacks:Array = [];

		public static function getInstance():SingleEnterFrame
		{
			return singleEnterFrame ||= new SingleEnterFrame();
		}

		public function start():void
		{
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
		}

		public function stop():void
		{
			removeEventListener(Event.ENTER_FRAME, onEnterFrame);
		}

		public function addCallback(func:Function):void
		{
			callbacks.push(func);
		}

		private function onEnterFrame(event:Event):void
		{
			for each(var func:Function in callbacks)
			{
				func();
			}
		}
	}
}