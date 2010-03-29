package top.observer
{
	import top.managers.ObserverManager;

	public function notify(valueObject:Object):void
	{
		 ObserverManager.getInstance().notifyObservers(valueObject);
	}
}