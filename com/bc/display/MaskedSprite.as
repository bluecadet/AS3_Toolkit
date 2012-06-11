package com.bc.display {
	/**
	 * "Correcting" the behavior of width and height of masked Sprites.
	 * 
	 * When masked, the width and heigh properties of a Sprite, the returned
	 * values represent the dimentions of the Sprite ignoring the mask. This
	 * class overrides those properties to return the dimentions of the 
	 * mask as to represent the visible area.
	 * 
	 * If a mask has yet to be applied, the dimentions of the Sprite will
	 * be returned as would be normal.
	 * 
	 * @author	Bluecadet, <info@bluecadet.com>
	 * @package	com.bc.display
	 */
	
	import flash.display.Sprite;
	
	public class MaskedSprite extends Sprite {
		public function MaskedSprite() {
			super();
		}
		
		/**
		 * Get the width of the mask instead of this if present
		 */
		public override function get width():Number {
			if (this.mask) {
				return this.mask.width;
			}
			return super.width;
		}
		
		/**
		 * Set the width of the mask instead of this if present
		 */
		public override function set width(value:Number):void {
			if (this.mask) {
				this.mask.width = value;
			}
			else {
				super.width = value;
			}
		}
		
		/**
		 * Get the height of the mask instead of this if present
		 */
		public override function get height():Number {
			if (this.mask) {
				return this.mask.height;
			}
			return super.height;
		}
		
		/**
		 * Set the height of the mask instead of this if present
		 */
		public override function set height(value:Number):void {
			if (this.mask) {
				this.mask.height = value;
			}
			else {
				super.height = value;
			}
		}
	}
}