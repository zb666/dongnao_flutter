void main(){
  var map = {"first","Dart",1,true};

  var list = ["1","2","3"];
  var list2 = list.map((m)=>{
  }).toList();

  print(list2);
  // ignore: unnecessary_statements
  (i)=>"$i+哈哈哈";

  Map<String,String> mapname = {"1":"1","2":"2","3":"3"};
  print(mapname);

  var array = ['1','2','3'];
  print(array);

  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['access_token'] = 'token';
  data['sp_uid'] = 'uid';

  data['1'] = "1";
  data['3'] = "3";
  data['2'] = "2";

  print(data['2']);
  print(data.keys);
  print(data.values);
  
  data.forEach(f);

  List<String> _dataList = ['111','222','333'];

  _dataList.forEach(fa);

  dartRFunTime(1, 'Str');

}

void fa(String element){
  print("element $element");
}


void f(key,value){
  print("key : $key value: $value");
}

void dartRFunTime(a,b){
  print(a.runtimeType);
  print(b.runtimeType);//dart参数可以省略类型
}