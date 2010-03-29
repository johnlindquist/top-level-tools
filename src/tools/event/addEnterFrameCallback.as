package tools.event
{
	import tools.managers.SingleEnterFrame;

	public function addEnterFrameCallback(func:Function):void
	{
		SingleEnterFrame.getInstance().addCallback(func);
	}
}