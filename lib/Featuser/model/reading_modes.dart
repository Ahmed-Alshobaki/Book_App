import 'dart:convert';

class ReadingModes {
	bool? text;
	bool? image;

	ReadingModes({this.text, this.image});

	factory ReadingModes.fromBook(Map<String, dynamic> data) => ReadingModes(
				text: data['text'] as bool?,
				image: data['image'] as bool?,
			);

	Map<String, dynamic> toBook() => {
				'text': text,
				'image': image,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ReadingModes].
	factory ReadingModes.fromJson(String data) {
		return ReadingModes.fromBook(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [ReadingModes] to a JSON string.
	String toJson() => json.encode(toBook());
}
