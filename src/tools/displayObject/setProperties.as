package tools.displayObject
{
	import flash.display.DisplayObject;

	public function setProperties(children:Array, props:Object):void
	{
		var child:DisplayObject;
		for (var i:int = 0, l = children.length; i < l; i++)
		{
			child = children[i];
			for (var prop:String in props)
			{
				child[prop] = props[prop];
			}
		}
	}
}