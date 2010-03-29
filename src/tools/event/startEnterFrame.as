package tools.event
{
	import tools.managers.SingleEnterFrame;

	public function startEnterFrame():void
	{
		SingleEnterFrame.getInstance().start();
	}
}