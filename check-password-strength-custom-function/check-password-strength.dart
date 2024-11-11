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
import '/backend/schema/enums/enums.dart';

/**
 * Lembre-se de utilizar o mesmo nome para o Enum OU Alterar esta função para a referência do nome correto.
 */
PasswordStrength? checkPasswordStrength(String password) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (password.length == 0) return null; // Resetando o estado

  if (password.length < 6) {
    return PasswordStrength.VERY_INSECURE;
  } else {
    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = password.contains(RegExp(r'[a-z]'));
    bool hasNumber    = password.contains(RegExp(r'[0-9]'));
    bool hasEspecial  = password.contains(RegExp(r'[!@#\$&*~]'));

    int criteriaMet = 0;
    if (hasUppercase) criteriaMet++;
    if (hasLowercase) criteriaMet++;
    if (hasNumber   ) criteriaMet++;
    if (hasEspecial ) criteriaMet++;

    // Classificação da força da senha com base no número de critérios atendidos
    if (criteriaMet == 1) {
      return PasswordStrength.VERY_INSECURE;
    }
    if (criteriaMet == 2) {
      return PasswordStrength.INSECURE;
    } 
    if (criteriaMet == 3) {
      return PasswordStrength.SECURE;
    } 
    if (criteriaMet == 4 && password.length >= 8) {
      return PasswordStrength.VERY_SECURE;
    }
    
    return PasswordStrength.INSECURE;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
