package
{
	import flash.display.Sprite;

	import topleveltools.TopLevelMap;

	public function $getContext(clazz:Class):Sprite
	{
		return TopLevelMap.getInstance().getContextByView(clazz);
	}
}