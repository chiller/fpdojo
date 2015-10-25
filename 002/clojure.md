# Clojure cheatsheet

[source](http://www.braveclojure.com/do-things/)

# Conditionals

    (if boolean-form
    then-form
    optional-else-form)

# Kind of imperative code

    (if true
      (do (println "Success!")
          "By Zeus's hammer!")
      (do (println "Failure!")
          "By Aquaman's trident!"))

# When is a combination of if and do

    (when true
      (println "Success!")
      "abra cadabra")

(nil? 1)
(nil? nil)
(= 1 1)

# Naming values with def

    (def failed-protagonist-names
      ["Larry Potter" "Doreen the Explorer" "The Incredible Bulk"])

# Defining functions

    (defn error-message
      [severity]
      (str "OH GOD! IT'S A DISASTER! WE'RE "
           (if (= severity :mild)
             "MILDLY INCONVENIENCED!"
             "DOOOOOOOMED!")))

# Data structures

All of Clojure’s data structures are immutable
Can only concatenate and interpolate with str function

    (str "alma" "korte" "doge")


