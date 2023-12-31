import 'dart:convert';

import 'epub.dart';
import 'pdf.dart';

class AccessInfo {
	String? country;
	String? viewability;
	bool? embeddable;
	bool? publicDomain;
	String? textToSpeechPermission;
	Epub? epub;
	Pdf? pdf;
	String? webReaderLink;
	String? accessViewStatus;
	bool? quoteSharingAllowed;

	AccessInfo({
		this.country, 
		this.viewability, 
		this.embeddable, 
		this.publicDomain, 
		this.textToSpeechPermission, 
		this.epub, 
		this.pdf, 
		this.webReaderLink, 
		this.accessViewStatus, 
		this.quoteSharingAllowed, 
	});

	factory AccessInfo.fromBook(Map<String, dynamic> data) => AccessInfo(
				country: data['country'] as String?,
				viewability: data['viewability'] as String?,
				embeddable: data['embeddable'] as bool?,
				publicDomain: data['publicDomain'] as bool?,
				textToSpeechPermission: data['textToSpeechPermission'] as String?,
				epub: data['epub'] == null
						? null
						: Epub.fromBook(data['epub'] as Map<String, dynamic>),
				pdf: data['pdf'] == null
						? null
						: Pdf.fromBook(data['pdf'] as Map<String, dynamic>),
				webReaderLink: data['webReaderLink'] as String?,
				accessViewStatus: data['accessViewStatus'] as String?,
				quoteSharingAllowed: data['quoteSharingAllowed'] as bool?,
			);

	Map<String, dynamic> toBook() => {
				'country': country,
				'viewability': viewability,
				'embeddable': embeddable,
				'publicDomain': publicDomain,
				'textToSpeechPermission': textToSpeechPermission,
				'epub': epub?.toBook(),
				'pdf': pdf?.toBook(),
				'webReaderLink': webReaderLink,
				'accessViewStatus': accessViewStatus,
				'quoteSharingAllowed': quoteSharingAllowed,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [AccessInfo].
	factory AccessInfo.fromJson(String data) {
		return AccessInfo.fromBook(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [AccessInfo] to a JSON string.
	String toJson() => json.encode(toBook());
}
