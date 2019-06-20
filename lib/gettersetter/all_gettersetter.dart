class JOURNEY_PLAN_SUP {
  final int STORE_CD;
  final int EMP_CD;
  final String Visit_Date;
  final String KEYACCOUNT;
  final String Store_Name;
  final String City;
  final String STORETYPE;
  final String UPLOAD_STATUS;
  final String CHECKOUT_STATUS;
  final String LATTITUDE;
  final String LONGITUDE;
  final String GEO_TAG;
  final int CHANNEL_CD;
  final String CHANNEL;

  JOURNEY_PLAN_SUP({
    this.STORE_CD,
    this.EMP_CD,
    this.Visit_Date,
    this.KEYACCOUNT,
    this.Store_Name,
    this.City,
    this.STORETYPE,
    this.UPLOAD_STATUS,
    this.CHECKOUT_STATUS,
    this.LATTITUDE,
    this.LONGITUDE,
    this.GEO_TAG,
    this.CHANNEL_CD,
    this.CHANNEL,
  });

  factory JOURNEY_PLAN_SUP.fromJson(Map<String, dynamic> json) {
    return JOURNEY_PLAN_SUP(
      STORE_CD: json['STORE_CD'] as int,
      EMP_CD: json['EMP_CD'] as int,
      Visit_Date: json['Visit_Date'] as String,
      KEYACCOUNT: json['KEYACCOUNT'] as String,
      Store_Name: json['Store_Name'] as String,
      City: json['City'] as String,
      STORETYPE: json['STORETYPE'] as String,
      UPLOAD_STATUS: json['UPLOAD_STATUS'] as String,
      CHECKOUT_STATUS: json['CHECKOUT_STATUS'] as String,
      LATTITUDE: json['LATTITUDE'] as String,
      LONGITUDE: json['LONGITUDE'] as String,
      GEO_TAG: json['GEO_TAG'] as String,
      CHANNEL_CD: json['CHANNEL_CD'] as int,
      CHANNEL: json['CHANNEL'] as String,
    );
  }
}

class NonWorkingReasonGetterSetter{

  int _REASON_CD;
  String _REASON;
  int _ENTRY_ALLOW, _IMAGE_ALLOW;

  int get REASON_CD => _REASON_CD;

  NonWorkingReasonGetterSetter(this._REASON_CD, this._REASON, this._ENTRY_ALLOW,
      this._IMAGE_ALLOW);

  String get REASON => _REASON;

  int get ENTRY_ALLOW => _ENTRY_ALLOW;

  get IMAGE_ALLOW => _IMAGE_ALLOW;

}

class JCPGetterSetter {

   int _Store_Id;
  
   String _Visit_Date;
  
   String _Distributor;
 
   String _Store_Name;

   String _City;

   String _Store_Type;
   
  String _Address1;

  String _Address2;

  String _Landmark;

  String _Pincode;

  String _Contact_Person;

  String _Contact_No;

  String _Store_Category;

  int _State_Id;

  int _Store_Type_Id;

  int _Store_Category_Id;

  int _Reason_Id;

  int _Distributor_Id;

  int _Classification_Id;
  
  int _GeoFencing;

  String _Store_Code;

  String _Classification;

  String _Last_Visit_date;

  String _Weekly_Upload;
  
  String _Upload_Status;
  
  String _Latitude;
  
   String _Longitude;
 
  String _Geo_Tag;
  

  JCPGetterSetter(this._Store_Id,this._Visit_Date,this._Distributor,this._Store_Name,this._City,this._Store_Type,
this._Address1,this._Address2,this._Landmark,this._Contact_Person,this._Contact_No,this._Store_Category,this._State_Id,
this._Store_Type_Id,this._Reason_Id,this._Distributor_Id,this._Classification_Id,this._GeoFencing,this._Store_Code,
this._Classification,this._Last_Visit_date,this._Weekly_Upload,this._Upload_Status,this._Latitude,this._Longitude,this._Geo_Tag);

  int get Store_Id => _Store_Id;

  set Store_Id(int value) {
    _Store_Id = value;
  }

  String get Distributor => _Distributor;

  set Distributor(String value) {
    _Distributor = value;
  }

  String get Store_Type => _Store_Type;

  set Store_Type(String value) {
    _Store_Type = value;
  }

  int get GeoFencing => _GeoFencing;

  set GeoFencing(int value) {
    _GeoFencing = value;
  }

  String get LONGITUDE => _Longitude;

  set LONGITUDE(String value) {
    _Longitude = value;
  }

  String get LATTITUDE => _Latitude;

  set LATTITUDE(String value) {
    _Latitude = value;
  }

  String get Address1 => _Address1;

  set Address1(String value) {
    _Address1 = value;
  }

  String get Upload_Status => _Upload_Status;

  set Upload_Status(String value) {
    _Upload_Status = value;
  }


  String get City => _City;

  set City(String value) {
    _City = value;
  }

  String get Store_Name => _Store_Name;

  set Store_Name(String value) {
    _Store_Name = value;
  }

  String get Address2 => _Address2;

  set Address2(String value) {
    _Address2 = value;
  }

  String get Visit_Date => _Visit_Date;

  set Visit_Date(String value) {
    _Visit_Date = value;
  }

  String get Landmark => _Landmark;

  set Landmark(String value) {
    _Landmark = value;
  }

   String get Pincode => _Pincode;

   set Pincode(String value) {
     _Pincode = value;
   }

   String get Contact_Person => _Contact_Person;

   set Contact_Person(String value) {
     _Contact_Person = value;
   }

   String get Contact_No => _Contact_No;

   set Contact_No(String value) {
     _Contact_No = value;
   }

   String get Store_Category => _Store_Category;

   set Store_Category(String value) {
     _Store_Category = value;
   }

   int get State_Id => _State_Id;

   set State_Id(int value) {
     _State_Id = value;
   }

   int get Store_Type_Id => _Store_Type_Id;

   set Store_Type_Id(int value) {
     _Store_Type_Id = value;
   }

   int get Store_Category_Id => _Store_Category_Id;

   set Store_Category_Id(int value) {
     _Store_Category_Id = value;
   }

   int get Reason_Id => _Reason_Id;

   set Reason_Id(int value) {
     _Reason_Id = value;
   }

   int get Distributor_Id => _Distributor_Id;

   set Distributor_Id(int value) {
     _Distributor_Id = value;
   }

   int get Classification_Id => _Classification_Id;

   set Classification_Id(int value) {
     _Classification_Id = value;
   }

   String get Store_Code => _Store_Code;

   set Store_Code(String value) {
     _Store_Code = value;
   }

   String get Classification => _Classification;

   set Classification(String value) {
     _Classification = value;
   }

   String get Last_Visit_date => _Last_Visit_date;

   set Last_Visit_date(String value) {
     _Last_Visit_date = value;
   }

   String get Weekly_Upload => _Weekly_Upload;

   set Weekly_Upload(String value) {
     _Weekly_Upload = value;
   }

   String get Geo_Tag => _Geo_Tag;

   set Geo_Tag(String value) {
     _Geo_Tag = value;
   }

}


class CoverageGettersetter{

  String KEYStore_Id = "STORE_CD", KEY_STORE_IMG_IN = "STORE_IMG_IN",
      KEY_STORE_IMG_OUT = "STORE_IMG_OUT", KEY_Visit_Date = "Visit_Date", KEY_FROM_DEVIATION = "FROM_DEVIATION";
  int Store_Id, _FROM_DEVIATION;
  String _STORE_IMG_IN, _STORE_IMG_OUT, _Visit_Date;

  CoverageGettersetter(this.Store_Id, this._STORE_IMG_IN, this._STORE_IMG_OUT, this._Visit_Date, this._FROM_DEVIATION);

  int get STORE_CD => Store_Id;
  int get FROM_DEVIATION => _FROM_DEVIATION;

  get STORE_IMG_OUT => _STORE_IMG_OUT;

  String get STORE_IMG_IN => _STORE_IMG_IN;
  String get Visit_Date => _Visit_Date;

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      KEYStore_Id: Store_Id,
      KEY_FROM_DEVIATION: _FROM_DEVIATION,
      KEY_STORE_IMG_IN: _STORE_IMG_IN,
      KEY_STORE_IMG_OUT: _STORE_IMG_OUT,
      KEY_Visit_Date: _Visit_Date
    };
  /*  if (id != null) {
      map[columnId] = id;
    }*/
    return map;
  }

}

class ImageGettersetter{

  String _img_path;

  ImageGettersetter(this._img_path);

  String get img_path => _img_path;
}