package topleveltools
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.utils.Dictionary;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;

	public class TopLevelMap
	{
		private static var topLevelMap:TopLevelMap;

		private var dictionary:Dictionary = new Dictionary();
		private var viewToContextMap:Dictionary = new Dictionary();

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

		private var viewClasses:Array = [];

		public function mapMediator(context:DisplayObject, viewClass:Class, mediatorClass:Class):void
		{
			viewClasses.push(viewClass);
			context.addEventListener(Event.ADDED_TO_STAGE, onAddViewToStage, true);
			map(viewClass, mediatorClass);
			mapViewToContext(viewClass, context);
		}

		private function mapViewToContext(view:Class, context:DisplayObject):void
		{
			viewToContextMap[view] = context;
		}

		private function onAddViewToStage(event:Event):void
		{
			var view:Sprite = event.target as Sprite;
			if (view)
			{
				var viewClass:Class = getDefinitionByName(getQualifiedClassName(view)) as Class;
				var mediatorClass:Class = getByKey(viewClass);
				if (mediatorClass)
				{
					var mediator:$Mediator = new mediatorClass() as $Mediator;
					mediator.view = view;
					mediator.onRegister();
				}
			}


		}

		public function getContextByView(clazz:Class):*
		{
			return viewToContextMap[clazz];
		}

		public function mapContextView(context:DisplayObject, view:Class):void
		{
		}

		public function mapCallback(command:Class, func:Function):void
		{

			var callbacks:Array = getByKey(command) ? getByKey(command) : [];
			callbacks.push(func);

			map(command, callbacks);
		}

		public function getInstance(clazz:Class):*
		{
			var singleton:*
			if(getByKey(clazz) == null)
			{
				singleton = new clazz();
				map(clazz, singleton);
			}
			else
			{
				singleton = getByKey(clazz);
			}
			return singleton;
		}
	}
}