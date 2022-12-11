func swap(array: inout [String], first: Int, second: Int){
    let temp = array[first]
    array[first] = array[second]
    array[second] = temp
}

func selectionSort(array: inout [String]){
    for i in 0..<array.count-1{
        var mindex = 0
        for j in i..<array.count{
            if array[j] < array[mindex]{
                mindex = j
            }
        }
        swap(array: &array, first: mindex, second: i)
    }
}

//main
var unsorted = [String]()
while let line = readLine(){
    unsorted.append(line)
}
selectionSort(array: &unsorted)
print(unsorted)
