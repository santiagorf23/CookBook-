class Ingredient {
  final String? id;
  final String name;
  final double amount;
  final String unit;
  final String? notes;

  const Ingredient({
    this.id,
    required this.name,
    required this.amount,
    required this.unit,
    this.notes,
  });

  Ingredient.fromJson(Map<String, dynamic> json)
  :id = json['id'] as String?,
  name = json['name'] as String,
  amount = json['amount'] as double,
  unit = json['unit'] as String,
  notes = json['notes'] as String;

  Map<String, dynamic> toJson(){
    return{
    'id':id,
    'name':name,
    'amount':amount,
    'unit':unit,
    'notes':notes,
  };
}
}