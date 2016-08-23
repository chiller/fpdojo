--
-- map <F2> :!runhaskell pokerkatatest <CR>
-- TODO: compare hands
--

import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

import PokerKata

import Data.List.Split (splitOn)

main :: IO ()
main = hspec $ do
    describe "Basic Hand Score" $ do
            it "four of a kind" $ do
                score (readHand "4D 4S 4H 4D 3H") `shouldBe` FourOfAKind
            it "three of a kind" $ do
                score (readHand "4D 4D 4H 2H 3H") `shouldBe` ThreeOfAKind
            it "basic read" $ do
                read "H" `shouldBe` Hearts

            it "basic read rank" $ do
                read "3" `shouldBe` Three

            it "read card" $ do
                read "3S" `shouldBe` Card Three Spades

            it "read cards" $ do
                readHand "3S 3S 3S" `shouldBe` [Card Three Spades, Card Three Spades, Card Three Spades ]

            it "flush" $ do
                score (readHand "2D 3D 4D 5D 7D") `shouldBe` Flush

            it "consective" $ do
                listIsConsecutive [1,2,3,4] `shouldBe` True

            it "consective2" $ do
                list_is_consecutive2 [1,2,3,4] `shouldBe` True

instance Read Suit where

    readsPrec _ (x:xs) = case x of
        'H' -> [(Hearts, xs)]
        'S' -> [(Spades, xs)]
        'C' -> [(Clubs, xs)]
        'D' -> [(Diamonds, xs)]
        _  -> error "bad suit"

instance Read Rank where
    readsPrec _ (x:xs) = let
            rankmap = zip "234567" [Two .. Seven]
        in case lookup x rankmap of
            Just label -> [(label, xs)]
            Nothing -> error "Bad rank"

instance Read Card where
    readsPrec _ [r, s] = [(Card (read [r]) (read [s]), "")]

readHand :: String -> [Card]
readHand str = map read $ splitOn " " str

