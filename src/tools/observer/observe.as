package tools.observer
{
	import tools.managers.ObserverManager;

	public function observe(type:Class, callback:Function):void
	{
		ObserverManager.getInstance().map(type, callback);
	}
}