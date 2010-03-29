package $Observer
{
	import managers.ObserverManager;

	public function notify(valueObject:Object):void
	{
		 ObserverManager.getInstance().notifyObservers(valueObject);
	}
}