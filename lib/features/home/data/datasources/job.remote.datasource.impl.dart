import 'package:dio/dio.dart';
import 'package:find_job_app/core/constant/app.constant.dart';
import 'package:find_job_app/core/services/injection.container.dart';
import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/env/app.env.dart';
import 'package:find_job_app/features/home/data/datasources/job.remote.datasource.dart';
import 'package:find_job_app/features/home/data/models/job.model.dart';

class JobRemoteDataSourceImpl implements JobRemoteDataSource {
  @override
  Future<Result<JobModel>> findJobs({String? query, String? location}) async {
    try {
      final response = await sl<Dio>().post(
        '${AppConstant.baseUrl}/${AppEnv.apiKey}',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        data: {
          'keywords': query ?? "Flutter Developer",
          'location': location ?? 'Remote',
        },
      );
      final data = response.data;
      return Result.success(JobModel.fromJson(data));
    } catch (e) {
      return Result.failed(e.toString());
    }
  }
}
