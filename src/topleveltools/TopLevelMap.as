package topleveltools
{
	import flash.utils.Dictionary;

	public class TopLevelMap
	{
		private static var topLevelMap:TopLevelMap;

		private var dictionary:Dictionary = new Dictionary();

		public static function getInstance():TopLevelMap
		{
			return topLevelMap ||= new TopLevelMap();
		}

		public function map(key:*, value:*):void
		{
			 dictionary[key] = value;
		}

		public function getByKey(key:*):*
		{
			return dictionary[key];
		}

		public function mapClass(whenAskedFor:Class, instantiateClass:Class):void
		{
			dictionary[whenAskedFor] = instantiateClass;
		}
		
	}
}