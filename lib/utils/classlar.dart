import 'dart:math';
final _random = new Random();


class Myanswers{
  int trueimage;
  String answer1;
  String answer2;
  String answer3;
  String answer4;
  int index;
  int istruemui1;
  int istruemui2;
  int istruemui3;
  int istruemui4;


  Myanswers({
    required this.answer1,
    required this.answer2,
    required this.answer3,
    required this.answer4,
    this.istruemui1 = -1,
    this.istruemui2 = -1,
    this.istruemui3 = -1,
    this.istruemui4 = -1,
    this.index = 0,
    required this.trueimage,


});

  static final tests = [
   Myanswers(answer1: countries[_random.nextInt(183)],
             answer2: countries[_random.nextInt(183)],
             answer3: countries[_random.nextInt(183)],
             answer4: countries[_random.nextInt(183)],
             trueimage: 1 + _random.nextInt(4),

              index: 0



   ),
    Myanswers(answer1: countries[_random.nextInt(183)],
        answer2: countries[_random.nextInt(183)],
        answer3: countries[_random.nextInt(183)],
        answer4: countries[_random.nextInt(183)],
      trueimage: 1 + _random.nextInt(5 - 1),
      index: 0


    ),
    Myanswers(answer1: countries[_random.nextInt(183)],
        answer2: countries[_random.nextInt(183)],
        answer3: countries[_random.nextInt(183)],
        answer4: countries[_random.nextInt(183)],
      trueimage: 1 + _random.nextInt(5 - 1),

    ),
    Myanswers(answer1: countries[_random.nextInt(183)],
        answer2: countries[_random.nextInt(183)],
        answer3: countries[_random.nextInt(183)],
        answer4: countries[_random.nextInt(183)],
      trueimage: 1+ _random.nextInt(5 - 1),


    ),
    Myanswers(answer1: countries[_random.nextInt(183)],
        answer2: countries[_random.nextInt(183)],
        answer3: countries[_random.nextInt(183)],
        answer4: countries[_random.nextInt(183)],
      trueimage: 1 + _random.nextInt(5 - 1),


    ),
    Myanswers(answer1: countries[_random.nextInt(183)],
        answer2: countries[_random.nextInt(183)],
        answer3: countries[_random.nextInt(183)],
        answer4: countries[_random.nextInt(183)],
      trueimage: 1+ _random.nextInt(5 - 1),


    ),
    Myanswers(answer1: countries[_random.nextInt(183)],
        answer2: countries[_random.nextInt(183)],
        answer3: countries[_random.nextInt(183)],
        answer4: countries[_random.nextInt(183)],
      trueimage: 1 + _random.nextInt(5 - 1),


    ),
    Myanswers(answer1: countries[_random.nextInt(183)],
        answer2: countries[_random.nextInt(183)],
        answer3: countries[_random.nextInt(183)],
        answer4: countries[_random.nextInt(183)],
      trueimage: 1+ _random.nextInt(5 - 1),


    ),
    Myanswers(answer1: countries[_random.nextInt(183)],
        answer2: countries[_random.nextInt(183)],
        answer3: countries[_random.nextInt(183)],
        answer4: countries[_random.nextInt(183)],
      trueimage: 1+ _random.nextInt(5 - 1),

    ),
    Myanswers(answer1: countries[_random.nextInt(183)],
        answer2: countries[_random.nextInt(183)],
        answer3: countries[_random.nextInt(183)],
        answer4: countries[_random.nextInt(183)],
      trueimage: 1+  _random.nextInt(5 - 1),

    ),



  ];


}








List countries = [
  'Afghanistan',
  'Albania',
  'Algeria',
  'Andorra',
  'Angola',
  'Anguilla',
  'Antarctica',
  'Argentina',
  'Armenia',
  'Aruba',
  'Australia',
  'Austria',
  'Azerbaijan',
  'the bahamas',
  'Bahrain',
  'Bangladesh',
  'Barbados',
  'Belarus',
  'Belgium',
  'Belize',
  'Benin',
  'Bermuda',
  'Bhutan',
  'Bolivia',
  'Bonaire',
  'Bosnia',
  'Botswana',
  'Bouvet Island',
  'Brazil',
  'British',
  'Bulgaria',
  'Burkina',
  'Burundi',
  'Cambodia',
  'Cameroon',
  'Canada',
  'the cayman islands',
  'Chad',
  'Chile',
  'China',
  'Colombia',
  'the comoros',
  'Congo',
  'Croatia',
  'Cuba',
  'Cyprus',
  'Denmark',
  'Djibouti',
  'Dominica',
  'Ecuador',
  'Egypt',
  'Guinea',
  'Eritrea',
  'Estonia',
  'Ethiopia',
  'Fiji',
  'Finland',
  'France',
  'Gabon',
  'Gambia',
  'Georgia',
  'Germany',
  'Ghana',
  'Gibraltar',
  'Greece',
  'Greenland',
  'Grenada',
  'Guam',
  'Guatemala',
  'Guernsey',
  'Guinea',
  'Guinea-Bissau',
  'Guyana',
  'Haiti',
  'Honduras',
  'Hungary',
  'Iceland',
  'India',
  'Indonesia',
  'Iran',
  'Iraq',
  'Ireland',
  'Israel',
  'Italy',
  'Jamaica',
  'Japan',
  'Jersey',
  'Jordan',
  'Kazakhstan',
  'Kenya',
  'Kiribati',
  'southe korea',
  'Kuwait',
  "north korea",
  'Kyrgyzstan',
  'Latvia',
  'Lebanon',
  'Lesotho',
  'Liberia',
  'Libya',
  'Liechtenstein',
  'Lithuania',
  'Luxembourg',
  'Macao',
  'Macedonia',
  'Madagascar',
  'Malawi',
  'Malaysia',
  'Maldives',
  'Mali',
  'Malta',
  'Martinique',
  'Mauritania',
  'Mauritius',
  'Mayotte',
  'Mexico',
  'Moldova',
  'Monaco',
  'Mongolia',
  'Montenegro',
  'Montserrat',
  'Morocco',
  'Mozambique',
  'Myanmar',
  'Namibia',
  'Nauru',
  'Nepal',
  'Netherlands',
  'New Caledonia',
  'New Zealand',
  'Nicaragua',
  'Niger',
  'Nigeria',
  'Norway',
  'Oman',
  'Pakistan',
  'Palestinian',
  'Panama',
  'Paraguay',
  'Peru',
  'Philippines',
  'Pitcairn',
  'Poland',
  'Qatar',
  'Romania',
  'Rwanda',
  'Samoa',
  'Senegal',
  'Serbia',
  'Seychelles',
  'Singapore',
  'Slovakia',
  'Slovenia',
  'Somalia',
  'Spain',
  'Sudan',
  'Suriname',
  'Sudan',
  'Sweden',
  'Switzerland',
  'Syria',
  'Taiwan',
  'Tajikistan',
  'Tanzania',
  'Thailand',
  'Togo',
  'Tonga',
  'Tunisia',
  'Turkey',
  'Turkmenistan',
  'Tuvalu',
  'Uganda',
  'Ukraine',
  'UAE',
  'united kingdom',
  'USA',
  'Uruguay',
  'Uzbekistan',
  'Vanuatu',
  'Venezuela',
  'Yemen',
  'Zambia',
  'Zimbabwe'
];
