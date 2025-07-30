import 'dart:io';

import 'package:find_job_app/core/shared_data/auth/data/datasources/auth.datasource.dart';
import 'package:find_job_app/core/shared_data/auth/data/datasources/auth.datasource.impl.dart';
import 'package:find_job_app/core/shared_data/auth/data/repositories/auth.repository.impl.dart';
import 'package:find_job_app/core/shared_data/auth/domain/repositories/auth.repository.dart';
import 'package:find_job_app/core/shared_data/auth/domain/usecases/current.user.dart';
import 'package:find_job_app/core/shared_data/auth/domain/usecases/get.role.dart';
import 'package:find_job_app/core/shared_data/auth/domain/usecases/save.role.dart';
import 'package:find_job_app/core/shared_data/auth/domain/usecases/sign.in.dart';
import 'package:find_job_app/core/shared_data/auth/domain/usecases/sign.out.dart';
import 'package:find_job_app/env/firebase.env.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'injection.container.main.dart';
