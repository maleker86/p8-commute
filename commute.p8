pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
--commute main


--globals
lvl = 0
phase = 1
cmp_route={}
plyr_route={}

function _init()
	cls()
	mkrt()
	gd()
end

function gd()
	print("⬆️ is a,1")
	print("➡️ is b,2")
	print("⬇️ is c,3")
	print("⬅️ is d,4") 
end

--plr inpt norpt :)
function plyrrt()
	
	--up asgn
	if(btnp(⬆️)) then 
		print("player choice is:")
		if phase==1 then
			print("a")
			plyr_route[1]="a"
		else
			print("1")
			plyr_route[2]="1"
		end
		phs()
	end
	
	--rt asgn
	if(btnp(➡️)) then 
		print("player choice is:")
		if phase==1 then
			print("b")
			plyr_route[1]="b"
		else
			print("2")
			plyr_route[2]="2"
		end
		phs()
	end
		
	--dn asgn
	if(btnp(⬇️)) then 
		print("player choice is:")
		if phase==1 then
			print("c")
			plyr_route[1]="c"
		else
			print("3")
			plyr_route[2]="3"
		end
		phs()
	end
	
		
	--lt asgn
	if(btnp(⬅️)) then 
		print("player choice is:")
		if phase==1 then
			print("d")
			plyr_route[1]="d"
		else
			print("4")
			plyr_route[2]="4"
		end
		phs()
	end
	 
end

function phs()
	print("slot is "..phase)
	
		if (phase==2) then
			phase = 1
		else
			phase = 2
		end
	
	print("slot is now "..phase)
end

--mk lvl rt
function mkrt() 
	lvl = lvl+1
	print("lvl "..lvl)
	
	rtlns={"a","b","c","d"}
	ltlns={"1","2","3","4"}
	
	cmp_route={rnd(rtlns),
	rnd(ltlns)}
	
	foreach(cmp_route,print)
	
end

function _update()
	plyrrt()
	
	--print score
	if (btnp(❎)) then 
		foreach(cmp_route,print)
		foreach(plyr_route,print)
		
		if (cmp_route[1]==plyr_route[1] and cmp_route[2]==plyr_route[2]) then
			print("you win!") 
		else
			print("you lose!")
		end
		
	end
	
end


-->8
--todos

--1) make phases better/more
-- foolproof
--
--3) try to fix that win state
-- eventually
--
--2) make win/lose happen 
--automatically after the 
--rounds are all finished lol
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
