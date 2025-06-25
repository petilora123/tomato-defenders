system = part_system_create();
type = part_type_create();
emitter = part_emitter_create(system);

part_type_shape(type,pt_shape_disk);
part_type_size(type,0.02,0.2,0,0);
part_type_speed(type,0.2,1,0,0);
part_type_direction(type,0,359,0,0);
part_type_life(type,20,40);
part_type_alpha2(type,1,0);
part_emitter_region(system,emitter,x,x,y,y,ps_shape_ellipse,ps_distr_gaussian);
part_emitter_burst(system,emitter,type,30);