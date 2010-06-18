package
{
	
	import controller.AddResultCommand;
	
	import models.BenchmarkResults;
	
	import org.robotlegs.mvcs.SignalContext;
	
	import signals.MediatorRegisteredSignal;
	import signals.ResultsUpdatedSignal;
	
	import views.TestViewMediator;
	
	public class RobotlegsMediatorMapBenchmarkerContext extends SignalContext
	{
		
		public function RobotlegsMediatorMapBenchmarkerContext(contextView:RobotLegsMediatorMapBenchmarker)
		{
			super(contextView);
		}
				
		override public function startup():void
		{

			injector.mapSingleton(BenchmarkResults);
			injector.mapSingleton(ResultsUpdatedSignal);
			
			signalCommandMap.mapSignalClass(MediatorRegisteredSignal,AddResultCommand);
			
			mediatorMap.mapView(ITestView,TestViewMediator);
			mediatorMap.mapView(RobotLegsMediatorMapBenchmarker,RobotlegsMediatorMapBenchmarkerMediator);
			
			mediatorMap.createMediator(contextView);
			
			RobotLegsMediatorMapBenchmarker(contextView).startBenchmark();
			
		}
		
	}
}