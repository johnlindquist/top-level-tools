package maps.event
{
	import maps.managers.EventManager;

	public function dispatch(type:Class, payload:*):void
	{
		var commands:Array = EventManager.getInstance().getByKey(type);
		for each(var command:Class in commands)
		{
			new command()["execute"];
		}
	}
}