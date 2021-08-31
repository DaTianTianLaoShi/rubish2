array = {"Google", "Runoob"}

function elementIterator (collection)
   local index = 0
   local count = #collection
   print("wai")
   -- 闭包函数
   return function ()
      index = index + 1
	  print(index)
      if index <= count
      then
         --  返回迭代器的当前元素
         return collection[index]
      end
   end
end

for element in elementIterator(array) do
   print("for")
   print(element)
end
