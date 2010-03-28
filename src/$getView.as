package
{
	import flash.display.DisplayObject;

	import topleveltools.TopLevelMap;

	public function $getView(mediator:*):DisplayObject
	{
		var view:DisplayObject = TopLevelMap.getInstance().getByKey(mediator);
		return view; 
	}
}