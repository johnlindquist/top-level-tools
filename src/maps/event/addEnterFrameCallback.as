package maps.event
{
	import maps.managers.SingleEnterFrame;

	public function addEnterFrameCallback(func:Function):void
	{
		SingleEnterFrame.getInstance().addCallback(func);
	}
}