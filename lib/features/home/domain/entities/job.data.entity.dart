import 'package:find_job_app/features/home/domain/entities/apply.option.entity.dart';
import 'package:find_job_app/features/home/domain/entities/highlight.entity.dart';

class JobDataEntity {
  final String? id;

  final String? title;

  final String? name;

  final String? logo;

  final String? website;

  final String? publisher;

  final String? type;

  final List<String>? types;

  final String? applyLink;

  final bool? isApplyLinkDirect;

  final List<ApplyOptionEntity>? applyOptions;

  final String? description;

  final bool? isRemote;

  final String? postedAt;

  final int? postedAtTimeStamp;

  final DateTime? postedAtDateTime;

  final String? location;

  final String? city;

  final String? state;

  final String? country;

  final double? latitude;

  final double? longitude;

  final List<String>? benefits;
  
  final String? googleLink;

  final double? minSalary;

  final double? maxSalary;

  final String? salaryPeriod;

  final JobHighlightsEntity? highlights;

  final String? onetSoc;

  final String? zone;

  JobDataEntity({
    this.id,
    this.title,
    this.name,
    this.logo,
    this.website,
    this.publisher,
    this.type,
    this.types,
    this.applyLink,
    this.isApplyLinkDirect,
    this.applyOptions,
    this.description,
    this.isRemote,
    this.postedAt,
    this.postedAtTimeStamp,
    this.postedAtDateTime,
    this.location,
    this.city,
    this.state,
    this.country,
    this.latitude,
    this.longitude,
    this.benefits,
    this.googleLink,
    this.minSalary,
    this.maxSalary,
    this.salaryPeriod,
    this.highlights,
    this.onetSoc,
    this.zone,
  });
}
