function tcpp
  touch $argv
  echo \
  "#include <bits/stdc++.h>
using namespace std;

int main() {
  cout << \"Hello, world\" << endl;
}" >> $argv
end
