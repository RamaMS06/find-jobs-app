import 'dart:developer';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:find_job_app/core/common/components/bottomsheet/bottom.sheet.dart';
import 'package:find_job_app/core/common/components/component.dart';
import 'package:find_job_app/core/common/components/container/container.shadow.widget.dart';
import 'package:find_job_app/core/common/tokens/color/color.token.dart';
import 'package:find_job_app/core/common/tokens/fonts/font.token.dart';
import 'package:find_job_app/features/task/domain/entities/task.entity.dart';
import 'package:find_job_app/features/task/presentation/controller/date.controller.dart';
import 'package:find_job_app/features/task/presentation/controller/task.controller.dart';
import 'package:find_job_app/features/task/presentation/controller/task.state.dart';
import 'package:find_job_app/features/task/presentation/providers/task.provider.dart';
import 'package:find_job_app/features/task/presentation/widgets/bottom.sheet.task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

part 'task.page.dart';
