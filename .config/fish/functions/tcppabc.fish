function tcppabc
  touch a.cpp b.cpp c.cpp d.cpp e.cpp f.cpp
  echo \
  "#include <bits/stdc++.h>
using namespace std;
#define for(i, a, b) for (int i=(int)(a); i < (int)(b); i++)
#define rep(i, n) for(i, 0, n)

int main() {
  cout << \"Hello, world!\" << endl;
}" > a.cpp > b.cpp > c.cpp > d.cpp > e.cpp > f.cpp
end
