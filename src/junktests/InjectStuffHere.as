package junktests
{
	import flash.display.Sprite;

	public class InjectStuffHere extends Sprite
	{
		private var simpleObject:SimpleObject = $new(SimpleObject);
		private var simpleObject2:SimpleObject = $new(SimpleObject);
		private var simpleObject3:SimpleObject = $new(SimpleObject);

		private var simpleModel:SimpleModel = $getInstance(SimpleModel);
		private var simpleModel2:SimpleModel = $getInstance(SimpleModel);
		private var simpleModel3:SimpleModel = $getInstance(SimpleModel);

		public function InjectStuffHere()
		{
			trace("junktests.InjectStuffHere::SimpleSprite:simpleObject ", simpleObject);
			trace("junktests.InjectStuffHere::SimpleSprite:simpleObject2 ", simpleObject2);
			trace("junktests.InjectStuffHere::SimpleSprite:simpleObject3 ", simpleObject3);

			trace("junktests.InjectStuffHere::SimpleSprite: ", simpleModel.unique);
			trace("junktests.InjectStuffHere::SimpleSprite: ", simpleModel2.unique);
			trace("junktests.InjectStuffHere::SimpleSprite: ", simpleModel3.unique);
		}
	}
}              