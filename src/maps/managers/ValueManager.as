package maps.managers
{
	import flash.utils.Dictionary;

	[ExcludeClass]
	public class ValueManager
	{
		private static var valueManager:ValueManager;

		private var callbackMap:Dictionary = new Dictionary();

		public static function getInstance():ValueManager
		{
			return valueManager ||= new ValueManager();
		}

		public function getByKey(whenAskedFor:Class):Object
		{
			return callbackMap[whenAskedFor];
		}

		public function map(whenAskedFor:Class, useValue:Object):void
		{
			callbackMap[whenAskedFor] = useValue;
		}
	}
}