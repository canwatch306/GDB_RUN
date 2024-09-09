#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
int main() {
    int n;
    cin >> n;
    
    vector<int> arr(n);
    for (int i = 0; i < n; ++i) {
        cin >> arr[i];
    }   
    sort(arr.begin(), arr.end());
    vector<int> result(n);
    int left = 0, right = n - 1;
    int index = 0;
    
    while (left <= right) {
        if (index % 2 == 0) {
            result[index++] = arr[left++];
        } else {
            result[index++] = arr[right--];
        }
    }
    
    for (int num : result) {
        cout << num << " ";
    }
    cout << endl;
    
    return 0;
}
