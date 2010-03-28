package $Event
{
	import topleveltools.SingleEnterFrame;

	public function addEnterFrameCallback(func:Function):void
	{
		SingleEnterFrame.getInstance().addCallback(func);
	}
}