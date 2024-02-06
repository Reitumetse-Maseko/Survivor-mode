
CREATE TABLE "location" (
	"id"			text PRIMARY KEY ,
	"latitude"		double precision NOT NULL,
	"longitude"		double precision NOT NULL

);

CREATE TABLE "flag" (
	"id"			text PRIMARY KEY,
	"reportno"		numeric,
    "status"       	text
);

CREATE TABLE "survivor" (
	"id"			text PRIMARY KEY,	
	"name"			text NOT NULL UNIQUE,
	"age"			integer,
	"gender"		text,
	"location_id"	text REFERENCES "location"("id"),
	"flag_id"		text REFERENCES "flag"("id") 
);


CREATE TABLE "inventory" (
	"id"			text PRIMARY KEY,
	"water"			boolean NOT NULL,
	"food"			boolean,
	"medication"	boolean,
	"ammunition"	boolean,
	"survivor_id"	text REFERENCES "survivor"("id")
);

CREATE TYPE status AS ENUM ('Land', 'Flying');

CREATE TABLE "robot" (
    "model"             text PRIMARY KEY,
    "serialnumber"      text,
    "manufacturedDate"  date,
    "category"          text
);



-------------------------------------------------------

INSERT INTO "flag" ("id", "reportno", "status")
VALUES
  ('1', 2, 'non-infected'),
  ('2', 4, 'infected'),
  ('3', 7, 'infected'),
  ('4', 1, 'non-infected'),
  ('5', 2, 'non-infected');

INSERT INTO "location" ("id", "latitude", "longitude")
VALUES
  ('1', -25.7461, 28.1881),  -- Pretoria
  ('2', -33.9180, 18.4233),  -- Cape Town
  ('3', -29.8587, 31.0218),  -- Durban
  ('4', -26.2041, 28.0473),  -- Johannesburg
  ('5', -33.9646, 25.6022);  -- Port Elizabeth

INSERT INTO "survivor" ("id", "name", "age", "gender", "location_id", "flag_id")
VALUES
  ('1','John Maputla', 30, 'Male', '1', '5'),
  ('2','Thembi Sibande',25, 'Female', '2', '4'),
  ('3','Ruth Maseko',30, 'Female', '3', '3'),
  ('4','Molefe Carrel',5, 'Male', '4', '2'),
  ('5','Gift Zulu',29, 'Male', '5', '1');
 
INSERT INTO "inventory" ("id", "water", "food", "medication", "ammunition", "survivor_id")
VALUES
  ('inv1', true, false, false, true, '1'),
  ('inv2', false, true, true, false, '2'),
  ('inv3', true, false, false, true, '3'),
  ('inv4', false, true, false, false, '4'),
  ('inv5', false, false, true, true, '5');


INSERT INTO "robot" ("model", "serialNumber", "manufacturedDate", "categoryOption")
VALUES
    ('0J68U', 'HIG5XY8XSZHBTP8', '2024-02-10T08:00:28.69208+00:00', 'Land'),
    ('0ZH0I', 'SK8C9HJLJDA7K4H', '2024-02-21T08:00:28.6920994+00:00', 'Land'),
    ('224ZM', 'ADHO4XRC7TRS31Q', '2024-02-20T08:00:28.6920984+00:00', 'Flying'),
    ('2GFXU', 'F5R1ODQLJT2P68D', '2024-03-07T08:00:28.6921141+00:00', 'Land'),
    ('2K1D8', 'HDKZD7BBGQ5CIOB', '2024-02-28T08:00:28.6921063+00:00', 'Land'),
    ('35TYR', 'RG4KUHBOK2WDQNU', '2024-03-08T08:00:28.6921151+00:00', 'Land'),
    ('3ZETT', 'BG8IXK3T2TIFB33', '2024-02-19T08:00:28.6920974+00:00', 'Land'),
    ('58QG9', 'PVDH084W5ETJSS7', '2024-02-24T08:00:28.6921024+00:00', 'Land'),
    ('76XAD', 'UTR9RX24PQO9PMI', '2024-03-11T08:00:28.6921181+00:00', 'Land'),
    ('7JMOC', 'Q0MAA1YUPHMV0WK', '2024-01-30T08:00:28.6920664+00:00', 'Flying'),
    ('7NSJY', 'I9HBRSMYJSMJY9Y', '2024-02-29T08:00:28.6921072+00:00', 'Flying'),
    ('83MH1', 'OOFI14OYSBNZ83A', '2024-02-16T08:00:28.6920941+00:00', 'Land'),
    ('8DCYW', 'OYM67S2UPMUDOHL', '2024-03-02T08:00:28.6921091+00:00', 'Land'),
    ('8W5WZ', '36DSRQ1W0MJRP1S', '2024-03-15T08:00:28.6921289+00:00', 'Flying'),
    ('AWXQY', 'S16BFFN7NTZ409O', '2024-02-26T08:00:28.6921043+00:00', 'Flying'),
    ('BC142', 'WLR5A1XHCMCDX9D', '2024-02-22T08:00:28.6921004+00:00', 'Land'),
    ('BYC2B', 'UKHJQXR7LK8LV8D', '2024-03-09T08:00:28.6921161+00:00', 'Flying'),
    ('BZ1II', 'YXDT2WK4R7F2QYT', '2024-02-15T08:00:28.6920931+00:00', 'Land'),
    ('C551J', 'YBUXZ8CSN5E1FVA', '2024-03-16T08:00:28.6921299+00:00', 'Land'),
    ('CBX4H', '3LYTW14BY4XFSSX', '2024-02-07T08:00:28.692077+00:00', 'Land'),
    ('CHR3G', 'GJETISKVHGTZOF9', '2024-02-06T08:00:28.692076+00:00', 'Land'),
    ('DNAH0', 'QYZN2YGQ6SL94LR', '2024-03-14T08:00:28.6921279+00:00', 'Land'),
    ('E5S52', 'SZDNQE0KFSPDJ78', '2024-03-18T08:00:28.6921319+00:00', 'Flying'),
    ('FUPCX', 'UNO1Q7NZMBGRC06', '2024-02-27T08:00:28.6921053+00:00', 'Land'),
    ('G0R9J', 'APEJ7F7M4UW9IUH', '2024-03-05T08:00:28.6921121+00:00', 'Land'),
    ('GDZHU', 'KBYEDNQHDXW52F5', '2024-02-25T08:00:28.6921034+00:00', 'Land'),
    ('HS8CC', 'W3JACNFK5682IVQ', '2024-02-02T08:00:28.6920719+00:00', 'Flying'),
    ('IXT45', 'H757YRMPGPOGBN0', '2024-03-03T08:00:28.6921101+00:00', 'Flying'),
    ('JCPR4', '4J14BOYBK44FKWB', '2024-02-04T08:00:28.692074+00:00', 'Land'),
    ('KI8LA', '26G952DR4TPPMC7', '2024-02-18T08:00:28.6920964+00:00', 'Land'),
    ('LVHCY', 'XA8G5RDHWLWXTCB', '2024-02-11T08:00:28.692081+00:00', 'Flying'),
    ('M5P9I', 'STVECNHBTHJBNZN', '2024-03-13T08:00:28.69212+00:00', 'Land'),
    ('MNYPB', '6QJYHV7G4DNQ53I', '2024-02-03T08:00:28.6920729+00:00', 'Land'),
    ('N7QAW', '0QTSM6U5XLRCXNX', '2024-02-09T08:00:28.692079+00:00', 'Land'),
    ('NKECN', 'AMYGVLP3L446I3J', '2024-03-01T08:00:28.6921082+00:00', 'Land'),
    ('OKVBF', 'GUUUQY0ST9P73KO', '2024-03-06T08:00:28.6921131+00:00', 'Flying'),
    ('PP0BI', 'HBDYWH94FF89G77', '2024-02-14T08:00:28.6920921+00:00', 'Flying'),
    ('QW1RS', '6VC36H9F1US5D8T', '2024-03-19T08:00:28.6921328+00:00', 'Land'),
    ('R3JM5', 'QI1YPQVT7JZWP5Q', '2024-02-23T08:00:28.6921014+00:00', 'Flying'),
    ('SO9E4', 'UYAYH2HZJOD6PAQ', '2024-02-17T08:00:28.6920954+00:00', 'Flying'),
    ('T1CS1', 'IIN77F5KOF9PP0O', '2024-01-31T08:00:28.6920698+00:00', 'Land'),
    ('THNWZ', 'IVIEWKBD7YPYY66', '2024-02-12T08:00:28.692082+00:00', 'Land'),
    ('U89QU', 'CC1UBTV43H9G498', '2024-02-08T08:00:28.692078+00:00', 'Flying'),
    ('UHHZ1', 'G5Q6OVNAN62N4P9', '2024-02-13T08:00:28.6920911+00:00', 'Land'),
    ('V846K', '55ZR6IPB07NRJ6L', '2024-02-01T08:00:28.6920709+00:00', 'Land'),
    ('VYLJY', '2WJ6SK24V80PT40', '2024-03-04T08:00:28.6921112+00:00', 'Land'),
    ('W1W4L', 'IO3FGCRPU96194Q', '2024-03-17T08:00:28.6921309+00:00', 'Land'),
    ('X4KL0', 'RFQ11GEECY039PZ', '2024-03-12T08:00:28.6921191+00:00', 'Flying'),
    ('XZXQ3', '6P680FLQUT1GQ5P', '2024-03-10T08:00:28.6921171+00:00', 'Land'),
    ('ZMAM4', '1HEA3VMN1IDLJ8G', '2024-02-05T08:00:28.692075+00:00', 'Flying');
----






