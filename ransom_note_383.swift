class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dict: [Character: Int] = [:]
        for char in ransomNote{
            if dict[char] != nil {
                dict[char]! += 1
            } else {
                dict[char] = 1
            }
        }
        for char in magazine{
            if dict[char] != nil {
                dict[char]! -= 1
            }
        }
        for (_, value) in dict {
            if value > 0 {
                return false
            }
        }
        return true
    }
}
