package top.event
{
	import top.managers.SingleEnterFrame;

	public function addEnterFrameCallback(func:Function):void
	{
		SingleEnterFrame.getInstance().addCallback(func);
	}
}