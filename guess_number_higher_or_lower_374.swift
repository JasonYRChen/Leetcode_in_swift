/** 
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0 
 * func guess(_ num: Int) -> Int 
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var left = 1
        var right = n
        var mid = (1 + n) / 2
        var result = guess(mid)

        while result != 0 {
            if result == 1 {
                left = mid + 1
            } else {
                right = mid - 1
            }
            mid = (left + right) / 2
            result = guess(mid)
        }
        return mid
    }

