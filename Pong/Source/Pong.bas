#include "fbgfx.bi"
using FB
windowtitle "Pong"
dim as integer score = 0
width 40, 10
print "Score:";score
dim as integer wx = 242, hy = 180
screenres wx, hy


rem Pong game by SkyFerest written on FreeBasic

rem This is a my version if the game 'Pong'

Type Ball
        x as integer
        y as integer
        dx as integer = 1
        dy as integer = 1
end type

Type Platform
        x as integer
        y as integer
        speed as integer
end type

Sub BallCollision(b as Ball)
        circle(b.x+b.dx,b.y+b.dy),6,24,,,,F
end sub
rem Thank you for help Lowenherz
rem Test to collision for paddle and ball 
function BallToPlayer1(b as Ball, pl as Platform) as integer
        if b.x - 6 <= pl.x + 10 then
                if b.x + 6 >= pl.x then
                        if b.y >= pl.y - 6 and b.y <= pl.y + 27 + 6 then
                                b.x = pl.x + 10 + 6
                                b.dx = -b.dx
                        end if
                end if
        end if
        return 0
end function
function BallToPlayer2(b as Ball, pl2 as Platform) as integer
        if b.x - 6 <= pl2.x + 10 then
                if b.x + 6 >= pl2.x then
                        if b.y >= pl2.y - 6 and b.y <= pl2.y + 27 + 6 then
                                b.x = pl2.x - 7
                                b.dx = -b.dx
                        end if
                end if
        end if
        return 0
end function
Sub Player1(pl as Platform)
        draw "BM " & pl.x & "," & pl.y
        draw "C15"
        draw "R10 D27 L10 U27"
        draw "BM +1,1"
        draw "P 15,15"
end sub
Sub Player2(pl2 as Platform)
        draw "BM " & pl2.x & "," & pl2.y
        draw "C15"
        draw "R10 D27 L10 U27"
        draw "BM +1,1"
        draw "P 15,15"
end sub
Sub Player_Setup(pl as Platform)
        if multikey(SC_W) then pl.y -= pl.speed
        if multikey(SC_S) then pl.y += pl.speed
end sub
Sub Player_Setup2(pl2 as Platform)
        if multikey(SC_UP) then pl2.y -= pl2.speed
        if multikey(SC_DOWN) then pl2.y += pl2.speed
end sub
dim newBall as Ball
newBall.x = 121
newBall.y = 88
newBall.dx = 1
newBall.dy = 1
dim plr1 as Platform
plr1.y = 75
plr1.x = 10
plr1.speed = 4
dim plr2 as Platform
plr2.y = 75
plr2.x = 222
plr2.speed = 4
do
        screenlock
        cls
        BallCollision(newBall)
        Player1(plr1)
        Player_Setup(plr1)
        Player2(plr2)
        Player_Setup2(plr2)
        BallToPlayer1(newBall,plr1)
        BallToPlayer2(newBall,plr2)
        newBall.x -= newBall.dx
        newBall.y -= newBall.dy
        line(122,0)-(122,180),8
        rem set a limit paddles
        if plr1.y >= 155 then
                plr1.y = 155
        end if
        if plr1.y <= 0 then
                plr1.y = 0
        end if
        
        if plr2.y >= 155 then
                plr2.y = 155
        end if
        if plr2.y <= 0 then
                plr2.y = 0
        end if        
        
        if newBall.x <= 0 or _
                newBall.x >= wx then
                newBall.dx = -newBall.dx
        end if
        if newBall.y <= 0 or _
                newBall.y >= hy then
                newBall.dy = -newBall.dy
        end if
        
        screenunlock
        sleep 20,1
        
loop until inkey = "q"
