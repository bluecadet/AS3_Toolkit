package com.bc.utils {
	/**
	 * Math calculations that may be useful
	 * 
	 * @author	Bluecadet, <info@bluecadet.com>
	 * @package	com.bc.utils
	 */
	
	public final class MathUtil {
		public function MathUtil() {}
		
		/**
		 * Convert celsius to fahrenheit rounded to whole number
		 * 
		 * @param Number celsius value in celsius
		 * @return int
		 */
		public static function celsiusToFahrenheit(celsius:Number):int {
			return celsius * 9 / 5 + 32;
		}
		
		/**
		 * Convert degrees to radians for functions requiring an angle
		 * 
		 * @param Number angle in degrees
		 * @return Number
		 */
		public static function degreesToRadians(degrees:Number):Number {
			return degrees * (Math.PI / 180);
		}
		
		/**
		 * Calculate percentage with the chance to "baseline" the values
		 * 
		 * @param Number left side of equation
		 * @param Number right side of equation
		 * @param Number modifier
		 * 
		 * @return Number
		 */
		public static function percent(v1:Number, v2:Number, modify:Number = 0):Number {
			var test:Number = v1 - modify;
			var high:Number = v2 - modify;
			return (test / high);
		}
		
		/**
		 * Formats a number with commas. For example, 
		 * 123456789 becomes 123,456,789
		 * 
		 * @param Number value
		 * 
		 * @return String
		 */
		public static function addCommasToNumber(value:Number):String {
			var string:String = value.toString();
			var array:Array = string.split('.');
			var regex:RegExp = /(\d+)(\d{3})/;
			var integer:String = array[0];
			var fraction:String = '';
			while (regex.test(integer)) {
				integer = integer.replace(regex, '$1' + ',' + '$2');
			}
			if (array[1]) {
				fraction = (integer.length > 0) ? '.' + array[1] : '';
			}
			return integer + fraction;
		}
		
		/**
		 * Removes commas from number string. Returns a number useable
		 * in calculations
		 * 
		 * @param String string
		 * @return Number
		 */
		public static function removeCommasFromNumber(value:String):Number {
			var regex:RegExp = /,/g;
			return Number(value.replace(regex, ''));
		}
		
		/**
		 * Converts degrees into cardinal direction.
		 * 
		 * This only returns the 4 main directions, it will skip
		 * South East, South South East, etc.
		 * 
		 * @param Number direction
		 * 
		 * @return String Direction
		 */
		public static function degreestoCardnialDirection(angle:Number):String {
			if (angle < 56.25) {
				return 'North';
			}
			else if (angle < 146.25) {
				return 'East';
			}
			else if (angle < 236.25) {
				return 'South';
			}
			else if (angle < 303.75) {
				return 'West';
			}
			return 'North';
		}
		
		/**
		 * Rounds number to the specified number of decimal places
		 * 
		 * @param Number number to round
		 * @param uint number of decimal places
		 * 
		 * @return Number
		 */
		public static function roundDecimal(number:Number, precision:uint):Number {
			var decimal:Number = Math.pow(10, precision);
			return Math.round(decimal * number) / decimal;
		}
	}
}