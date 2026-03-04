<<<<<<<< HEAD:YoYoYo Verve Prince Avoidance Edit.gmx/scripts/scrMakeCircle.gml
///scrMakeCircle(x,y,angle,numprojectiles,speed,obj,opt_tag)
========
///spawn_circle(x,y,angle,numprojectiles,speed,obj)
<<<<<<< HEAD:YoYoYo Verve Prince Avoidance Edit.gmx/scripts/make_circle.gml
>>>>>>>> upstream/main:YoYoYo Verve Prince Avoidance Edit.gmx/scripts/spawn_circle.gml
//Spawns a ring of projectiles
=======

// Spawns a ring of projectiles.
>>>>>>> upstream/main:YoYoYo Engine Verve Edition.gmx/scripts/spawn_circle.gml

var spawnX = argument0;
var spawnY = argument1;
var spawnAngle = argument2;
var spawnNum = argument3;
var spawnSpeed = argument4;
var spawnObj = argument5;
var opt_tag = 0;
if(argument_count>6) opt_tag=argument[6];
var a;

aaa[0]=0;
aaa[spawnNum-1]=0;

for (var i = 0; i < spawnNum; i += 1)
{
    a = instance_create(spawnX, spawnY, spawnObj);
    a.speed = spawnSpeed;
    a.direction = spawnAngle + i * (360 / spawnNum);
    a.tag=opt_tag;
    aaa[@i]=a;
}
return aaa;
