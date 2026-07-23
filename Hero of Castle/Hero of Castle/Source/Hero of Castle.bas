#include "fbgfx.bi"
Using FB

dim as integer live = 3, level = 1, placex = 15, placey = 0
dim as double live_time
dim as string choise

type Poison
    effects as integer
end type
type Enemies
        hp as integer
        damage as integer
end type


print "In the once morning, indian guard captured himself older brother named Sasha and cairred away him in dark castle."
sleep 6000
print "Villain named as Rakshasa going in large bedroom Yura's, he is order right now by over time die if yourself older brothers doesn't save for you."
sleep 6000
cls
print "Sasha sitting in a closed jail."
sleep 3500
print "But he is found strange item, he is decided use it's item and he's get managed out from here."
sleep 6000
cls
print "He is chosen from the jail. And now he do the save yourself brothers."
sleep 6000
dim as Poison poison_health_jar
poison_health_jar.effects = 1
dim as Poison poison_death_jar
poison_death_jar.effects = 0
dim as Enemies Rakshasa
Rakshasa.hp = 10
Rakshasa.damage = 1
NewGame:
do
    screenlock
    cls
    live_time = timer
    print "Floor:" & level & " | Live:" & live & " | PlaceX:" & placex & " | PlaceY:" & placey
    locate 0, 3
    input ">", choise
    if choise = "Up" then
        print ""
        placey += 1
    elseif choise = "Turn left" then
        print "You rotate on left."
    elseif choise = "Turn right" then
        print "You rotate on right."
    elseif choise = "Down" then
        placey -= 1
    end if
    if choise = "Go left" then
        print "You going"
        placex -= 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if choise = "Go right" then
        print "You going"
        placex += 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if poison_health_jar.effects = live + 1 then
        poison_health_jar.effects = live + 0
    elseif poison_health_jar.effects = live - 10 then
        poison_death_jar.effects = live - 1000
    end if
    if placex = -1 then
        print "You not go back!"
        placex += 1
    end if
    ''Door of end first floor
    if placex = 27 and placey = 20 then
        cls
        print "You won!"
        sleep 4000
        print "Go to next level!"
        sleep 7000
    end if
    if placex = 3 and placey = -9 then
        cls
        print "Youve got foud the key!"
        print "Now you can go to in another location!"
        sleep 3000
    end if
    if multikey(SC_ESCAPE) then
            goto ExitLevel
    end if
    screenunlock    
    sleep 100,1
loop until (timer - live_time) > 3600 or live = 0
cls
if live_time = live_time then
    print "Time is last ",live_time
    sleep 5000
end if
do
    screenlock
    cls
    level = 2: placex = 27: placey = 20
    live_time = timer
    print "Floor:" & level & " | Live:" & live & " | PlaceX:" & placex & " | PlaceY:" & placey
    locate 0, 3
    input ">", choise
    if choise = "Up" then
        print ""
        placey += 1
    elseif choise = "Turn left" then
        print "You rotate on left."
    elseif choise = "Turn right" then
        print "You rotate on right."
    elseif choise = "Down" then
        placey -= 1
    end if
    if choise = "Go left" then
        print "You going"
        placex -= 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if choise = "Go right" then
        print "You going"
        placex += 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if poison_health_jar.effects = live + 1 then
        poison_health_jar.effects = live + 0
    elseif poison_health_jar.effects = live - 10 then
        poison_death_jar.effects = live - 1000
    end if
    if placex = -1 then
        print "You not go back!"
        placex += 1
    end if
    if placex = 12 and placey = -3 then
        cls
        print "Youve got foud the key!"
        print "Now you can go to in another location!"
        sleep 3000
    end if
    if placex = 34 and placey = 17 then
        cls
        print "You won!"
        sleep 4000
        print "Go to next level!"
        sleep 7000
        end
    end if
    if multikey(SC_ESCAPE) then
            goto ExitLevel
    end if
    screenunlock    
    sleep 100,1
loop until (timer - live_time) > 3600 or live = 0
cls
if live_time = live_time then
    print "Time is last ",live_time
    sleep 5000
end if
do
    screenlock
    cls
    level = 3: placex = 34: placey = 17
    live_time = timer
    print "Floor:" & level & " | Live:" & live & " | PlaceX:" & placex & " | PlaceY:" & placey
    locate 0, 3
    input ">", choise
    if choise = "Up" then
        print ""
        placey += 1
    elseif choise = "Turn left" then
        print "You rotate on left."
    elseif choise = "Turn right" then
        print "You rotate on right."
    elseif choise = "Down" then
        placey -= 1
    end if
    if choise = "Go left" then
        print "You going"
        placex -= 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if choise = "Go right" then
        print "You going"
        placex += 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if poison_health_jar.effects = live + 1 then
        poison_health_jar.effects = live + 0
    elseif poison_health_jar.effects = live - 10 then
        poison_death_jar.effects = live - 1000
    end if
    if placex = -1 then
        print "You not go back!"
        placex += 1
    end if
    if placex = 0 and placey = 13 then
        cls
        print "Youve got foud the key!"
        print "Now you can go to in another location!"
        sleep 3000
    end if
    if placex = 4 and placey = 37 then
        cls
        print "You won!"
        sleep 4000
        print "Go to next level!"
        sleep 7000
        end
    end if
    if multikey(SC_ESCAPE) then
            goto ExitLevel
    end if
    screenunlock    
    sleep 100,1
loop until (timer - live_time) > 3600 or live = 0
cls
if live_time = live_time then
    print "Time is last ",live_time
    sleep 5000
end if
do
    screenlock
    cls
    level = 4: placex = 4: placey = 37
    live_time = timer
    print "Floor:" & level & " | Live:" & live & " | PlaceX:" & placex & " | PlaceY:" & placey
    locate 0, 3
    input ">", choise
    if choise = "Up" then
        print ""
        placey += 1
    elseif choise = "Turn left" then
        print "You rotate on left."
    elseif choise = "Turn right" then
        print "You rotate on right."
    elseif choise = "Down" then
        placey -= 1
    end if
    if choise = "Go left" then
        print "You going"
        placex -= 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if choise = "Go right" then
        print "You going"
        placex += 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if poison_health_jar.effects = live + 1 then
        poison_health_jar.effects = live + 0
    elseif poison_health_jar.effects = live - 10 then
        poison_death_jar.effects = live - 1000
    end if
    if placex = -1 then
        print "You not go back!"
        placex += 1
    end if
    if placex = 85 and placey = 46 then
        cls
        print "Youve got foud the key!"
        print "Now you can go to in another location!"
        sleep 3000
    end if
    if placex = 4 and placey = 37 then
        cls
        print "You won!"
        sleep 4000
        print "Go to next level!"
        sleep 7000
        end
    end if
    if multikey(SC_ESCAPE) then
            goto ExitLevel
    end if
    screenunlock 
    sleep 100,1
loop until (timer - live_time) > 3600 or live = 0
cls
if live_time = live_time then
    print "Time is last ",live_time
    sleep 5000
end if
do
    screenlock
    cls
    level = 5: placex = 4: placey = 37
    live_time = timer
    print "Floor:" & level & " | Live:" & live & " | PlaceX:" & placex & " | PlaceY:" & placey
    locate 0, 3
    input ">", choise
    if choise = "Up" then
        print ""
        placey += 1
    elseif choise = "Turn left" then
        print "You rotate on left."
    elseif choise = "Turn right" then
        print "You rotate on right."
    elseif choise = "Down" then
        placey -= 1
    end if
    if choise = "Go left" then
        print "You going"
        placex -= 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if choise = "Go right" then
        print "You going"
        placex += 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if poison_health_jar.effects = live + 1 then
        poison_health_jar.effects = live + 0
    elseif poison_health_jar.effects = live - 10 then
        poison_death_jar.effects = live - 1000
    end if
    if placex = -1 then
        print "You not go back!"
        placex += 1
    end if
    if placex = 5 and placey = -46 then
        cls
        print "Youve got foud the key!"
        print "Now you can go to in another location!"
        sleep 3000
    end if
    if placex = 12 and placey = 3 then
        cls
        print "You won!"
        sleep 4000
        print "Go to next level!"
        sleep 7000
        end
    end if
    if multikey(SC_ESCAPE) then
            goto ExitLevel
    end if
    screenunlock    
    sleep 100,1
loop until (timer - live_time) > 3600 or live = 0
cls
if live_time = live_time then
    print "Time is last ",live_time
    sleep 5000
end if
do
    screenlock
    cls
    level = 6: placex = 12: placey = 3
    live_time = timer
    print "Floor:" & level & " | Live:" & live & " | PlaceX:" & placex & " | PlaceY:" & placey
    locate 0, 3
    input ">", choise
    if choise = "Up" then
        print ""
        placey += 1
    elseif choise = "Turn left" then
        print "You rotate on left."
    elseif choise = "Turn right" then
        print "You rotate on right."
    elseif choise = "Down" then
        placey -= 1
    end if
    if choise = "Go left" then
        print "You going"
        placex -= 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if choise = "Go right" then
        print "You going"
        placex += 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if poison_health_jar.effects = live + 1 then
        poison_health_jar.effects = live + 0
    elseif poison_health_jar.effects = live - 10 then
        poison_death_jar.effects = live - 1000
    end if
    if placex = -1 then
        print "You not go back!"
        placex += 1
    end if
    if placex = 55 and placey = 6 then
        cls
        print "Youve got foud the key!"
        print "Now you can go to in another location!"
        sleep 3000
    end if
    if placex = 20 and placey = 17 then
        cls
        print "You won!"
        sleep 4000
        print "Go to next level!"
        sleep 7000
        end
    end if
    if multikey(SC_ESCAPE) then
            goto ExitLevel
    end if
    screenunlock    
    sleep 100,1
loop until (timer - live_time) > 3600 or live = 0
cls
if live_time = live_time then
    print "Time is last ",live_time
    sleep 5000
end if
do
    screenlock
    cls
    level = 7: placex = 20: placey = 17
    live_time = timer
    print "Floor:" & level & " | Live:" & live & " | PlaceX:" & placex & " | PlaceY:" & placey
    locate 0, 3
    input ">", choise
    if choise = "Up" then
        print ""
        placey += 1
    elseif choise = "Turn left" then
        print "You rotate on left."
    elseif choise = "Turn right" then
        print "You rotate on right."
    elseif choise = "Down" then
        placey -= 1
    end if
    if choise = "Go left" then
        print "You going"
        placex -= 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if choise = "Go right" then
        print "You going"
        placex += 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if poison_health_jar.effects = live + 1 then
        poison_health_jar.effects = live + 0
    elseif poison_health_jar.effects = live - 10 then
        poison_death_jar.effects = live - 1000
    end if
    if placex = -1 then
        print "You not go back!"
        placex += 1
    end if
    if placex = 1 and placey = 2 then
        cls
        print "Youve got foud the key!"
        print "Now you can go to in another location!"
        sleep 3000
    end if
    if placex = 10 and placey = -5 then
        cls
        print "You won!"
        sleep 4000
        print "Go to next level!"
        sleep 7000
        end
    end if
    if multikey(SC_ESCAPE) then
            goto ExitLevel
    end if
    screenunlock    
    sleep 100,1
loop until (timer - live_time) > 3600 or live = 0
cls
print "HAAAAAHAAAA!!"
sleep 3000
print "You cannot defeat me!"
sleep 3200
print "Hha-HAA!"
sleep 1000
cls
if live_time = live_time then
    print "Time is last ",live_time
    sleep 5000
end if
do
    screenlock
    cls
    level = 8: placex = 10: placey = -5
    live_time = timer
    print "Floor:" & level & " | Live:" & live & " | PlaceX:" & placex & " | PlaceY:" & placey
    locate 0, 3
    input ">", choise
    if choise = "Up" then
        print ""
        placey += 1
    elseif choise = "Turn left" then
        print "You rotate on left."
    elseif choise = "Turn right" then
        print "You rotate on right."
    elseif choise = "Down" then
        placey -= 1
    end if
    if choise = "Go left" then
        print "You going"
        placex -= 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if choise = "Go right" then
        print "You going"
        placex += 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if poison_health_jar.effects = live + 1 then
        poison_health_jar.effects = live + 0
    elseif poison_health_jar.effects = live - 10 then
        poison_death_jar.effects = live - 1000
    end if
    if placex = -1 then
        print "You not go back!"
        placex += 1
    end if
    if placex = 25 and placey = 36 then
        cls
        print "Youve got foud the key!"
        print "Now you can go to in another location!"
        sleep 3000
    end if
    if placex = 54 and placey = 15 then
        cls
        print "You won!"
        sleep 4000
        print "Go to next level!"
        sleep 7000
        end
    end if
    if multikey(SC_ESCAPE) then
            goto ExitLevel
    end if
    screenunlock    
    sleep 100,1
loop until (timer - live_time) > 3600 or live = 0
cls
if live_time = live_time then
    print "Time is last ",live_time
    sleep 5000
end if
do
    screenlock
    cls
    level = 9: placex = 54: placey = 15
    live_time = timer
    print "Floor:" & level & " | Live:" & live & " | PlaceX:" & placex & " | PlaceY:" & placey
    locate 0, 3
    input ">", choise
    if choise = "Up" then
        print ""
        placey += 1
    elseif choise = "Turn left" then
        print "You rotate on left."
    elseif choise = "Turn right" then
        print "You rotate on right."
    elseif choise = "Down" then
        placey -= 1
    end if
    if choise = "Go left" then
        print "You going"
        placex -= 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if choise = "Go right" then
        print "You going"
        placex += 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if poison_health_jar.effects = live + 1 then
        poison_health_jar.effects = live + 0
    elseif poison_health_jar.effects = live - 10 then
        poison_death_jar.effects = live - 1000
    end if
    if placex = -1 then
        print "You not go back!"
        placex += 1
    end if
    if placex = 5 and placey = 16 then
        cls
        print "Youve got foud the key!"
        print "Now you can go to in another location!"
        sleep 3000
    end if
    if placex = 0 and placey = 1 then
        cls
        print "You won!"
        sleep 4000
        print "Go to next level!"
        sleep 7000
        end
    end if
    if multikey(SC_ESCAPE) then
            goto ExitLevel
    end if
    screenunlock    
    sleep 100,1
loop until (timer - live_time) > 3600 or live = 0
cls
if live_time = live_time then
    print "Time is last ",live_time
    sleep 5000
end if
do
    screenlock
    cls
    level = 10: placex = 0: placey = 1
    live_time = timer
    print "Floor:" & level & " | Live:" & live & " | PlaceX:" & placex & " | PlaceY:" & placey
    locate 0, 3
    input ">", choise
    if choise = "Up" then
        print ""
        placey += 1
    elseif choise = "Turn left" then
        print "You rotate on left."
    elseif choise = "Turn right" then
        print "You rotate on right."
    elseif choise = "Down" then
        placey -= 1
    end if
    if choise = "Go left" then
        print "You going"
        placex -= 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if choise = "Go right" then
        print "You going"
        placex += 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if poison_health_jar.effects = live + 1 then
        poison_health_jar.effects = live + 0
    elseif poison_health_jar.effects = live - 10 then
        poison_death_jar.effects = live - 1000
    end if
    if placex = -1 then
        print "You not go back!"
        placex += 1
    end if
    if placex = 78 and placey = 26 then
        cls
        print "Youve got foud the key!"
        print "Now you can go to in another location!"
        sleep 3000
    end if
    if placex = 50 and placey = 1 then
        cls
        print "You won!"
        sleep 4000
        print "Go to next level!"
        sleep 7000
        end
    end if
    if multikey(SC_ESCAPE) then
            goto ExitLevel
    end if
    screenunlock    
    sleep 100,1
loop until (timer - live_time) > 3600 or live = 0
cls
if live_time = live_time then
    print "Time is last ",live_time
    sleep 5000
end if
do
    screenlock
    cls
    level = 10: placex = 50: placey = 1
    live_time = timer
    print "Floor:" & level & " | Live:" & live & " | PlaceX:" & placex & " | PlaceY:" & placey
    locate 0, 3
    input ">", choise
    if choise = "Up" then
        print ""
        placey += 1
    elseif choise = "Turn left" then
        print "You rotate on left."
    elseif choise = "Turn right" then
        print "You rotate on right."
    elseif choise = "Down" then
        placey -= 1
    end if
    if choise = "Go left" then
        print "You going"
        placex -= 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if choise = "Go right" then
        print "You going"
        placex += 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if poison_health_jar.effects = live + 1 then
        poison_health_jar.effects = live + 0
    elseif poison_health_jar.effects = live - 10 then
        poison_death_jar.effects = live - 1000
    end if
    if placex = -1 then
        print "You not go back!"
        placex += 1
    end if
    if placex = 2 and placey = 6 then
        cls
        print "Youve got foud the key!"
        print "Now you can go to in another location!"
        sleep 3000
    end if
    if placex = 100 and placey = 61 then
        cls
        print "You won!"
        sleep 4000
        print "Go to next level!"
        sleep 7000
        end
    end if
    if multikey(SC_ESCAPE) then
            goto ExitLevel
    end if
    screenunlock    
    sleep 100,1
loop until (timer - live_time) > 3600 or live = 0
cls
if live_time = live_time then
    print "Time is last ",live_time
    sleep 5000
end if
do
    screenlock
    cls
    level = 11: placex = 50: placey = 1
    live_time = timer
    print "Floor:" & level & " | Live:" & live & " | PlaceX:" & placex & " | PlaceY:" & placey
    locate 0, 3
    input ">", choise
    if choise = "Up" then
        print ""
        placey += 1
    elseif choise = "Turn left" then
        print "You rotate on left."
    elseif choise = "Turn right" then
        print "You rotate on right."
    elseif choise = "Down" then
        placey -= 1
    end if
    if choise = "Go left" then
        print "You going"
        placex -= 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if choise = "Go right" then
        print "You going"
        placex += 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if poison_health_jar.effects = live + 1 then
        poison_health_jar.effects = live + 0
    elseif poison_health_jar.effects = live - 10 then
        poison_death_jar.effects = live - 1000
    end if
    if placex = -1 then
        print "You not go back!"
        placex += 1
    end if
    if placex = 10 and placey = -16 then
        cls
        print "Youve got foud the key!"
        print "Now you can go to in another location!"
        sleep 3000
    end if
    if placex = 100 and placey = 61 then
        cls
        print "You won!"
        sleep 4000
        print "Go to next level!"
        sleep 7000
        end
    end if
    if multikey(SC_ESCAPE) then
            goto ExitLevel
    end if
    screenunlock    
    sleep 100,1
loop until (timer - live_time) > 3600 or live = 0
do
    screenlock
    cls
    level = 12: placex = 50: placey = 1
    live_time = timer
    print "Floor:" & level & " | Live:" & live & " | PlaceX:" & placex & " | PlaceY:" & placey
    locate 0, 3
    input ">", choise
    if choise = "Up" then
        print ""
        placey += 1
    elseif choise = "Turn left" then
        print "You rotate on left."
    elseif choise = "Turn right" then
        print "You rotate on right."
    elseif choise = "Down" then
        placey -= 1
    end if
    if choise = "Go left" then
        print "You going"
        placex -= 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if choise = "Go right" then
        print "You going"
        placex += 1
    elseif choise = "Stop" then
        print "You stoping"
        placex = 0
    end if
    if poison_health_jar.effects = live + 1 then
        poison_health_jar.effects = live + 0
    elseif poison_health_jar.effects = live - 10 then
        poison_death_jar.effects = live - 1000
    end if
    if placex = -1 then
        print "You not go back!"
        placex += 1
    end if
    if placex = 50 and placey = 71 then
        cls
        print "You see. What happened with our indian castle!"
        sleep 2800
        print "You attempt join in my command what be YOU destroy me?"
        sleep 3840
        print "Ok... >:)"
        sleep 2500
        end
    end if
    if multikey(SC_ESCAPE) then
            goto ExitLevel
    end if
    screenunlock    
    sleep 100,1
loop until (timer - live_time) > 3600 or live = 0
rem BOSS FIGHT!
do
        screenlock
        cls
        live_time = timer
        print "Live: " & live & " | Boss live:" & Rakshasa.hp
        locate 0, 3
        input ">", choise
        if choise = "Attack" then
                print "You attempt attacking the boss!"
                sleep 2000
                if Rakshasa.hp - 1 then
                        print "OUCH!"
                        sleep 500
                else
                        print "But enemies is douged!"
                        sleep 1000
                end if
        end if
        print "HAAAAAAAAAAAAAAAAAAAH!"
        sleep 3000
        if Rakshasa.damage = 1 then
                live -= Rakshasa.damage
                print "Your hp is ", live
                sleep 1000
        else
                print "your Douged of sword!"
                sleep 2000
        end if
        if Rakshasa.hp = 0 then
                restore Victory
        elseif Live = 0 then
                restore GameOver
        end if
        screenunlock
        sleep 100,1
loop until (timer - live_time) > 3600 or live = 0

Victory:
cls
print"After defeating under the boss Sasha going to next up, and he see yourself brother, and save him going to back home."
sleep 4000
print"The end."
end
GameOver:
cls
print"HA-hahahaaa-h! you cannot defeat me"
sleep 1000
print "you are die! HAHahaaaaaaaa!"
sleep 4000
do
        screenlock
        cls
        input "Retry the game [Y]/[N]?", choise
        if choise = "Y" then
                restore NewGame
        elseif choise = "N" then
                end
        end if
        screenunlock
        sleep 100,1
loop
ExitLevel:
do
        screenlock
        cls
        input "Press [E] to exit level:",choise
        if choise = "E" then
                end
        end if
        screenunlock
        sleep 100,1
loop
