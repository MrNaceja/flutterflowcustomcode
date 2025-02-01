// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

/**
 * HOF (High Order Function) para lidar com tratamento de erros para fluxos de ação fo Flutterflow.
 */
Future withErrorHandling(
    /// Fluxo de ação principal (no qual deve-se tentar fazer algo que pode resultar erros).
    Future Function() tryFlow,
    /// Fluxo de ação para tratamento de erro (caso exista), recebe a mensagem de erro como parâmetro.
    Future Function(String errorMessage)? errorFlow,
    /// Fluxo de ação que SEMPRE irá executar independente de dar erro ou não.
    Future Function()? alwaysFlow
) async {

    try {
        await tryFlow();
    } catch (e) {
        /// Aqui caso haja necessidade pode-se validar mais informações do erro e formatar da forma desejada a mensagem de erro.
        await errorFlow!(e.toString());
    } finally {
        await alwaysFlow!();
    }

}