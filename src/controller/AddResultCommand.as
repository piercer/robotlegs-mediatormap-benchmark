package controller
{
	
	import models.BenchmarkResults;
	
	import org.robotlegs.mvcs.Command;
	
	public class AddResultCommand extends Command
	{
		
		[Inject] public var model:BenchmarkResults;
		[Inject] public var registerTime:int;
		
		override public function execute():void 
		{
			model.addResult(registerTime);
		}
	}
}