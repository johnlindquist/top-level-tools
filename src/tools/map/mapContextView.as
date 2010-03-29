package tools.map
{
	import tools.managers.TopLevelMap;

	import flash.display.DisplayObject;

	public function mapContextView(context:DisplayObject, view:Class):void
	{
		TopLevelMap.getInstance().mapContextView(context, view);
	}
}