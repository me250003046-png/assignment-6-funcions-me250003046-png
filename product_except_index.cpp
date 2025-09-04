#include <iostream>
#include <vector>
using namespace std;

vector<long long> productExceptIndex(const vector<int>& arr) {
    int size = arr.size();
    vector<long long> output(size, 1);
    long long prefix = 1;
    for (int i = 0; i < size; ++i) {
        output[i] = prefix;
        prefix *= arr[i];
    }

   
    long long suffix = 1;
    for (int i = size - 1; i >= 0; --i) {
        output[i] *= suffix;
        suffix *= arr[i];
    }

    return output;
}


int main() {
    int n; cin >> n;
    vector<int> arr(n);
    for (int i=0; i<n; i++) cin >> arr[i];

    vector<long long> res = productExceptIndex(arr);
    for(auto v : res)
        cout << v << " ";
    cout << "\n";

    return 0;
}
