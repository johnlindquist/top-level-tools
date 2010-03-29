package tools.observer
{
	import tools.managers.ObserverManager;

	public function notify(valueObject:Object):void
	{
		 ObserverManager.getInstance().notifyObservers(valueObject);
	}
}