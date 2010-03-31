package tools.displayObject
{
	import flash.display.DisplayObject;

	public function originalWidth(obj:DisplayObject):Number
	{
		return obj.width / obj.scaleX;
	}
}