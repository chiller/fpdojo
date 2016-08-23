----
----
---- Dojo version
----
----
module PokerKata where

import Data.List (sort, group, nub)
data Suit = Hearts | Spades | Clubs | Diamonds deriving (Eq)
data Rank = Two | Three | Four | Five | Six | Seven deriving (Enum, Ord, Eq)
data Card = Card Rank Suit
data Score = HighCard | OnePair | TwoPair | ThreeOfAKind | Flush | FullHouse | FourOfAKind deriving (Show, Eq, Ord)

instance Show Card where
    show (Card r s) = show r ++ show s

instance Eq Card where
    (Card r1 s1) == (Card r2 s2) = r1 == r2

grouper :: [Card] -> [Int]
grouper = sort . map length . group . sort . map (\(Card r _) -> r)

hasSameSuits :: [Card] -> Bool
hasSameSuits = (==1) . length . nub . map(\(Card _ s) -> s)

listIsConsecutive (x:y:xs) = case (succ x == y) of
    True -> listIsConsecutive (y:xs)
    False -> False

listIsConsecutive _ = True

list_is_consecutive2 nums = all (\(a,b) -> succ a == b ) $ zip nums (tail nums)

-- foldl (\acc n -> case acc of
--     Just y -> if (succ y == n) then Just n else Nothing
--     Nothing -> Nothing
-- ) (Just $ head nums) (tail nums)

mysum [] = 0
mysum (x:xs) = x + mysum xs

score :: [Card] -> Score
score cs
    -- Straight Flush
    | (grouper cs == [1,4]) = FourOfAKind
    | (grouper cs == [2,3]) = FullHouse
    | (hasSameSuits cs ) = Flush
    -- Straight
    | (grouper cs == [1,1,3]) = ThreeOfAKind
    | (grouper cs == [1,2,2]) = TwoPair
    | (grouper cs == [1,1,1,2]) = OnePair
    | otherwise = HighCard

-- main = putStrLn $ show $ score [ Card Four Diamonds, Card Four Diamonds, Card Four Hearts, Card Two Hearts, Card Three Hearts ]


-----------------------------
---Utility-------------------
-----------------------------
instance Show Suit where
    show Hearts = "H"
    show Clubs = "C"
    show Diamonds = "D"
    show Spades = "S"

instance Show Rank where
    show r = let
            rankmap = zip [Two .. Seven] "234567"
        in case lookup r rankmap of
            Just label -> [label]
            Nothing -> error "Bad rank"
