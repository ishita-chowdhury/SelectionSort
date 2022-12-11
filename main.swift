 func swap(integers: inout [String], firstIndex: Int, secondIndex: Int){                                                                                         
      let temp = integers[firstIndex]                                                                                                                             
      integers[firstIndex]=integers[secondIndex]                                                                                                                  
      integers[secondIndex]=temp                                                                                                                                  
  }                                                                                                                                                               
 func bubbleSort (unsorted: inout [String]){                                                                                                                     
     var swapCountPerPass: Int                                                                                                                                   
     repeat{                                                                                                                                                     
         swapCountPerPass = 0                                                                                                                                    
         for index in 0..<unsorted.count - 1{                                                                                                                    
             if unsorted[index] > unsorted[index+1]{                                                                                                             
                 swap(integers: &unsorted, firstIndex: index, secondIndex: index+1)                                                                              
                 swapCountPerPass += 1                                                                                                                           
             }                                                                                                                                                   
         }                                                                                                                                                       
     }while swapCountPerPass != 0                                                                                                                                
 }                                                                                                                                                               
                                                                                                                                                                 
 //main                                                                                                                                                          
 var unsorted = [String]()                                                                                                                                       
 while let line = readLine() {                                                                                                                                   
     unsorted.append(line)                                                                                                                                       
 }                                                                                                                                                               
 bubbleSort(unsorted: &unsorted)                                                                                                                                 
 print(unsorted)
