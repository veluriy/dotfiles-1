function tcpp
  touch $argv
  echo \
  "#include <bits/stdc++.h>
using namespace std;
#define for(i, a, b) for (int i=(int)(a); i < (int)(b); i++)
#define rep(i, n) for(i, 0, n)

typedef vector<int> vi;
typedef vector<vi> vvi;

#define pb push_back

int main() {
  cout << "Hello, world!" << endl;
}" > $argv
end
