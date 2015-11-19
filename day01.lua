--[[print("hello..Lua")
print(b)
b=10
print(b)--]]
-- print("Hello Lua")

-- print(type(nil))
-- print(type(true))
-- print(type(10))
-- print(type("test"))
-- print(type(print))
-- print(type(type("string")))

-- a=1902
-- print(a)
-- a="HelloMadrid"
-- print(a)
-- a=print--a为函数类型
-- a("hello")

-- a=false
-- if a then
-- 	print("zhende")
-- else
-- 	print("jiade")
-- end

--把字符串a中的one替换为another
-- a="one string"
-- b=string.gsub(a,"one","another")
-- print(b)

--遇到算数运算符，字符串会自定转换成number类型
-- print(10+"1")
-- print("10"+"1")
-- print("10"+"string")--错误

-- print("a"..10 ..".png")
-- print("10 ..10")--如果是数字，后边的..需要在前边加上空格

--安全起见，使用tonumber和tostring来转型
-- print(tonumber("string"))
-- print(tostring(20))

-- for i=1,10 do
-- 	print("a"..i..".png")
-- end

-- a,b=10,20
-- print(a,b)
-- a,b=b,a--两个数值交换直接交换就行，不用设置中间值
-- print(a,b)

-- a=0
-- if a then
-- 	print("12"..a)
-- 	local m = 1
-- end
-- print(m)

--3是i值改变的梯度，默认为1，相当于c中的i＋＋ 
-- for i=1,20,3 do
-- 	print(i)
-- end

-- function max( a,b )
-- 	if a>b then
-- 		return a
-- 	else
-- 		return b
-- 	end
-- end
-- print(max(1,2,3))--实参多的被忽略，不足补nil

-- function test( ... )
-- 	return 10,20,30
-- end
-- a,b,c=40,test()
-- print(a,b,c)
--当test()位于最后一个时，才会输出多个值，否则只输出第一个值

--局部函数local function b( ... )在函数外不可调用
-- function a( ... )
-- 	print("a called")
-- 	local function b( ... )
-- 		print("b called")
-- 	end
-- end
-- a()

--table
-- days={"Monday","Tuesday","Friday","ThurDay","Sunday"}
-- print(days[1])
-- print(days[4])
-- --获取table days(相当于数组)的长度
-- print(#days)
-- print(table.maxn(days))
--遍历输出table
-- for k,v in pairs(days) do
-- 	print(k,v)
-- end

-- 注意pairs和ipairs的区别

-- 键值对形式的table
-- test={name="lezai",age=22,"abc","qwe",[3]="rty",[5]="123"}
test={name="lezai",age=22,"abc","qwe",[3]="rty",[5]="123"}
-- 获取某一个键值的两种方式
-- print(test.name)
-- print(test["name"])

-- test.school="huanghuai"
-- -- test.sex="boy"
-- test["sex"]="boy"
-- for k,v in pairs(test) do
-- 	print(k,v)
-- end


-- arr={}
-- for var=1,100 do
-- 	table.insert(arr,1,var)
-- end
-- for key,var in pairs(arr) do
-- 	print(key,var)
-- end

--求阶乘
-- function jiecheng(num)
-- 		if num=1 then
-- 			print(num)
-- 		else 
-- 			result=num*jiecheng(num-1)
-- 			print(result)
-- 		end
-- end
-- print(jiecheng(5))

--闭合函数
-- function count( ... )
-- 	local i = 0--非局部变量
-- 	return function ( ... )
-- 		i=i+1
-- 		return i
-- 	end
-- end

-- local fun = count()
-- print(fun)--输出得是函数得地址
-- print(fun())--每次调用，非局部变量都继续沿用上次得值
-- print(fun())
-- print(fun())


--以下两种函数得形式等价
-- local function test()
-- end

-- local test
-- test=function ( )
-- 	print("testCalled")
-- end
-- test()


-- local eat
-- local drink
-- local sum=0
-- eat=function ( )
-- 	print("eatCalled")
-- 	return drink()
-- end
-- drink=function ()
-- 	for i=1,10 do
-- 		sum=sum+i
-- 		print(sum)
-- 	end
-- 	return sum
-- end
-- for i=1,10 do
-- 	eat()
-- end


function diedaiqi(t)
	local i = 0
	return function ()
		i=i+1
		if i>#t then
			return nil
		end
		return i,t[i]
	end
end
t={"a","b","c","d","e","f"}
-- local iter=diedaiqi(t)
-- while true do
-- 	local value,qw=iter()--接收2个值
-- 	if qw ==nil then
-- 		break
-- 	end
-- 	print(value,qw)
-- end

-- for value in diedaiqi(t) do
-- 	print(value)
-- end
for k,v in diedaiqi(t) do
	print(k,v)
end













