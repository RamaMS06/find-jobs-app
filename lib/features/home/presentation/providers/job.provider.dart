import 'package:find_job_app/core/services/injection.container.dart';
import 'package:find_job_app/features/home/data/datasources/job.remote.datasource.dart';
import 'package:find_job_app/features/home/data/repositories/job.repository.impl.dart';
import 'package:find_job_app/features/home/domain/entities/job.data.entity.dart';
import 'package:find_job_app/features/home/domain/usecase/search.job.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final jobRemoteDataSourceProvider =
    Provider((ref) => sl<JobRemoteDataSource>());

final jobRepositoryProvider =
    Provider((ref) => JobRepositoryImpl(ref.read(jobRemoteDataSourceProvider)));

final jobUseCaseProvider =
    Provider((ref) => SearchJobUseCase(ref.read(jobRepositoryProvider)));

final selectedJobProvider = StateProvider<JobDataEntity>((ref) => const JobDataEntity());
