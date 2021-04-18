-- The PADS

SELECT CONCAT(Name,"(", LEFT(Occupation,1),")") FROM OCCUPATIONS ORDER BY Name;

SELECT CONCAT("There are a total of ",
               COUNT(Occupation), " ",LOWER(Occupation),"s.") 
  FROM OCCUPATIONS 
  GROUP BY Occupation
  ORDER BY COUNT(Occupation), Occupation;
  
 -- Binary Tree Nodes 
 -- Method 1:
  SELECT N, 
  (CASE WHEN P IS NULL THEN "Root"
   WHEN N IN (SELECT P FROM BST GROUP BY P HAVING COUNT(N)=2) THEN "Inner" 
   ELSE "Leaf" END) AS Type
   FROM BST ORDER BY N
 -- Method 2:
  SELECT N, IF(P IS NULL, "Root", 
               IF((N IN (SELECT P FROM BST GROUP BY P HAVING COUNT(N)=2)), "Inner", "Leaf")) 
                         AS Type 
                          FROM BST 
                         ORDER BY N
