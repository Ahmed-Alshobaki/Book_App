import 'dart:convert';

class PanelizationSummary {
	bool? containsEpubBubbles;
	bool? containsImageBubbles;

	PanelizationSummary({
		this.containsEpubBubbles, 
		this.containsImageBubbles, 
	});

	factory PanelizationSummary.fromBook(Map<String, dynamic> data) {
		return PanelizationSummary(
			containsEpubBubbles: data['containsEpubBubbles'] as bool?,
			containsImageBubbles: data['containsImageBubbles'] as bool?,
		);
	}



	Map<String, dynamic> toBook() => {
				'containsEpubBubbles': containsEpubBubbles,
				'containsImageBubbles': containsImageBubbles,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PanelizationSummary].
	factory PanelizationSummary.fromJson(String data) {
		return PanelizationSummary.fromBook(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [PanelizationSummary] to a JSON string.
	String toJson() => json.encode(toBook());
}
