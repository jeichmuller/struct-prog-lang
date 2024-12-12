// Comb Sort

function getNextGap(gap){

    gap = (gap*10)/13;
    i=0;
    while(gap>i){
        i=i+1
    };
    i = i-1;
    if (i<1) {
        return 1
    };
    if(d) {print "Gap value: "; print i};
    return i
};

function combSort (a, n){
    print "Unsorted list: ";
    print a;

    gap = n;
    swapped = true;
    while (gap!=1||swapped == true){
        gap = getNextGap(gap);

        swapped = false;
        diff = n-gap;
        i=0;
        while(i<diff){
            j = i +gap;
            if(a[i]>a[j]){
                x = a[i];
                a[i] = a[j];
                a[j] = x;
                swapped = true;
                if(d) {print a}
            };
            i=i+1
        }
    };
    print "Sorted list: ";
    print a;
    return a
};


d = false;  //Change to true to see debug statements
a = [8,4,1,56,3,-44,23,-6,28,0];    //Change array to whatever youd like sorted
n = 10; //Size value, change to however big array is

combSort(a,n)

