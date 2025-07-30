import 'dart:developer';

import 'package:find_job_app/core/shared_data/auth/domain/entities/user.entity.dart';
import 'package:find_job_app/core/shared_data/auth/domain/entities/user.role.entitiy.dart';
import 'package:find_job_app/core/shared_data/auth/presentation/controller/auth.controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:find_job_app/core/common/components/text/text.widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:find_job_app/features/home/home.dart';
import 'package:find_job_app/features/login/login.dart';
import 'dart:async';

part 'app.router.dart';

final currentUserProvider = Provider<UserEntity?>((ref) {
  final auth = ref.watch(authControllerProvider.notifier);
  return auth.currentUser;
});

final currentRoleProvider = Provider<UserRoleEntity?>((ref) {
  final auth = ref.watch(authControllerProvider.notifier);
  return auth.currentRole;
});
