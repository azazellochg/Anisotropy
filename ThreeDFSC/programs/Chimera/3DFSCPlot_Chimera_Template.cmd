### Display 3DFSC and coloring original map by angular resolution
### Written by Tom Goddard
### Modified by Yong Zi Tan

# Open lineplot.py
open lineplot.py

# Open both volumes and hide the 3DFSC volume.
set bgColor white
open #===3DFSC====#
volume #1 originIndex #==Origin3DFSC==#
volume #1 voxelSize #==apix==#
open #===FullMap====#
volume #2 originIndex #==OriginFullMap==#
volume #2 voxelSize #==apix==#
volume #1 hide
view
#colorkey 0.2,0.14 0.8,0.1 tickMarks True tickThickness 3 "Poorer" red "Better" blue
2dlabels text "Relative XY-plane resolution (AU)" color black xpos 0.2 ypos 0.16

# Execute lineplot.py
fscplot #1

