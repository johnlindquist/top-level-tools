package tools.map
{
	import flash.display.Sprite;

	import tools.managers.TopLevelMap;

	public function mapMediator(context:Sprite, viewClass:Class, mediatorClass:Class):void
	{
		TopLevelMap.getInstance().mapMediator(context, viewClass, mediatorClass)
	}
}