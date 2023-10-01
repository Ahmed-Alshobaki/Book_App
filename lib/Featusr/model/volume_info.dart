import 'dart:convert';

import 'image_links.dart';
import 'industry_identifier.dart';
import 'panelization_summary.dart';
import 'reading_modes.dart';

class VolumeInfo {
	String? title;
	List<String>? authors;
	String? publisher;
	String? publishedDate;
	String? description;
	List<IndustryIdentifier>? industryIdentifiers;
	ReadingModes? readingModes;
	int? pageCount;
	String? printType;
	List<String>? categories;
	double? averageRating;
	int? ratingsCount;
	String? maturityRating;
	bool? allowAnonLogging;
	String? contentVersion;
	PanelizationSummary? panelizationSummary;
	ImageLinks? imageLinks;
	String? language;
	String? previewLink;
	String? infoLink;
	String? canonicalVolumeLink;

	VolumeInfo({
		this.title, 
		this.authors, 
		this.publisher, 
		this.publishedDate, 
		this.description, 
		this.industryIdentifiers, 
		this.readingModes, 
		this.pageCount, 
		this.printType, 
		this.categories, 
		this.averageRating, 
		this.ratingsCount, 
		this.maturityRating, 
		this.allowAnonLogging, 
		this.contentVersion, 
		this.panelizationSummary, 
		this.imageLinks, 
		this.language, 
		this.previewLink, 
		this.infoLink, 
		this.canonicalVolumeLink, 
	});

	factory VolumeInfo.fromBook(Map<String, dynamic> data) => VolumeInfo(
				title: data['title'] as String?,
				authors: data['authors'] as List<String>?,
				publisher: data['publisher'] as String?,
				publishedDate: data['publishedDate'] as String?,
				description: data['description'] as String?,
				industryIdentifiers: (data['industryIdentifiers'] as List<dynamic>?)
						?.map((e) => IndustryIdentifier.fromBook(e as Map<String, dynamic>))
						.toList(),
				readingModes: data['readingModes'] == null
						? null
						: ReadingModes.fromBook(data['readingModes'] as Map<String, dynamic>),
				pageCount: data['pageCount'] as int?,
				printType: data['printType'] as String?,
				categories: data['categories'] as List<String>?,
				averageRating: (data['averageRating'] as num?)?.toDouble(),
				ratingsCount: data['ratingsCount'] as int?,
				maturityRating: data['maturityRating'] as String?,
				allowAnonLogging: data['allowAnonLogging'] as bool?,
				contentVersion: data['contentVersion'] as String?,
				panelizationSummary: data['panelizationSummary'] == null
						? null
						: PanelizationSummary.fromBook(data['panelizationSummary'] as Map<String, dynamic>),
				imageLinks: data['imageLinks'] == null
						? null
						: ImageLinks.fromBook(data['imageLinks'] as Map<String, dynamic>),
				language: data['language'] as String?,
				previewLink: data['previewLink'] as String?,
				infoLink: data['infoLink'] as String?,
				canonicalVolumeLink: data['canonicalVolumeLink'] as String?,
			);

	Map<String, dynamic> toBook() => {
				'title': title,
				'authors': authors,
				'publisher': publisher,
				'publishedDate': publishedDate,
				'description': description,
				'industryIdentifiers': industryIdentifiers?.map((e) => e.toBook()).toList(),
				'readingModes': readingModes?.toBook(),
				'pageCount': pageCount,
				'printType': printType,
				'categories': categories,
				'averageRating': averageRating,
				'ratingsCount': ratingsCount,
				'maturityRating': maturityRating,
				'allowAnonLogging': allowAnonLogging,
				'contentVersion': contentVersion,
				'panelizationSummary': panelizationSummary?.toBook(),
				'imageLinks': imageLinks?.toBook(),
				'language': language,
				'previewLink': previewLink,
				'infoLink': infoLink,
				'canonicalVolumeLink': canonicalVolumeLink,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [VolumeInfo].
	factory VolumeInfo.fromJson(String data) {
		return VolumeInfo.fromBook(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [VolumeInfo] to a JSON string.
	String toJson() => json.encode(toBook());
}