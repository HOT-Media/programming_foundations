Bubble Sort is one of the simplest sorting algorithms available. It isn't an efficient algorithm, but it's a great exercise for student developers. In this exercise, you will write a method that does a bubble sort of an Array.

A bubble sort works by making multiple passes (iterations) through the Array. 

On each pass, each pair of consecutive elements is compared. 

If the first of the two elements is greater than the second, then the two elements are swapped. 

This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.

6 2 7 1 4 Start: compare 6 > 2? Yes
2 6 7 1 4 Exchange
2 6 7 1 4 6 > 7? No (no exchange)
2 6 7 1 4 7 > 1? Yes
2 6 1 7 4 Exchange
2 6 1 7 4 7 > 4? Yes
2 6 1 4 7 Exchange
2 6 1 4 7 2 > 6? No
2 6 1 4 7 6 > 1? Yes
2 1 6 4 7 Exchange
2 1 6 4 7 6 > 4? Yes
2 1 4 6 7 Exchange
2 1 4 6 7 6 > 7? No
2 1 4 6 7 2 > 1? Yes
1 2 4 6 7 Exchange
1 2 4 6 7 2 > 4? No
1 2 4 6 7 4 > 6? No
1 2 4 6 7 6 > 7? No
1 2 4 6 7 1 > 2? No
1 2 4 6 7 2 > 4? No
1 2 4 6 7 4 > 6? No
1 2 4 6 7 6 > 7? No
1 2 4 6 7 No swaps; all done; sorted

We can stop iterating the first time we make a pass through the array without making any swaps; at that point, the entire Array is sorted.

For further information, including pseudo-code that demonstrates the algorithm as well as a minor optimization technique, see the Bubble Sort wikipedia page.

Step-by-step example
Let us take the array of numbers "5 1 4 2 8", and sort the array from lowest number to greatest number using bubble sort. In each step, elements written in bold are being compared. Three passes will be required.

First Pass
( 5 1 4 2 8 ) → ( 1 5 4 2 8 ), Here, algorithm compares the first two elements, and swaps since 5 > 1.
( 1 5 4 2 8 ) → ( 1 4 5 2 8 ), Swap since 5 > 4
( 1 4 5 2 8 ) → ( 1 4 2 5 8 ), Swap since 5 > 2
( 1 4 2 5 8 ) → ( 1 4 2 5 8 ), Now, since these elements are already in order (8 > 5), algorithm does not swap them.
Second Pass
( 1 4 2 5 8 ) → ( 1 4 2 5 8 )
( 1 4 2 5 8 ) → ( 1 2 4 5 8 ), Swap since 4 > 2
( 1 2 4 5 8 ) → ( 1 2 4 5 8 )
( 1 2 4 5 8 ) → ( 1 2 4 5 8 )
Now, the array is already sorted, but the algorithm does not know if it is completed. The algorithm needs one whole pass without any swap to know it is sorted.

Third Pass
( 1 2 4 5 8 ) → ( 1 2 4 5 8 )
( 1 2 4 5 8 ) → ( 1 2 4 5 8 )
( 1 2 4 5 8 ) → ( 1 2 4 5 8 )
( 1 2 4 5 8 ) → ( 1 2 4 5 8 )
Implementation
Pseudocode implementation
```
The algorithm can be expressed as (0-based array):

procedure bubbleSort( A : list of sortable items )
    n = length(A)
    repeat
        swapped = false
        for i = 1 to n-1 inclusive do
            /* if this pair is out of order */
            if A[i-1] > A[i] then
                /* swap them and remember something changed */
                swap( A[i-1], A[i] )
                swapped = true
            end if
        end for
    until not swapped
end procedure
```
Optimizing bubble sort
The bubble sort algorithm can be easily optimized by observing that the n-th pass finds the n-th largest element and puts it into its final place. So, the inner loop can avoid looking at the last n − 1 items when running for the n-th time:
```
procedure bubbleSort( A : list of sortable items )
    n = length(A)
    repeat
        swapped = false
        for i = 1 to n-1 inclusive do
            if A[i-1] > A[i] then
                swap(A[i-1], A[i])
                swapped = true
            end if
        end for
        n = n - 1
    until not swapped
end procedure
```
More generally, it can happen that more than one element is placed in their final position on a single pass. In particular, after every pass, all elements after the last swap are sorted, and do not need to be checked again. This allows us to skip over a lot of the elements, resulting in about a worst case 50% improvement in comparison count (though no improvement in swap counts), and adds very little complexity because the new code subsumes the "swapped" variable:

To accomplish this in pseudocode we write the following:
```
procedure bubbleSort( A : list of sortable items )
    n = length(A)
    repeat
        newn = 0
        for i = 1 to n-1 inclusive do
            if A[i-1] > A[i] then
                swap(A[i-1], A[i])
                newn = i
            end if
        end for
        n = newn
    until n <= 1
end procedure
```


Mutate the Array passed in
```ruby
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)












