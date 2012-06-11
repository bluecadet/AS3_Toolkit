package bc.utils {
	/**
	 * Drawing tools that may be useful
	 * 
	 * @author	Bluecadet, Stephen Hurwitz <steve@bluecadet.com>
	 * @package	bc.utils
	 */
	
	import flash.display.Graphics;
	
	public final class DrawingUtil {
		public function DrawingUtil() { }
		
		/**
		 * Draw a dashed line to supplied graphics. Need to set lineStyle
		 * before calling this function.
		 * 
		 * @source http://yaa-blog.blogspot.com/2007/06/actionscript-3-dashed-line.html
		 * 
		 * @param Graphics
		 * @param Number start x coordinate
		 * @param Number start y coordinate
		 * @param Number end x coordinate
		 * @param Nymber end y coordinate
		 * @param Number dash length
		 * @param Number space length
		 */
		public static function dashedLine(g:Graphics, x1:Number, y1:Number, x2:Number, y2:Number, onLength:Number = 0, offLength:Number = 0):void {
			
			g.moveTo(x1, y1);
			if (offLength == 0) {
				g.lineTo(x2,y2);
				return;
			}
			var dx:Number = x2 - x1,
				dy:Number = y2 - y1,
				lineLen:Number = Math.sqrt(dx * dx + dy * dy),
				angle:Number = Math.atan2(dy, dx),
				cosAngle:Number = Math.cos(angle),
				sinAngle:Number = Math.sin(angle),
				ondx:Number  = cosAngle * onLength,
				ondy:Number  = sinAngle * onLength,
				offdx:Number = cosAngle * offLength,
				offdy:Number = sinAngle * offLength,
				x:Number = x1,
				y:Number = y1;
			
			var fullDashCountNumber:int = Math.floor(lineLen / (onLength + offLength));
			
			for (var i:int = 0; i < fullDashCountNumber; i++){
				g.lineTo(x += ondx, y += ondy);
				g.moveTo(x += offdx, y += offdy);
			}
			
			var remainder:Number = lineLen - ((onLength+offLength) * fullDashCountNumber);
			
			if (remainder >= onLength) {
				g.lineTo(x += ondx, y += ondy);
			} else {
				g.lineTo(x2, y2);
			}
		}
	}
}