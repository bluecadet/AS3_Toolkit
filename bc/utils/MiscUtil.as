package bc.utils {
	/**
	 * Shared methods that may prove useful.
	 * 
	 * @author	Bluecadet, Stephen Hurwitz <steve@bluecadet.com>
	 * @package	bc.utils
	 */
	
	import flash.text.AntiAliasType;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public final class MiscUtil {
		public function MiscUtil() { }
		
		/**
		 * Prints properties and values for passed object
		 * 
		 * @param object
		 */
		public static function traceObject(obj:Object):void {
			trace('+- maca.utils.Utils: values stored in object -+');
			for (var x:* in obj) {
				trace('| ' + x + ': ' + obj[x]);
			}
			trace('+- ');
		}
	}
}