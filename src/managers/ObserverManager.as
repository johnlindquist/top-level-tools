package managers
{
	import flash.utils.Dictionary;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;

	public class ObserverManager
	{
		private static var observerManager:ObserverManager;

		private var observerMap:Dictionary = new Dictionary();

		public static function getInstance():ObserverManager
		{
			return observerManager ||= new ObserverManager();
		}

		public function getByKey(type:Class):*
		{
			return observerMap[type];
		}

		public function map(type:Class, callback:Function):void
		{
			var observers:Array = getByKey(type) ? getByKey(type) : [];
			observers.push(callback);

			observerMap[type] = observers;
		}

		public function notifyObservers(valueObject:Object):void
		{
			var type:Class = getDefinitionByName(getQualifiedClassName(valueObject)) as Class;

			var observers:Array = getByKey(type);
			for each(var func:Function in observers)
			{
				func(valueObject);
			}
		}
	}
}