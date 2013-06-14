/**
 * Created with IntelliJ IDEA.
 * User: mobitile
 * Date: 6/14/13
 * Time: 2:18 PM
 * To change this template use File | Settings | File Templates.
 */
package com.adobe.cairngorm.navigation.waypoint
{
public class WaypointRegistry
{
    private static var currentStateFactory:Class;

    public static function registerCurrentStateWaypointFactory(factory:Class):void
    {
        currentStateFactory = factory;
    }

    private static var selectedChildFactory:Class;

    public static function registerSelectedChildWaypointFactory(factory:Class):void
    {
        selectedChildFactory = factory;
    }

    public static function getCurrentStateWaypoint():IWaypoint
    {
        return new currentStateFactory();
    }

    public static function getSelectedChildWaypoint():IWaypoint
    {
        return new selectedChildFactory();
    }
}
}
