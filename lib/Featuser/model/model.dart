import 'dart:convert';

import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

class Model {
	String? kind;
	String? id;
	String? etag;
	String? selfLink;
	VolumeInfo? volumeInfo;
	SaleInfo? saleInfo;
	AccessInfo? accessInfo;
	SearchInfo? searchInfo;

	Model({
		this.kind, 
		this.id, 
		this.etag, 
		this.selfLink, 
		this.volumeInfo, 
		this.saleInfo, 
		this.accessInfo, 
		this.searchInfo, 
	});

	factory Model.fromBook(Map<String, dynamic> data) => Model(
				kind: data['kind'] as String?,
				id: data['id'] as String?,
				etag: data['etag'] as String?,
				selfLink: data['selfLink'] as String?,
				volumeInfo: data['volumeInfo'] == null
						? null
						: VolumeInfo.fromBook(data['volumeInfo'] as Map<String, dynamic>),
				saleInfo: data['saleInfo'] == null
						? null
						: SaleInfo.fromBook(data['saleInfo'] as Map<String, dynamic>),
				accessInfo: data['accessInfo'] == null
						? null
						: AccessInfo.fromBook(data['accessInfo'] as Map<String, dynamic>),
				searchInfo: data['searchInfo'] == null
						? null
						: SearchInfo.fromBook(data['searchInfo'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toBook() => {
				'kind': kind,
				'id': id,
				'etag': etag,
				'selfLink': selfLink,
				'volumeInfo': volumeInfo?.toBook(),
				'saleInfo': saleInfo?.toBook(),
				'accessInfo': accessInfo?.toBook(),
				'searchInfo': searchInfo?.toBook(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Model].
	factory Model.fromJson(String data) {
		return Model.fromBook(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Model] to a JSON string.
	String toJson() => json.encode(toBook());
}
