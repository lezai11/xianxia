-- local name="lezai"
-- if name ~= "lezai" then
-- 	error("不是你")
-- end
-- print("就是我")

-- assert(name~="lezai1","不是你")（）--assert中如果前边得条件不满足，则输出后边得错误信息

-- local s=""
-- assert(loadstring(s))()
-- loadstring(s)
-- local name="lezai"
-- assert(name~="lezai","不是我")







-- a={1,2,3}
-- function test( )
-- 	print(a[2])
-- end
-- local status,err=pcall(test)
-- if pcall(test) then
-- 	print("正常")
-- else
-- 	print("出错误了")
-- 	print(err)
-- end


-- loadfile("hello.lua")
-- dofile("hello.lua")

-- for i = 1 , 3 , 1 do
-- 	require("hello")--使用require不需要加后缀.lua
-- end



-- loadfile("hello.lua")
-- dofile("hello.lua")
-- for i=1,10,1 do
-- 	require("hello")
-- end

-- local mt = {}

-- mt.__add=function ( t1,t2 )
-- 	print("两个table相加")
-- end

-- local t1={}
-- local t2={}
-- setmetatable(t1,mt)
-- setmetatable(t2,mt)
-- local result=t1+t2

-- local mt={}
-- mt.__sub=function ( t1,t2 )
-- 	print("相减")
-- end
-- local t1={}
-- local t2={}
-- setmetatable(t1,mt)
-- setmetatable(t2,mt)
-- local result=t1-t2


--设置元表
-- local mt={}
-- mt.__add= function (t1,t2)
-- local result=""
-- if t1.sex=="boy" and t2.sex=="girl" then
-- 	result ="完美家庭"
-- 	elseif t1.sex=="girl" and t2.sex=="girl" then
-- 		result="不好"
-- 	else
-- 		result="不好"
-- 	end
-- 	return result
-- end
-- --创建两个table，可以想像为两个类得对象
-- local t1={
-- 	name="hello",
-- 	sex="boy"}
-- local t2={
-- 	name="Good",
-- 	sex="girl"}
-- 	--给两个table设置元表
-- setmetatable(t1,mt)
-- setmetatable(t2,mt)
-- --进行＋操作
-- local result = t1+t2
-- print(result)

-- local mt={}
-- mt.__add=function (s1,s2 )
-- 	local result=""
-- 	if s1.sex =="girl" and s2.sex =="boy" then
-- 		print("完美家庭")
-- 	elseif s1.sex=="boy" and s2.sex=="boy" then
-- 		print("不好")
-- 	else
-- 		print("不好")
-- 	end
-- end
-- local s1={
-- 	name="a",
-- 	sex="boy"
-- }
-- local s2={
-- 	name="b",
-- 	sex="girl"
-- }
-- setmetatable(s1,mt)
-- setmetatable(s2,mt)
-- print(s1+s2)
-- local result =s1+s2
-- print(result)


-- local t={
-- name="hehe"
-- }
-- local mt={
-- 	-- __index=function(ta,k)
-- 	-- print("调用了不存在得字段"..k)
-- -- end
-- 	__index={
-- 	money="qwe"
-- }
-- }
-- setmetatable(t,mt)
-- print(t.money)

-- local t={
-- 	name="hehe"
-- }
-- print(t.money)
-- local mt={
-- 	-- __index=function ( table,key )
-- 	-- 	print("不存在，但是我能找到"..key)
-- 	-- end
-- 	__index={
-- 	money=500000
-- 	}
-- }
-- setmetatable(t,mt)
-- print(t.money)



-- local smartMan={
-- 	name="none",
-- 	money=90000,
-- 	sayHello=function ( )
-- 		print("找的就是我")
-- 	end
-- }
-- local t1 = {}
-- local t2 = {}
-- local mt = {
-- 	__index=smartMan
-- }
-- setmetatable(t1,mt)
-- setmetatable(t2,mt)
-- print(t1.money)
-- t2.sayHello()


-- local smartMan={
-- 	name="none",
-- 	age=24,
-- 	money=9000,
-- 	sayHello=function ( )
-- 		print("大家好")
-- 	end
-- }
-- local t1={}
-- local mt={
-- 	__index=smartMan,  --用于查询
-- 	-- __newindex=function (table,key,value)  --用于更新
-- 	-- 	print(key.."不存在，不允许修改")
-- 	-- end
-- }
-- setmetatable(t1,mt)
-- t1.sayHello=function ( )
-- 	print("en")
-- end
-- t1.sayHello()


-- local smartMan = {
-- 	name="none",
-- 	money=2345,
-- 	sayHello=function ( )
-- 		print("大家好")
-- 	end
-- }
-- local t1={
-- 	sayHello=function (  )
-- 		print("大家2")
-- 	end
-- }
-- local t1={}
-- local mt={
-- 	__index=smartMan,
-- 	__newindex=function ( table,key,value )
-- 		print(key.."字段不存在，不要试图给他赋值")
-- 		print(table)
-- 		print(value)
-- 	end
-- }
-- setmetatable(t1,mt)

-- print(t1)
-- t1.sayHello=function ()
-- 	print("en")
-- end
-- t1.sayHello()

-- local smartMan={name="none"}
-- local other={}
-- local t1={}
-- local mt={
-- 	__index=smartMan,
-- 	__newindex=other
-- }
-- setmetatable(t1,mt)
-- -- print("赋值前:"..other.name)
-- t1.name="小偷"
-- print("赋值后:"..other.name)
-- for k,v in pairs(t1) do
-- 	print(k,v)
-- end
-- print(t1.name)

-- local smartMan={
-- 	name="none"
-- }
-- local other={
-- 	name="大家好，我恨无辜"
-- }
-- local t1 = {}
-- local mt={
-- 	__index=smartMan,
-- 	__newindex=other
-- }
-- setmetatable(t1,mt)
-- -- print("other.name 赋值前："..other.name)
-- t1.money="小偷"
-- -- print("other.name 赋值后："..other.name)
-- -- print(t1.name)
-- for k,v in pairs(t1) do
-- 	print(k,v)
-- end



-- local smartMan={
-- 	name="none"
-- }
-- local t1={
-- 	hehe=123,
-- 	name="qwer"
-- }
-- local mt={
-- 	__index=smartMan,
-- 	__newindex=function (table,key,value )
-- 		print("别赋值")
-- 	end
-- }
-- setmetatable(t1,mt)
-- print(rawget(t1,"name"))
-- print(rawget(t1,"hehe"))
-- -- rawset(t1,"name","小偷")
-- t1.name="小偷"
-- print(t1.name)
--   rawget忽略__index得功能，直接也只能从t1中调用字段
--   rawset忽略__newindex的功能，纯粹的给t1赋值，跟元表无关


-- local smartMan={
-- 	name="none"
-- }
-- local t1={
-- 	hrhr=123
-- }
-- local mt={
-- 	__index=smartMan,
-- 	__newindex=function (t,k,v )
-- 		print("别赋值")
-- 	end
-- }
-- setmetatable(t1,mt)
-- print(rawget(t1,"name"))
-- print(rawget(t1,"hrhr"))
-- -- rawset(t1,"name","小偷")
-- -- print(t1.name)
-- t1.name="小偷"
-- for k,v in pairs(t1) do
-- 	print(k,v)
-- end





--环境    环境    环境    环境    环境




-- require("game")
-- Game.play()
-- Game.setlevel(6)
-- print(Game.getlevel())


-- require("game")
-- Game.play()
-- Game.setlevel(5)
-- print(Game.getlevel())



-- for n in pairs(_G) do
-- 	print(n)
-- end

-- gName="全局变量"
-- print(_G["gName"])



--模块    模块     模块     模块
-- game=require("game")
-- game.play()


--对象   对象   对象
-- TSprite={
-- 	x=0,
-- 	y=0
-- }
-- function TSprite.setposition( self,x,y )
-- 	self.x=x
-- 	self.y=y
-- end
-- local who=TSprite
-- -- TSprite=nil
-- who.setposition(who,1,2)
-- for k,v in pairs(who) do
-- 	print(k,v)
-- end
-- for k,v in pairs(TSprite) do
-- 	print(k,v)
-- end


-- Hero={
-- 	attack=0
-- }
-- function Hero:new( o )
-- 	o=o or {}
-- 	setmetatable(o,self)
-- 	self.__index=self
-- 	return o
-- end
-- function Hero:skill(addAttack)
-- 	self.attack=self.attack+addAttack
-- end
-- oneHero=Hero:new({attack=100})
-- oneHero:skill(10)
-- print(oneHero.attack)

-- function oneHero:test()
-- 	print("test")
-- end
-- function oneHero:injured( loseAttack )
-- 	if loseAttack>self.attack then
-- 		print("not engouth attack")
-- 	end
-- 	self.attack=self.attack-loseAttack/2
-- end
-- oneHero:injured(100)
-- print(oneHero.attack)
-- oneHero:test()







