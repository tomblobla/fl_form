class Game {
  static var yourName = '';
  static var crushName = '';

  static List<String> result = [
    "Hai người chính là những người bạn đời tri kỷ của nhau. Dù không dùng đến lời nói hai bạn vẫn có thể hiểu được tâm tư của đối phương Mối tình của hai người ngọt ngào mặn nồng khiến mọi người xung quanh phải ngưỡng mộ.",
    "Mối tình của hai người dù thắm thiết nhưng sẽ gặp phải trở ngại. Dù hai người luôn muốn dành trọn cả đời ở bên đối phương nhưng họ vẫn có thể phải xa nhau vì sự phản đối của gia đình. Để bảo vệ tình yêu, cặp đôi này phải tỏ ra mạnh mẽ hơn nữa.",
    "Đây là cặp đôi thanh mai trúc mã, đi từ tình bạn trong sáng ngây thơ đến tình yêu vĩnh cửu. Chính vì thế, họ có thể thấu hiểu đối phương đến từng chân tơ kẽ tóc. Cặp đôi này sẽ gặp khó khăn khi phải vượt qua ranh giới giữa tình bạn và tình yêu.",
    "Mối lương duyên tiền định kéo dài trong nhiều kiếp chính là nguyên nhân khiến hai bạn đến bên nhau trong kiếp này. Chính vì thế, cặp đôi này có sự hòa hợp cả về thể xác lẫn linh hồn.",
    "Mối tình của hai người có nguy cơ tan vỡ bởi sự chen ngang của người thứ ba. Để tránh bị người khác chia rẽ, cặp đôi này phải dành nhiều thời gian tâm tình, hẹn hò để tăng mức độ thấu hiểu lẫn nhau.",
    "Ngay từ cái nhìn đầu tiên, hai người đã xác định đối phương là người bạn đời của mình. Dù chỉ mới gặp nhau, cặp đôi này đã thể hiện sự đồng cảm sâu sắc.",
    "Hai người đến với nhau vì sự hòa hợp về chí hướng và lý tưởng trong cuộc sống. Cặp đôi này sẽ cùng nhau phấn đấu để biến giấc mơ của cả hai trở thành sự thật.",
    "Mức độ ăn ý của hai người ở mức khá cao. Cặp đôi này luôn muốn dành cho nhau những tình cảm chân thành ấm áp nhất. Hai người có thể sống bên nhau đều đầu bạc răng nong.",
    "Tâm hồn của hai người không hướng về nhau nên khó đạt được sự hòa hợp trong mối quan hệ. Để duy trì mối tình bền lâu, cả hai phải cho nhau cơ hội để tìm hiểu về tâm tư, nhu cầu của đối phương."
  ];

  static String Boi() {
    int point = ConvertNameToPoint();
    if (point == 0) return "Chưa nhập tên";

    //shorter the number like 89 => 8 + 9 = 17 => 1 + 7 = 8 (final)
    while (point > 9) {
      int newpoint = 0;

      point.toString().runes.forEach((int rune) {
        var c = new String.fromCharCode(rune);

        newpoint += int.parse(c);
      });

      point = newpoint;
    }

    return result[point - 1];
  }

  static int ConvertNameToPoint() {
    var total = 0;

    yourName.toUpperCase().runes.forEach((int rune) {
      var c = new String.fromCharCode(rune);

      total += ConvertCharToPoint(c);
    });

    crushName.toUpperCase().runes.forEach((int rune) {
      var c = new String.fromCharCode(rune);

      total += ConvertCharToPoint(c);
    });

    return total;
  }

  static int ConvertCharToPoint(var c) {
    var num = 0;
    switch (c) {
      case 'A':
      case 'K':
      case 'U':
        {
          num = 1;
          break;
        }
      case 'B':
      case 'S':
      case 'J':
        {
          num = 2;
          break;
        }
      case 'C':
      case 'L':
      case 'T':
        {
          num = 3;
          break;
        }
      case 'D':
      case 'N':
      case 'X':
        {
          num = 4;
          break;
        }
      case 'E':
      case 'M':
      case 'W':
        {
          num = 5;
          break;
        }
      case 'F':
      case 'O':
      case 'V':
        {
          num = 6;
          break;
        }
      case 'G':
      case 'Q':
      case 'Z':
        {
          num = 7;
          break;
        }
      case 'H':
      case 'P':
      case 'Y':
        {
          num = 8;
          break;
        }
      case 'I':
      case 'R':
        {
          num = 9;
          break;
        }
    }

    return num;
  }
}
