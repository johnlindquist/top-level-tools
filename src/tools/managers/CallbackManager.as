package tools.managers
{
	import flash.utils.Dictionary;

	public class CallbackManager
	{
		private static var commandManager:CallbackManager;

		private var callbackMap:Dictionary = new Dictionary();

		public static function getInstance():CallbackManager
		{
			return commandManager ||= new CallbackManager();
		}

		public function getByKey(type:Class):*
		{
			return callbackMap[type];
		}

		public function map(command:Class, func:Function):void
		{

			var callbacks:Array = getByKey(command) ? getByKey(command) : [];
			callbacks.push(func);

			callbackMap[command] = callbacks;
		}

		public function callCallbacks(clazz:Class):void
		{
			var callbacks:Array = getByKey(clazz);
			for each(var func:Function in callbacks)
			{
				func();
			}
		}
	}
}