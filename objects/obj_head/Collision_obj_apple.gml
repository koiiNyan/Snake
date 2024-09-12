var par = segment[segments];

var dir = point_direction(segment[segments].x, segment[segments].y, segment[max(0,segments-1)].x, segment[max(0,segments-1)].y);

var xp = segment[segments].x - lengthdir_x(DIS, dir);
var yp = segment[segments].y - lengthdir_y(DIS, dir);

var ins = instance_create_layer(xp, yp, layer, obj_segment);


segment[segments+1] = ins;


//Change sprite of the body before tail
//if (segments >= 1) {
//    segment[segments].sprite_index = spr_segment_2;
//}

segments += 1;

with ins 
{
	num = segments;
	parent = par;
}

audio_play_sound(snd_meow, 0, 0);
part_particles_burst(global.ps, other.x, other.y, ParticleSystem1);
instance_destroy(other);