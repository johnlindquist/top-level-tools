package
{
	import topleveltools.TopLevelMap;

	public function $execute(clazz:Class, functionName:String = "execute"):void
	{
		var command:* = new clazz();
		command[functionName]();

		var callbacks:Array = TopLevelMap.getInstance().getByKey(clazz);
		for each(var func:Function in callbacks)
		{
			func();
		}
	}
}