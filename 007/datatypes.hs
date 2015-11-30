data MyBool = MyFalse | MyTrue
    deriving (Show)

myNot :: MyBool -> MyBool
myNot MyTrue = MyFalse
myNot MyFalse = MyTrue

myOr :: MyBool -> MyBool -> MyBool
myOr MyTrue _ = MyTrue
myOr MyFalse x = x
