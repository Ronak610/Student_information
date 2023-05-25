/// _id : 0
/// name : "aimee Zank"
/// scores : [{"score":1.463179736705023,"type":"exam"},{"score":11.78273309957772,"type":"quiz"},{"score":35.8740349954354,"type":"homework"}]

class StudentModal {
  StudentModal({
      num? id, 
      String? name, 
      List<Scores>? scores,}){
    _id = id;
    _name = name;
    _scores = scores;
}

  StudentModal.fromJson(dynamic json) {
    _id = json['_id'];
    _name = json['name'];
    if (json['scores'] != null) {
      _scores = [];
      json['scores'].forEach((v) {
        _scores?.add(Scores.fromJson(v));
      });
    }
  }
  num? _id;
  String? _name;
  List<Scores>? _scores;
StudentModal copyWith({  num? id,
  String? name,
  List<Scores>? scores,
}) => StudentModal(  id: id ?? _id,
  name: name ?? _name,
  scores: scores ?? _scores,
);
  num? get id => _id;
  String? get name => _name;
  List<Scores>? get scores => _scores;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['name'] = _name;
    if (_scores != null) {
      map['scores'] = _scores?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// score : 1.463179736705023
/// type : "exam"

class Scores {
  Scores({
      num? score, 
      String? type,}){
    _score = score;
    _type = type;
}

  Scores.fromJson(dynamic json) {
    _score = json['score'];
    _type = json['type'];
  }
  num? _score;
  String? _type;
Scores copyWith({  num? score,
  String? type,
}) => Scores(  score: score ?? _score,
  type: type ?? _type,
);
  num? get score => _score;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['score'] = _score;
    map['type'] = _type;
    return map;
  }

}