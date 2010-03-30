package maps.context
{
	import flash.display.Sprite;

	import maps.managers.TopLevelMap;

	public function getContext(clazz:Class):Sprite
	{
		return TopLevelMap.getInstance().getContextByView(clazz);
	}
}