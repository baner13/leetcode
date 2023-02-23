import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {

    var low = 0
    var high = nums.count

    while(low < high) {

        // Calculate middle index
        var mid = low + (high - low) / 2
        if(target > nums[mid]) {
            low = mid + 1
        } else {
            high = mid
        }
    }
    return low
}
print(searchInsert([1,3,5,6],4))
