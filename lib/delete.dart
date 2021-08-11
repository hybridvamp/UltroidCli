// UltroidCli
// Copyright (C) 2021 Akash Pattnaik
//
// This file is a part of < https://github.com/BLUE-DEVIL1134/UltroidCli/ >
// PLease read the GNU Affero General Public License in
// <https://www.github.com/BLUE-DEVIL1134/UltroidCli/blob/main/LICENSE/>.

import 'package:colorize/colorize.dart';
import 'dart:io';

// Ultroid
import 'package:ultroid_cli/version.dart';

void deleteUltroid() async {
  final rootDirectory = Directory('./TeamUltroid');
  if (!rootDirectory.existsSync()) {
    print(Colorize('Ultroid at [ ${Colorize("root://TeamUltroid").lightMagenta()} ] dosen\'t exists !').cyan());
  } else {
    print(Colorize('Removing Ultroid at [ ${Colorize("root://TeamUltroid").lightMagenta()} ]').cyan());
    rootDirectory.deleteSync(recursive: true);
    print(Colorize('Succesfully Removed Ultroid at [ ${Colorize("root://TeamUltroid").lightMagenta()} ]').cyan());
  }
  version();
  print(Colorize('To Install Ultroid, Use The Command [ ultroid init ]').lightGreen());
}