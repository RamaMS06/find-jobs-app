import 'package:dio/dio.dart';
import 'package:find_job_app/features/home/data/datasources/job.remote.datasource.dart';
import 'package:find_job_app/features/home/data/repositories/job.repository.impl.dart';
import 'package:find_job_app/features/home/domain/usecase/search.job.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider((ref) => Dio());

final jobRemoteDataSourceProvider =
    Provider((ref) => JobRemoteDataSource(ref.read(dioProvider)));

final jobRepositoryProvider =
    Provider((ref) => JobRepositoryImpl(ref.read(jobRemoteDataSourceProvider)));

final jobUseCaseProvider =
    Provider((ref) => SearchJobUseCase(ref.read(jobRepositoryProvider)));