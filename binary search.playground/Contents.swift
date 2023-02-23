import Foundation

 //binary search
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        var mid: Int!

        while left <= right {
            mid = (left + right) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                 left = mid + 1
            } else if nums[mid] > target {
                 right = mid - 1
            }
        }
        return -1
    }

    let nums = [-1,0,3,5,9,12]
    print(search(nums, 9))
    print(search(nums, 2))
