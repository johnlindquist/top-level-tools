package $Command
{
	import managers.CallbackManager;
	import managers.CommandManager;

	public function execute(clazz:Class, functionName:String = "execute"):void
	{
		var command:*;
		var mappedCommand:Class = CommandManager.getInstance().getByKey(clazz);
		if(mappedCommand)
		{
			command = new mappedCommand();
		}
		else
		{
			command = new clazz();
		}

		command[functionName]();

		CallbackManager.getInstance().callCallbacks(clazz);
	}
}