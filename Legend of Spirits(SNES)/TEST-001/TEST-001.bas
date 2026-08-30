#include "fbgfx.bi"
using FB

screenres 768, 672

dim as single sz
dim as ushort SnesBg
dim as ubyte SnesBgRom
SnesBgRom = 151
paint(767,671),SnesBgRom
dim as integer clr, snes_color(0)

Sub Box_Sprite()
        dim as single sz
        dim as integer clr, box_color(3)
        box_color(3) = 65
        box_color(4) = 196
        box_color(5) = 209
        restore spr_data2 rem box
        for y as single = 3 to 27
                for x as single = 0 to 24
                        read clr
                        sz = 3.2
                        line(x*sz,y*sz)-((x+1)*sz-1,(y+1)*sz-1),box_color(clr),BF
                next x
        next y
end sub
Sub Water_Header_spr()
        dim as single sz
        dim as integer clr, water_header_color(2)
        water_header_color(1) = 150
        water_header_color(2) = 149
        restore spr_data1 rem water header
        for y as single = 120 to 134
                for x as single = 0 to 14
                        read clr
                        sz = 1.5
                        for i as integer = 0 to 767
                                line(x*sz,y*sz)-((x+i)*sz-1,(y+1)*sz-1),water_header_color(clr),BF
                        next i
                next x
        next y
end sub
Sub Water_Skirt_spr()
        dim as single sz
        dim as integer clr, water_skirt_color(2)
        water_skirt_color(1) = 150
        water_skirt_color(2) = 149
        restore spr_data rem water skirt
        for y as single = 130 to 144
                for x as single = 0 to 14
                        read clr
                        sz = 1.5
                        for i as integer = 0 to 767
                                for j as integer = 0 to 502
                                        line(x*sz,y*sz)-((x+i)*sz-1,(y+j)*sz-1),water_skirt_color(clr),BF
                                next j
                        next i
                next x
        next y
end sub

do
        for SnesBgRom = 0 to 0
                read SnesBg
                snes_color(SnesBgRom) = SnesBg
        next
        Box_Sprite()
        Water_Header_spr()
        Water_Skirt_spr()
        
        sleep 20,1
        
loop until multikey(SC_ESCAPE)

spr_data1:
data 2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1


spr_data:
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

spr_data2:
data 4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4
data 4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4
data 4,4,5,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,5,4,4
data 4,4,3,5,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,5,3,4,4
data 4,4,3,3,5,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,5,3,3,4,4
data 4,4,3,3,3,5,3,3,3,3,3,3,3,3,3,3,3,3,3,5,3,3,3,4,4
data 4,4,3,3,3,3,5,3,3,3,3,3,3,3,3,3,3,3,5,3,3,3,3,4,4
data 4,4,3,3,3,3,3,5,3,3,3,3,3,3,3,3,3,5,3,3,3,3,3,4,4
data 4,4,3,3,3,3,3,3,5,3,3,3,3,3,3,3,5,3,3,3,3,3,3,4,4
data 4,4,3,3,3,3,3,3,3,5,3,3,3,3,3,5,3,3,3,3,3,3,3,4,4
data 4,4,3,3,3,3,3,3,3,3,5,3,3,3,5,3,3,3,3,3,3,3,3,4,4
data 4,4,3,3,3,3,3,3,3,3,3,5,3,5,3,3,3,3,3,3,3,3,3,4,4
data 4,4,3,3,3,3,3,3,3,3,3,3,5,3,3,3,3,3,3,3,3,3,3,4,4
data 4,4,3,3,3,3,3,3,3,3,3,5,3,5,3,3,3,3,3,3,3,3,3,4,4
data 4,4,3,3,3,3,3,3,3,3,5,3,3,3,5,3,3,3,3,3,3,3,3,4,4
data 4,4,3,3,3,3,3,3,3,5,3,3,3,3,3,5,3,3,3,3,3,3,3,4,4
data 4,4,3,3,3,3,3,3,5,3,3,3,3,3,3,3,5,3,3,3,3,3,3,4,4
data 4,4,3,3,3,3,3,5,3,3,3,3,3,3,3,3,3,5,3,3,3,3,3,4,4
data 4,4,3,3,3,3,5,3,3,3,3,3,3,3,3,3,3,3,5,3,3,3,3,4,4
data 4,4,3,3,3,5,3,3,3,3,3,3,3,3,3,3,3,3,3,5,3,3,3,4,4
data 4,4,3,3,5,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,5,3,3,4,4
data 4,4,3,5,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,5,3,4,4
data 4,4,5,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,5,4,4
data 4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4
data 4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4

sleep
