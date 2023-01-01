# Application Timers (bpy.app.timers) docs: https://docs.blender.org/api/current/bpy.app.timers.html
# Executing external scripts: https://docs.blender.org/api/current/info_tips_and_tricks.html#executing-external-scripts

import bpy

filename = "/backup/projects/blendex_playground/blendex-sample-scripts/solar-system/output.py"

file_contents = ""

def redraw():
    global file_contents
    data = open(filename).read()
    if data != file_contents:
      file_contents = data
      deleteAllObjects()
      exec(compile(data, filename, 'exec'))
    return 0.2


def deleteAllObjects():
    """
    Deletes all objects in the current scene
    """
    deleteListObjects = ['MESH', 'CURVE', 'SURFACE', 'META', 'FONT', 'HAIR', 'POINTCLOUD', 'VOLUME', 'GPENCIL',
                     'ARMATURE', 'LATTICE', 'EMPTY', 'LIGHT', 'LIGHT_PROBE', 'CAMERA', 'SPEAKER']

    # Select all objects in the scene to be deleted:

    for o in bpy.context.scene.objects:
        for i in deleteListObjects:
            if o.type == i:
                o.select_set(False)
            else:
                o.select_set(True)
    # Deletes all selected objects in the scene:

    bpy.ops.object.delete()

bpy.app.timers.register(redraw)
