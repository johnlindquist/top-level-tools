package maps.command
{
	import maps.callback.CallbackManager;
	import maps.managers.CommandManager;

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
		
		if(command is ICommand)
		{
			ICommand(command).execute();
		}
		else
		{
			command[functionName]();
		}

		CallbackManager.getInstance().callCallbacks(clazz);
	}
}