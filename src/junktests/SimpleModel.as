package junktests
{
	public class SimpleModel
	{
		public var unique:Number;
		public function SimpleModel()
		{
			unique = Math.random();
		}

		public function update():void
		{
			trace("updating model")
		}
	}
}