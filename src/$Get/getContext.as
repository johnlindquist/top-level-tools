package $Get
{
	import flash.display.Sprite;

	import managers.TopLevelMap;

	public function getContext(clazz:Class):Sprite
	{
		return TopLevelMap.getInstance().getContextByView(clazz);
	}
}