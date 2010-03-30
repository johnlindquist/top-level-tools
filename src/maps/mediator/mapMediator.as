package maps.mediator
{
	import flash.display.Sprite;

	import maps.managers.TopLevelMap;

	public function mapMediator(context:Sprite, viewClass:Class, mediatorClass:Class):void
	{
		TopLevelMap.getInstance().mapMediator(context, viewClass, mediatorClass)
	}
}