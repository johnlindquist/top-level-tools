package
{
	import flash.display.Sprite;

	import topleveltools.TopLevelMap;

	public function $mapMediator(context:Sprite, viewClass:Class, mediatorClass:Class):void
	{
		TopLevelMap.getInstance().mapMediator(context, viewClass, mediatorClass)
	}
}