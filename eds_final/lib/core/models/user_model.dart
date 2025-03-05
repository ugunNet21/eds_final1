class Data {
    String? iduser;
    String? userName;
    String? userEmail;
    String? userFoto;
    String? userAsalSekolah;
    String? kelas;
    DateTime? dateCreate;
    String? userGender;
    String? userStatus;

    Data({
        this.iduser,
        this.userName,
        this.userEmail,
        this.userFoto,
        this.userAsalSekolah,
        this.kelas,
        this.dateCreate,
        this.userGender,
        this.userStatus,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        iduser: json["iduser"],
        userName: json["user_name"],
        userEmail: json["user_email"],
        userFoto: json["user_foto"],
        userAsalSekolah: json["user_asal_sekolah"],
        kelas: json["kelas"],
        dateCreate: json["date_create"] == null ? null : DateTime.parse(json["date_create"]),
        userGender: json["user_gender"],
        userStatus: json["user_status"],
    );

    Map<String, dynamic> toJson() => {
        "iduser": iduser,
        "user_name": userName,
        "user_email": userEmail,
        "user_foto": userFoto,
        "user_asal_sekolah": userAsalSekolah,
        "kelas": kelas,
        "date_create": dateCreate?.toIso8601String(),
        "user_gender": userGender,
        "user_status": userStatus,
    };
}
