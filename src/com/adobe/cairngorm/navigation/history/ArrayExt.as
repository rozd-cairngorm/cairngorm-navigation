/**
 * Created with IntelliJ IDEA.
 * User: mobitile
 * Date: 8/23/13
 * Time: 3:13 PM
 * To change this template use File | Settings | File Templates.
 */
package com.adobe.cairngorm.navigation.history
{
use namespace AS3;

public dynamic class ArrayExt extends Array
{
    public function ArrayExt(...rest)
    {
        super(rest);
    }

    override AS3 function push(...rest):uint
    {
        return super.push(rest);
    }

    override AS3 function splice(...rest):*
    {
        return super.splice(rest);
    }


}
}
