import 'package:dio/dio.dart';

const BASE_URL = "https://www.senfFaster.api";

class ZSHttp {
  static const keyUrl = "url";
  static const keyType = "type";
  static const keyTypeGet = "GET";
  static const keyTypePOST = "POST";
  static const keyParams = "params";

  factory ZSHttp() => _getInstance();
  static ZSHttp _instance;

  Dio _dio;

  ZSHttp._internal(){
    if (_dio == null) {
      _dio = new Dio();
      _dio.options.connectTimeout = 3000; //30s
    }
  }

  static ZSHttp _getInstance() {
    if (_instance == null) {
      _instance = new ZSHttp._internal();
    }
    return _instance;
  }

  // 请求数据
  Future <Response<dynamic>> request(Map<String, dynamic> opts) async{

    final _data = <String, dynamic>{};

    Map<String, dynamic> queryParameters = {};
    if (opts[keyParams] != null) {
      queryParameters.addAll(opts[keyParams]);
    }
    try{
      Response res = await _dio.request(opts[keyUrl],
        queryParameters: queryParameters,
        options: RequestOptions(
          method: opts[keyType],
          queryParameters: queryParameters,
        ),
        data: _data,
      );

      if (res.statusCode == 200) {
        return res.data;
      }
      // 对于失败的是否 需要返回 如果不需要 则可以不返回失败的数据

      return Response(
        statusCode: res.data.code,
        statusMessage: res.data.messgage,
      );

      return res;
    } on DioError catch(e) {
      return Response(
        statusCode: 100,
        statusMessage: "网络错误",
      );
    }
  }

  static Future <Response<dynamic>> requestAPI(Map<String, dynamic> opts) async {
    return ZSHttp().request(opts);
  }
}

class ZSHttpAPI {
  static void test() async{

    Response res = await ZSHttp.requestAPI({
      ZSHttp.keyUrl: "https://www.baidu.com/",
      ZSHttp.keyType: ZSHttp.keyTypeGet,
      ZSHttp.keyParams: {
        "name": "张三丰",
      }
    });

    print("-----回调----");
    print(res.statusCode);
    print(res.data);
    print(res.request.uri);

//    拦截器没有任何意义 因为请求本来就是封装好的 可以在之前处理
//    请求错误之后还是照样会报错 无法继续执行后面的代码
//    dio.interceptors.add(InterceptorsWrapper(
//      onRequest: (RequestOptions options) async{
//        print("------请求---- ");
//        return options;
//      },
//      onResponse: (Response response) async {
//        print("------响应---- ");
//        return response;
//      },
//      onError: (DioError error) async {
//        print("------2错误---- ");
//        print(error.message);
//      }
//    ));

  }
}
