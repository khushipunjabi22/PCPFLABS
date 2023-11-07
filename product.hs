product of elements of lists:
Cartesian Product:
[x*y | x <- [1,2,3], y <- [9,8,7]]
[9,8,7,18,16,14,27,24,21] 
-------------------------------------------------------------------------------------
If desired answer is : [1*9,2*8,3*7]
prslst [] [] z = reverse z
prlst (x:xs) (y:ys) z = prslst xs ys ((x*y):z)
main = print(prslst [1,2,3] [9,8,7] []) 
-----------------------------------------------------------------------