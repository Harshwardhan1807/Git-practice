#include <vector>
#include <algorithm>
#include <iostream>

using namespace std;

class Solution {
public:
    vector<vector<int>> threeSum(vector<int>& nums) {
        int n=nums.size();
        vector<vector<int>> ans;
        sort(nums.begin(), nums.end());
        for(int i=0;i<nums.size();i++){
            int target=-nums[i];
            int j=i+1,k=n-1;
            if(i>=1 && nums[i]==nums[i-1]){
                continue;
            }
            while(j<k){
                if(nums[j]+nums[k]==target){
                    ans.push_back({nums[i],nums[j],nums[k]});
                    j++;
                    while (j < k && nums[j] == nums[j - 1]) j++;
                    k--;
                    while (j < k && nums[k] == nums[k + 1]) k--;
                }
                else if(nums[j]+nums[k]>target){
                    k--;
                }
                else{
                    j++;
                }
            }
        }
        return ans;
    }
};

int main(){
    vector<int> nums={-1,0,1,2,-1,-4};
    Solution obj;
    vector<vector<int>> ans;
    ans=obj.threeSum(nums);
    for(int i=0;i<ans.size();i++){
        for(int j=0;j<ans[i].size();j++){
            cout<<ans[i][j]<<" ";
        }
        cout<<endl;
    }
}