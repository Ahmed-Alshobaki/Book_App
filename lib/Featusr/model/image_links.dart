import 'dart:convert';

class ImageLinks {
	String? smallThumbnail;
	String? thumbnail;

	ImageLinks({this.smallThumbnail, this.thumbnail});

	factory ImageLinks.fromBook(Map<String, dynamic> data) => ImageLinks(
				smallThumbnail: data['smallThumbnail'] as String?,
				thumbnail: data['thumbnail'] as String?,
			);

	Map<String, dynamic> toBook() => {
				'smallThumbnail': smallThumbnail,
				'thumbnail': thumbnail,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ImageLinks].
	factory ImageLinks.fromJson(String data) {
		return ImageLinks.fromBook(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [ImageLinks] to a JSON string.
	String toJson() => json.encode(toBook());
}
