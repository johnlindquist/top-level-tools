package maps.mediator
{
	import tools.mediator.*;
	import flash.display.DisplayObject;
	import flash.display.Sprite;

	public function	addMediatedView(parent:Sprite, view:Sprite, mediatorClass:Class):DisplayObject
	{
		var mediator:* = new mediatorClass();
		Mediator(mediator).view = view;
		Mediator(mediator).onRegister();
		parent.addChild(view);
		return view;
	}
}