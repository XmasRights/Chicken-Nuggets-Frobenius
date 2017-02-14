# Chicken Nuggets (Frobenius)
A tiny app that does a quick test of `SearchTreeKit`. Like many good things in life, it was inspired by an episode of QI, and the desire to buy lots of Chicken Nuggets.

## QI
Mentioned in QI Series N, Episode 14 (Numbers), [Ferdinand Georg Frobenius](https://en.wikipedia.org/wiki/Ferdinand_Georg_Frobenius) was a German mathematician who developed the [Frobenius method](https://en.wikipedia.org/wiki/Frobenius_method) for finding solutions to certain types of infinite series. Sandi Toksvig explains what this is using Chicken Nuggets, and the fact that given McDonalds only allows you to purchase multiples of 6, 9, and 20. Given their strict rules, 43 is the largest number of Chicken Nuggets it is impossible to buy without throwing some away.

## SearchTreeKit
Unfortunately, my `SearchTreeKit` is far from as elegant as the Frobenius method, but it is a great brute force way to verify that 43 figure. If you care about the motivation behind `SearchTreeKit` and how it works, have a [look at my blog post about it](http://www.funccode.com/SearchTreeKit), otherwise, you can see how this project works right here (*blog post coming soon*).

## Quick Note
As of this moment, Swift doesn't support adding third party frameworks to Console Applications, so I've had to make a Mac App with an empty Window. Run it as normal, and have a look at Xcode's console for all the delicious output.
