import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/flutter_flow/custom_functions.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

/**
 * Custom function utilizada no vídeo.
 * Você pode querer ver o MOCK abaixo para mais entendimento.
 */
List<String> describeEnumRoleValues() {
  /// MODIFY CODE ONLY BELOW THIS LINE

  return Role.values
      .map((role) =>
          {
            Role.admin: 'Administrador',
            Role.manager: 'Gerenciador',
            Role.member: 'Membro',
            Role.partner: 'Parceiro'
          }[role] ??
          '')
      .toList();

  /// MODIFY CODE ONLY ABOVE THIS LINE
}

// MOCK
// List<String> describeEnumNomeDoEnumValues() {
//   /// MODIFY CODE ONLY BELOW THIS LINE

//   return NomeDoEnum.values
//       .map((enumValue) =>
//           {
//             NomeDoEnum.value1: 'Descrição Value1',
//             NomeDoEnum.value2: 'Descrição Value2',
//             NomeDoEnum.value3: 'Descrição Value3'
//           }[enumValue] ??
//           'Valor padrão (inválido)')
//       .toList();

//   /// MODIFY CODE ONLY ABOVE THIS LINE
// }
