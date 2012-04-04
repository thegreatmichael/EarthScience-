package com.view.interactive.controls 
{
	import com.events.ViewEvent;
	import flash.events.MouseEvent;
	import com.view.ComparisonView;
	import com.controller.Controller;
	/**
	 * ...
	 * @author Brandon Dockery
	 */
	public class BackButton extends ClickableControl
	{
		
		public function BackButton() 
		{
			
		}

		protected override function onMouseUpHandler(e:MouseEvent):void {
			super.onMouseUpHandler(e);
			ComparisonView.screenNum = 1;
			Controller.comparisonDTO.comparisonItemA = null;
			Controller.comparisonDTO.comparisonItemB = null;
			dispatchEvent(new ViewEvent("Landing_View"));
		}
	}

}