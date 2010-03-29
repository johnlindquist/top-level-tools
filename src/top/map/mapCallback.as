package top.map
{
	import top.managers.CallbackManager;

	public function mapCallback(command:Class, func:Function):void
	{
		CallbackManager.getInstance().map(command, func);
	}
}