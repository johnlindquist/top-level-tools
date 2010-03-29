package top.map
{
	import top.managers.TopLevelMap;

	import flash.display.DisplayObject;

	public function mapContextView(context:DisplayObject, view:Class):void
	{
		TopLevelMap.getInstance().mapContextView(context, view);
	}
}