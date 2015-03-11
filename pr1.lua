print("Hello! What is your name?")
name = io.read()
if tonumber(name) ~= nil then
	repeat
		print("Excuse me, could you repeat please?")
		name = io.read()
	until (tonumber(name) == nil )
end
print("Great, "..name..". How much money do you have?")
amount = io.read()
if tonumber(amount) == nil or tonumber(amount) < 0 then
	repeat
		print("Excuse me, could you repeat please?")
		amount = io.read()
	until (tonumber(amount) ~= nil and tonumber(amount) > 0)
end
tonumber(amount)
print("Ok! What service do you want?")
serv = io.read()
if tonumber(serv) ~= nil then
	repeat
		print("Excuse me, could you repeat please?")
		serv = io.read()
	until (tonumber(serv) == nil )
end
print("How much does it cost?")
cost = io.read()
if tonumber(cost) == nil or tonumber(cost) < 0 then
	repeat
		print("Excuse me, could you repeat please?")
		cost = io.read()
	until (tonumber(cost) ~= nil and tonumber(cost) > 0)
elseif tonumber(cost) == 0 then
	repeat
		print("No, no, I won't calculate. Repeat, please")
		cost = io.read()
	until (tonumber(cost) ~= 0 and tonumber(cost) ~= nil and tonumber(cost) > 0 )
end
tonumber(cost)
print("Well done, wait a second")
------------------------
howmuch = math.floor(amount/cost)
price = cost*howmuch
print("You can order service "..serv.." at most "..howmuch.." times. It will cost "..price..".")
