package entities.enemies;

import entities.Entity;
import entities.player.Player;

class Enemy extends Entity
{
	private var speed:Int;
	public var isGettingDamage(get, null):Bool;
	private var followingTarget:Player;
	
	public function new(?X, ?Y) 
	{
		super(X, Y);
		
		isGettingDamage = false;
	}
	
	public function getDamage():Void
	{
		isGettingDamage = true;
	}
	
	public function setFollowingTarget(target:Player)
	{
		followingTarget = target;
	}
	
	function get_isGettingDamage():Bool 
	{
		return isGettingDamage;
	}
}