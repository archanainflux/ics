/*
*
* ADOBE CONFIDENTIAL
* ___________________
*
* Copyright [2007-2010] Adobe Systems Incorporated
* All Rights Reserved.
*
* NOTICE:  All information contained herein is, and remains
* the property of Adobe Systems Incorporated and its suppliers,
* if any.  The intellectual and technical concepts contained
* herein are proprietary to Adobe Systems Incorporated and its
* suppliers and are protected by trade secret or copyright law.
* Dissemination of this information or reproduction of this material
* is strictly forbidden unless prior written permission is obtained
* from Adobe Systems Incorporated.
*/
package com.adobe.coreUI.controls.whiteboardClasses
{
	import mx.core.IUIComponent;
	
	/**
	 * @private
	 */
	public interface IWBPropertiesToolBar extends IUIComponent
	{
		function get propertyData():*;
	 	function set propertyData(p_data:*):void;
	 	function set isFilledShape(p_filled:Boolean):void;
	}
}