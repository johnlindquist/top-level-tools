package top.get
{
	import flash.display.Sprite;

	import top.managers.TopLevelMap;

	public function getContext(clazz:Class):Sprite
	{
		return TopLevelMap.getInstance().getContextByView(clazz);
	}
}