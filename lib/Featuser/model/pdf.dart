import 'dart:convert';

class Pdf {
	bool? isAvailable;

	Pdf({this.isAvailable});

	factory Pdf.fromBook(Map<String, dynamic> data) => Pdf(
				isAvailable: data['isAvailable'] as bool?,
			);

	Map<String, dynamic> toBook() => {
				'isAvailable': isAvailable,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Pdf].
	factory Pdf.fromJson(String data) {
		return Pdf.fromBook(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Pdf] to a JSON string.
	String toJson() => json.encode(toBook());
}
