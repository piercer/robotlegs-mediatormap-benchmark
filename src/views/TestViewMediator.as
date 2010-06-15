package views
{
	
	import flash.utils.getTimer;
	
	import org.robotlegs.mvcs.Mediator;
	
	import signals.MediatorRegisteredSignal;
	
	public class TestViewMediator extends Mediator
	{

		[Inject] public var view:TestView;
		[Inject] public var mediatorRegisteredSignal:MediatorRegisteredSignal;

		override public function onRegister():void
		{
			mediatorRegisteredSignal.dispatch(getTimer()-view.createTime);
		}

	}

}