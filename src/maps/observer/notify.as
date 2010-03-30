package maps.observer
{
	import maps.managers.ObserverManager;

	public function notify(valueObject:Object):void
	{
		 ObserverManager.getInstance().notifyObservers(valueObject);
	}
}