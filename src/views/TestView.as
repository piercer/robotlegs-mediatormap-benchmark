package views
{

	import flash.display.Sprite;
	import flash.utils.getTimer;
	
	public class TestView extends Sprite
	{
		
		private var _createTime:int;
		
		public function TestView()
		{
			_createTime = getTimer();
			addChild(new TestViewMovieClip());
		}

		public function get createTime():int
		{
			return _createTime;
		}

	}
}