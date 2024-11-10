class Prayer_model
{
  List<dynamic> data;

  Prayer_model({
    required this.data
  });

  factory Prayer_model.fromjson(Map<String,dynamic> json)
  {
    return Prayer_model(data: json["data"]);
  }
}