class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        var left = 1
        var right = num

        while left <= right {
            var mid = (left + right) / 2
            var square = mid * mid
            if square == num {
                return true
            }
            if square < num {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return false
    }
}
