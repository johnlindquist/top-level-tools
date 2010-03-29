package tools.get
{
	import flash.display.Sprite;

	import tools.managers.TopLevelMap;

	public function getContext(clazz:Class):Sprite
	{
		return TopLevelMap.getInstance().getContextByView(clazz);
	}
}