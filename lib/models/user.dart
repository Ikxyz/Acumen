import "dart:convert";

class UserModel {
  String firstName;
  String lastName;
  String email;
  String tel;
  String uid;
  String city;
  String state;
  String country;
  String countryCode;
  String profileImg;
  String coverImg;
  bool isAdmin;
  bool isVendor;
  bool isEnabled;
  bool isBanned;
  bool canLiveStream;
  String lastModified;

  get getName => firstName + " " + lastName;
  get getFirstName => firstName;

  set setFirstName(firstName) => this.firstName = firstName;

  get getLastName => lastName;

  set setLastName(lastName) => this.lastName = lastName;

  get getEmail => email;

  set setEmail(String email) => this.email = email;

  get getTel => tel;

  set setTel(tel) => this.tel = tel;

  get getUid => uid;

  set setUid(uid) => this.uid = uid;

  get getCity => city;

  set setCity(city) => this.city = city;

  get getState => state;

  set setState(state) => this.state = state;

  get getCountry => country;

  set setCountry(country) => this.country = country;

  get getCountryCode => countryCode;

  set setCountryCode(countryCode) => this.countryCode = countryCode;

  get getProfileImg => profileImg;

  set setProfileImg(profileImg) => this.profileImg = profileImg;

  get getCoverImg => coverImg;

  set setCoverImg(coverImg) => this.coverImg = coverImg;

  get getIsAdmin => isAdmin;

  set setIsAdmin(isAdmin) => this.isAdmin = isAdmin;

  get getIsVendor => isVendor;

  set setIsVendor(isVendor) => this.isVendor = isVendor;

  get getIsEnabled => isEnabled;

  set setIsEnabled(isEnabled) => this.isEnabled = isEnabled;

  get getIsBanned => isBanned;

  set setIsBanned(isBanned) => this.isBanned = isBanned;

  get getCanLiveStream => canLiveStream;

  set setCanLiveStream(canLiveStream) => this.canLiveStream = canLiveStream;

  get getLastModified => lastModified;

  set setLastModified(lastModified) => this.lastModified = lastModified;
  UserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.tel,
    required this.uid,
    required this.city,
    required this.state,
    required this.country,
    required this.countryCode,
    required this.profileImg,
    required this.coverImg,
    required this.isAdmin,
    required this.isVendor,
    required this.isEnabled,
    required this.isBanned,
    required this.canLiveStream,
    required this.lastModified,
  });

  UserModel copyWith({
    String? firstName,
    String? lastName,
    String? email,
    String? tel,
    String? uid,
    String? city,
    String? state,
    String? country,
    String? countryCode,
    String? profileImg,
    String? coverImg,
    bool? isAdmin,
    bool? isVendor,
    bool? isEnabled,
    bool? isBanned,
    bool? canLiveStream,
    String? lastModified,
  }) {
    return UserModel(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      tel: tel ?? this.tel,
      uid: uid ?? this.uid,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      countryCode: countryCode ?? this.countryCode,
      profileImg: profileImg ?? this.profileImg,
      coverImg: coverImg ?? this.coverImg,
      isAdmin: isAdmin ?? this.isAdmin,
      isVendor: isVendor ?? this.isVendor,
      isEnabled: isEnabled ?? this.isEnabled,
      isBanned: isBanned ?? this.isBanned,
      canLiveStream: canLiveStream ?? this.canLiveStream,
      lastModified: lastModified ?? this.lastModified,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "tel": tel,
      "uid": uid,
      "city": city,
      "state": state,
      "country": country,
      "countryCode": countryCode,
      "profileImg": profileImg,
      "coverImg": coverImg,
      "isAdmin": isAdmin,
      "isVendor": isVendor,
      "isEnabled": isEnabled,
      "isBanned": isBanned,
      "canLiveStream": canLiveStream,
      "lastModified": lastModified,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      firstName: map["firstName"],
      lastName: map["lastName"],
      email: map["email"],
      tel: map["tel"],
      uid: map["uid"],
      city: map["city"],
      state: map["state"],
      country: map["country"],
      countryCode: map["countryCode"],
      profileImg: map["profileImg"],
      coverImg: map["coverImg"],
      isAdmin: map["isAdmin"],
      isVendor: map["isVendor"],
      isEnabled: map["isEnabled"],
      isBanned: map["isBanned"],
      canLiveStream: map["canLiveStream"],
      lastModified: map["lastModified"],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return "UserModel(firstName: $firstName, lastName: $lastName, email: $email, tel: $tel, uid: $uid, city: $city, state: $state, country: $country, countryCode: $countryCode, profileImg: $profileImg, coverImg: $coverImg, isAdmin: $isAdmin, isVendor: $isVendor, isEnabled: $isEnabled, isBanned: $isBanned, canLiveStream: $canLiveStream, lastModified: $lastModified)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.email == email &&
        other.tel == tel &&
        other.uid == uid &&
        other.city == city &&
        other.state == state &&
        other.country == country &&
        other.countryCode == countryCode &&
        other.profileImg == profileImg &&
        other.coverImg == coverImg &&
        other.isAdmin == isAdmin &&
        other.isVendor == isVendor &&
        other.isEnabled == isEnabled &&
        other.isBanned == isBanned &&
        other.canLiveStream == canLiveStream &&
        other.lastModified == lastModified;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
        lastName.hashCode ^
        email.hashCode ^
        tel.hashCode ^
        uid.hashCode ^
        city.hashCode ^
        state.hashCode ^
        country.hashCode ^
        countryCode.hashCode ^
        profileImg.hashCode ^
        coverImg.hashCode ^
        isAdmin.hashCode ^
        isVendor.hashCode ^
        isEnabled.hashCode ^
        isBanned.hashCode ^
        canLiveStream.hashCode ^
        lastModified.hashCode;
  }
}
