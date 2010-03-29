package top.event
{
	import top.managers.SingleEnterFrame;

	public function startEnterFrame():void
	{
		SingleEnterFrame.getInstance().start();
	}
}