array = {"Google", "Runoob"}

function elementIterator (collection)
   local index = 0
   local count = #collection
   print("wai")
   -- �հ�����
   return function ()
      index = index + 1
	  print(index)
      if index <= count
      then
         --  ���ص������ĵ�ǰԪ��
         return collection[index]
      end
   end
end

for element in elementIterator(array) do
   print("for")
   print(element)
end
