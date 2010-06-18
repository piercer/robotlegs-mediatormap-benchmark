package views
{
	
	import flash.utils.getTimer;
	
	import org.robotlegs.mvcs.Mediator;
	
	import signals.MediatorRegisteredSignal;
	
	public class TestViewMediator extends Mediator
	{

		[Inject] public var view:ITestView;
		[Inject] public var mediatorRegisteredSignal:MediatorRegisteredSignal;

		override public function onRegister():void
		{
			mediatorRegisteredSignal.dispatch(getTimer()-TestView(view.parent.parent.parent).createTime);
		}

	}

}