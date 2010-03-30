package maps.callback
{
	import maps.callback.CallbackManager;

	public function mapCallback(command:Class, func:Function):void
	{
		CallbackManager.getInstance().map(command, func);
	}
}