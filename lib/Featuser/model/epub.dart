import 'dart:convert';

class Epub {
	bool? isAvailable;

	Epub({this.isAvailable});

	factory Epub.fromBook(Map<String, dynamic> data) => Epub(
				isAvailable: data['isAvailable'] as bool?,
			);

	Map<String, dynamic> toBook() => {
				'isAvailable': isAvailable,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Epub].
	factory Epub.fromJson(String data) {
		return Epub.fromBook(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Epub] to a JSON string.
	String toJson() => json.encode(toBook());
}
