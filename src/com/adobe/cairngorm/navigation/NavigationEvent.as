/**
 *  Copyright (c) 2007 - 2009 Adobe
 *  All rights reserved.
 *
 *  Permission is hereby granted, free of charge, to any person obtaining
 *  a copy of this software and associated documentation files (the "Software"),
 *  to deal in the Software without restriction, including without limitation
 *  the rights to use, copy, modify, merge, publish, distribute, sublicense,
 *  and/or sell copies of the Software, and to permit persons to whom the
 *  Software is furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included
 *  in all copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 *  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 *  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 *  IN THE SOFTWARE.
 */
package com.adobe.cairngorm.navigation
{
import flash.events.Event;

public class NavigationEvent extends Event
{
    //------------------------------------------------------------------------
    //
    //  Constants
    //
    //------------------------------------------------------------------------

    public static const NAVIGATE_TO:String="navigateTo";
    public static const NAVIGATE_AWAY:String="navigateAway";

    //------------------------------------------------------------------------
    //
    //  Static Factory Methods
    //
    //------------------------------------------------------------------------

    [Deprecated(replacement="com.adobe.cairngorm.navigation.NavigationEvent.createNavigateToEvent()", since="1.0")]
    public static function newNavigateToEvent(destination:String):NavigationEvent
    {
        return createNavigateToEvent(destination);
    }

    [Deprecated(replacement="com.adobe.cairngorm.navigation.NavigationEvent.createNavigateAwayEvent()", since="1.0")]
    public static function newNavigateAwayEvent(destination:String):NavigationEvent
    {
        return createNavigateAwayEvent(destination);
    }

    public static function createNavigateToEvent(destination:String, implicit:Boolean=false):NavigationEvent
    {
        var event:NavigationEvent=new NavigationEvent(NAVIGATE_TO, destination, implicit);
        return event;
    }

    public static function createNavigateAwayEvent(destination:String, implicit:Boolean=false):NavigationEvent
    {
        var event:NavigationEvent=new NavigationEvent(NAVIGATE_AWAY, destination, implicit);
        return event;
    }

    //------------------------------------------------------------------------
    //
    //  Constructor
    //
    //------------------------------------------------------------------------

    public function NavigationEvent(type:String, destination:String, implicit:Boolean, bubbles:Boolean=true, cancelable:Boolean=false)
    {
        super(type, bubbles, cancelable);
        _destination=destination;
        _implicit = implicit;
    }

    //------------------------------------------------------------------------
    //
    //  Properties
    //
    //------------------------------------------------------------------------

    //-------------------------------
    //  destination
    //-------------------------------

    private var _destination:String;

    /**
     * The destination to navigate to. This is a compound string with the
     * following form "waypoint.direction", where waypoint is a named and
     * registered waypoint, and direction is one of the available directions
     * for that waypoint.
     */
    [ModuleId]
    public function get destination():String
    {
        return _destination;
    }

    //-------------------------------
    //  waypoint
    //-------------------------------

    public function get waypoint():String
    {
        return NavigationUtil.getParent(_destination);
    }

    //-------------------------------
    //  implicit
    //-------------------------------

    private var _implicit:Boolean;

    /**
     * A flag that indicates if this event was created internally by the library,
     * and could be ignored by History - <code>true</code>, or this even should
     * be processed by History - <code>false</code>.
     *
     * <p>Note: It make sens for History management only.</p>
     */
    public function get implicit():Boolean
    {
        return _implicit;
    }

    //------------------------------------------------------------------------
    //
    //  Overrides : Event
    //
    //------------------------------------------------------------------------

    override public function clone():Event
    {
        var event:NavigationEvent=new NavigationEvent(type, destination, implicit, bubbles, cancelable);
        return event;
    }
}
}