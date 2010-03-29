package tools.map
{
	import tools.managers.ValueManager;

	public function mapValue(whenAskedFor:Class, useValue:Object):void
	{
		ValueManager.getInstance().map(whenAskedFor, useValue);
	}
}