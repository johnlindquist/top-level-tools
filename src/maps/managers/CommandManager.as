package maps.managers
{
	import flash.utils.Dictionary;

	public class CommandManager
	{
		private static var commandManager:CommandManager;

		private var commandMap:Dictionary = new Dictionary();

		public static function getInstance():CommandManager
		{
			return commandManager ||= new CommandManager();
		}

		public function map(key:Class, value:Class):void
		{
			commandMap[key] = value;
		}

		public function getByKey(type:Class):Class
		{
			return commandMap[type];
		}
	}
}