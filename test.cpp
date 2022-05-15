#include<iostream.h>

int main() {
    int t=0;
    cin>>t;
	while(t--)
    {
        int n,x,y;
        cin>>n>>x>>y;
        int a[n];
        for(int i=0;i<n;i++)
        {
            cin>>a[i];
        }
        for(int i=0;i<n;i++)
        {
            if((a[i]<=x)&&(a[i]%y==0))
            cout<<a[i];
        }

    }
	return 0;
}
