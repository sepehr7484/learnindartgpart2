 // import 'dart:html';
import 'dart:io';
import 'dart:convert';


class Half{
  void pyramid(){
    stdout.write('Enter number:  ');
    var get=stdin.readLineSync();
    var getdata=int.parse(get!);
    for(int i = 0 ; i< getdata; i++)
    {
      for(int j = 0; j<=i;j++)
      {
        stdout.write('*');
      }
      stdout.writeln();
    }
  }
  void pyramidRighttoLeft(){
    stdout.write('Enter number:  ');
    var get=stdin.readLineSync();
    var getdata=int.parse(get!);
    // int rows = 6;
    for(int i = 0 ; i< getdata; i++)
    {
      for(int j=2*(getdata-i);j>=0;j--){
        stdout.write(" ");
      }
      for(int j = 0;j<=i;j++)
      {
        stdout.write("* ");
      }
      stdout.writeln();
    }
  }
  void pyramidNumber(){
    stdout.write('Enter number:  ');
    var get=stdin.readLineSync();
    var getdata=int.parse(get!);
    for(int i=0;i<getdata;i++){
      int number=1;
      for(int j=1;j<i+1;j++){
        stdout.write('${number++}');

      }
      stdout.writeln();
    }

  }
}
class HttpData{
  void geturl(){
    HttpClient().getUrl(Uri.parse('https://www.holiday-tricot.com/ '))
        .then((request) => request.close())
        .then((response) =>
    response.transform(Utf8Decoder()).listen((print) ));

  }
 void moregeturl(){

   // stdout.write('Enter Url:  ');
   // var url=stdin.readLineSync();
   // HttpClient()
   //     .getUrl(Uri.parse('https://www.'+url.toString())) // produces a request object
   //     .then((request) => request.close()) // sends the request
   //     .then((response) =>
   //     response.transform(Utf8Decoder()).listen(print)); // transforms and prints the response
   //

   // var request = await HttpClient().getUrl(Uri.parse('https://www.holiday-tricot.com/ '));  // sends the request
   // var response = await request.close();
   //
   // // transforms and prints the response
   // await for (var contents in response.transform(Utf8Decoder())) {
   //   stdout.write("  ");
   //   print(contents);
   // }

 }
 void maping(){
    var user={
      'fname':'sajjad',
      'age':26
      };
    user.addAll({
      'LastName':'Ahmadi',
      'age':29
    });
    // user.remove('fname');
    // user.clear();
    user.update('age', (dynamic value) => ++value);
    var usercopy=Map.from(user);
    print(usercopy);
    print(user);
 }
 void mathDart(){
    var str ='sajjad';
  str.replaceAll('sajjad', 'Ahmadi');
    print(str);
 }
 void server()async{
      var call=HttpData();
      var ss='dfsfdsf';
   var server = await HttpServer.bind("localhost", 2020);
   print(server.port);
   print(server.address);

   await for (var request in server) {
     request.response.write(call);
     request.response.statusCode;
     request.response.close();
     print(server.address);
     print(request.response.statusCode);
   }

 }
 void file(){
    stdout.write('Enter Name:');
 String? getd=    stdin.readLineSync();
 File filepath=new File('E:\\SimpleDartProject\\learnDart\\bin\\${getd}.txt');

filepath.writeAsString('getd.toString().trim()+');
  //print(filepath.readAsStringSync());
 // filepath.deleteSync();

 }
 void directoryPlatform(){
    Directory dir=Directory.systemTemp;
    print(dir.absolute);
    print(Platform.script);
    print(Platform.operatingSystem);
    print(Platform.version);

   if(Platform.isLinux || Platform.isMacOS){
     print(Platform.operatingSystem);
     print('Linux&MacOs');
   }else if(Platform.isWindows){
     print(Platform.operatingSystem+'10');
     print(Platform.environment);

     File f=File('E:\\SimpleDartProject\\learnDart\\bin\\file.txt');
     f.writeAsStringSync(Platform.environment.toString()+'\n');
   }

 }
void procss(){
    Process.run('net', ['help']).then((ProcessResult result) {
      print(result.stdout);

    });
}
void futures()async{
    File f=File('E:\\SimpleDartProject\\learnDart\\bin\\test.txt');
    //f.writeAsStringSync('\n'+Platform.environment.toString());
    // String call=f.readAsStringSync();
    // print(call);
  Future<String> file=f.readAsString();
  file.then((value){
    print(value);
  });
  print('ENd............');
}


}
void main() async{

var calldata=HttpData();
calldata.futures();
}