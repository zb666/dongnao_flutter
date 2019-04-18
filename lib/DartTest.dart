void main() {
  var a = 'Demo';
  print('$a');

  var nullValue;
  if(nullValue==null){
    print('data valur is null');
  }
  num math = 0;
  num testNum = 0.0;

  print('math:$math,testNum $testNum');
  testDetail('userName', 'secondName',branch: 'branch');

}

void testDetail(String username,secondName,{String branch = 'master'}){}