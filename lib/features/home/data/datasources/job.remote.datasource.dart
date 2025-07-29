import 'package:dio/dio.dart';
import 'package:find_job_app/core/constant/app.constant.dart';
import 'package:find_job_app/core/core.dart';
import 'package:find_job_app/env/app.env.dart';
import 'package:find_job_app/features/home/data/models/job.model.dart';

class JobRemoteDataSource {
  final Dio dio;

  JobRemoteDataSource(this.dio);

  Future<Result<JobModel>> findJobs({String? query}) async {
    try {
      final response = await dio.get('${AppConstant.baseUrl}search',
          queryParameters: {'query': query ?? "flutter developer"},
          options: Options(headers: {
            'x-rapidapi-key': AppEnv.rapidApiKey,
            'x-rapidapi-host': AppConstant.rapidApiHost,
          }));
      final data = response.data;
      return Result.success(JobModel.fromJson(data));
    } catch (e) {
      return Result.failure(e.toString());
    }
  }
}
