
# Below are advanced TPNS examples with parameters.

# Write out default templates from the tool instead of creating new ones
# by doing the following:
#     compile_power_plan -ring -write_default_template ring_example.tpl
#     compile_power_plan -write_default_template mesh_example.tpl


# Specify strategy for rings.
# template : ring(wh, wv)
set_power_ring_strategy \
    ring1 \
    -core \
    -nets       "${MW_POWER_NET} ${MW_GROUND_NET}" \
    -template   ./script/tpns_ring.tpl:ring(11,11)

compile_power_plan -ring 

    
# Specify strategy for top mesh.
# template : mesh(wh, wv, oh, ov, ph, pv, nh, nv)
set_power_plan_strategy \
    mesh1 \
    -core \
    -nets       "${MW_POWER_NET} ${MW_GROUND_NET}" \
    -template   ./script/tpns_mesh.tpl:mesh(2,2,30,50,30,42,40,40) \
    -extension  {{stop: outermost_ring}}

compile_power_plan

