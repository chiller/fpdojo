import Data.List
import qualified Data.Char as Char

data MyBool = MyFalse | MyTrue
    deriving (Show)

myNot :: MyBool -> MyBool
myNot MyTrue = MyFalse
myNot MyFalse = MyTrue

myOr :: MyBool -> MyBool -> MyBool
myOr MyTrue _ = MyTrue
myOr MyFalse x = x









data MyInt = Zero | Suc MyInt
    --deriving (Show)

myIsZero :: MyInt -> MyBool
myIsZero Zero = MyTrue
myIsZero (Suc x) = MyFalse

myZero = Zero
myOne = Suc myZero
myTwo = Suc myOne
myThree = Suc myTwo
myFour = Suc myThree

myEq :: MyInt -> MyInt -> MyBool
myEq Zero Zero = MyTrue
myEq (Suc x) (Suc y) = myEq x y
myEq _ _ = MyFalse

myInt :: Int -> MyInt
myInt 0 = Zero
myInt n = Suc (myInt (n-1))

myPlus :: MyInt -> MyInt -> MyInt
myPlus n Zero = n
myPlus n (Suc m) = myPlus (Suc n) m

myMult :: MyInt -> MyInt -> MyInt
myMult _ Zero = Zero
myMult n (Suc Zero) = n
myMult n (Suc m) = myPlus n (myMult n m)

myFact :: MyInt -> MyInt
myFact Zero = Suc Zero
myFact (Suc x) = myMult (Suc x) (myFact x)









printMyInt :: MyInt -> Int
printMyInt Zero = 0
printMyInt (Suc n) = 1 + (printMyInt n)

instance Show MyInt where
    show = show . printMyInt







data MyList a = Empty | Cons a (MyList a)
    deriving (Show)

myLength :: MyList t -> MyInt
myLength Empty = Zero
myLength (Cons x xs) = Suc (myLength xs)


myListFold :: (a -> b -> b) -> b -> MyList a -> b
myListFold f v Empty = v
myListFold f v (Cons x xs) = f x (myListFold f v xs)

myLength2 :: MyList t -> MyInt
myLength2 = myListFold f Zero
    where f _ n = Suc n







toUpper :: String -> String
toUpper = map Char.toUpper

type MyString = String

mySurname :: MyString
mySurname = "soriano"

newtype MyString2 = MyString2Constructor String
    deriving (Show)

mySurname2 :: MyString2
mySurname2 = MyString2Constructor "soriano"

toUpper2 :: MyString2 -> MyString2
toUpper2 (MyString2Constructor s) = MyString2Constructor (toUpper s)
