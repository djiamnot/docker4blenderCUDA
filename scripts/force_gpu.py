#!/usr/bin/env python3

import bpy

bpy.context.user_preferences.addons['cycles'].preferences.compute_device_type = 'CUDA'
bpy.context.user_preferences.addons['cycles'].compute_device = 'CUDA_0'
bpy.context.scene.cycles.device = 'GPU'

bpy.context.scene.render.tile_x = 256
bpy.context.scene.render.tile_y = 256

bpy.ops.render.render(write_still=True)
