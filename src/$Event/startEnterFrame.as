package $Event
{
	import managers.SingleEnterFrame;

	public function startEnterFrame():void
	{
		SingleEnterFrame.getInstance().start();
	}
}