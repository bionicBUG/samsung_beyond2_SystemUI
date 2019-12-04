.class public Lcom/android/settingslib/bluetooth/BluetoothUtils;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;,
        Lcom/android/settingslib/bluetooth/BluetoothUtils$SemErrorListener;
    }
.end annotation


# static fields
.field private static BD_ROTATE_LEFT:[Ljava/lang/String;

.field private static BD_ROTATE_RIGHT:[Ljava/lang/String;

.field public static final DEBUG:Z

.field private static mQuickPannelOn:Z

.field private static sErrorListener:Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 59
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    const/16 v0, 0x100

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "00"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "02"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v6, "04"

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const-string v8, "06"

    const/4 v9, 0x3

    aput-object v8, v1, v9

    const-string v10, "08"

    const/4 v11, 0x4

    aput-object v10, v1, v11

    const-string v12, "0A"

    const/4 v13, 0x5

    aput-object v12, v1, v13

    const-string v14, "0C"

    const/4 v15, 0x6

    aput-object v14, v1, v15

    const/16 v16, 0x7

    const-string v17, "0E"

    aput-object v17, v1, v16

    const/16 v16, 0x8

    const-string v17, "10"

    aput-object v17, v1, v16

    const/16 v16, 0x9

    const-string v17, "12"

    aput-object v17, v1, v16

    const/16 v16, 0xa

    const-string v17, "14"

    aput-object v17, v1, v16

    const/16 v16, 0xb

    const-string v17, "16"

    aput-object v17, v1, v16

    const/16 v16, 0xc

    const-string v17, "18"

    aput-object v17, v1, v16

    const/16 v16, 0xd

    const-string v17, "1A"

    aput-object v17, v1, v16

    const/16 v16, 0xe

    const-string v17, "1C"

    aput-object v17, v1, v16

    const/16 v16, 0xf

    const-string v17, "1E"

    aput-object v17, v1, v16

    const/16 v16, 0x10

    const-string v17, "20"

    aput-object v17, v1, v16

    const/16 v16, 0x11

    const-string v17, "22"

    aput-object v17, v1, v16

    const/16 v16, 0x12

    const-string v17, "24"

    aput-object v17, v1, v16

    const/16 v16, 0x13

    const-string v17, "26"

    aput-object v17, v1, v16

    const/16 v16, 0x14

    const-string v17, "28"

    aput-object v17, v1, v16

    const/16 v16, 0x15

    const-string v17, "2A"

    aput-object v17, v1, v16

    const/16 v16, 0x16

    const-string v17, "2C"

    aput-object v17, v1, v16

    const/16 v16, 0x17

    const-string v17, "2E"

    aput-object v17, v1, v16

    const/16 v16, 0x18

    const-string v17, "30"

    aput-object v17, v1, v16

    const/16 v16, 0x19

    const-string v17, "32"

    aput-object v17, v1, v16

    const/16 v16, 0x1a

    const-string v17, "34"

    aput-object v17, v1, v16

    const/16 v16, 0x1b

    const-string v17, "36"

    aput-object v17, v1, v16

    const/16 v16, 0x1c

    const-string v17, "38"

    aput-object v17, v1, v16

    const/16 v16, 0x1d

    const-string v17, "3A"

    aput-object v17, v1, v16

    const/16 v16, 0x1e

    const-string v17, "3C"

    aput-object v17, v1, v16

    const/16 v16, 0x1f

    const-string v17, "3E"

    aput-object v17, v1, v16

    const/16 v16, 0x20

    const-string v17, "40"

    aput-object v17, v1, v16

    const/16 v16, 0x21

    const-string v17, "42"

    aput-object v17, v1, v16

    const/16 v16, 0x22

    const-string v17, "44"

    aput-object v17, v1, v16

    const/16 v16, 0x23

    const-string v17, "46"

    aput-object v17, v1, v16

    const/16 v16, 0x24

    const-string v17, "48"

    aput-object v17, v1, v16

    const/16 v16, 0x25

    const-string v17, "4A"

    aput-object v17, v1, v16

    const/16 v16, 0x26

    const-string v17, "4C"

    aput-object v17, v1, v16

    const/16 v16, 0x27

    const-string v17, "4E"

    aput-object v17, v1, v16

    const/16 v16, 0x28

    const-string v17, "50"

    aput-object v17, v1, v16

    const/16 v16, 0x29

    const-string v17, "52"

    aput-object v17, v1, v16

    const/16 v16, 0x2a

    const-string v17, "54"

    aput-object v17, v1, v16

    const/16 v16, 0x2b

    const-string v17, "56"

    aput-object v17, v1, v16

    const/16 v16, 0x2c

    const-string v17, "58"

    aput-object v17, v1, v16

    const/16 v16, 0x2d

    const-string v17, "5A"

    aput-object v17, v1, v16

    const/16 v16, 0x2e

    const-string v17, "5C"

    aput-object v17, v1, v16

    const/16 v16, 0x2f

    const-string v17, "5E"

    aput-object v17, v1, v16

    const/16 v16, 0x30

    const-string v17, "60"

    aput-object v17, v1, v16

    const/16 v16, 0x31

    const-string v17, "62"

    aput-object v17, v1, v16

    const/16 v16, 0x32

    const-string v17, "64"

    aput-object v17, v1, v16

    const/16 v16, 0x33

    const-string v17, "66"

    aput-object v17, v1, v16

    const/16 v16, 0x34

    const-string v17, "68"

    aput-object v17, v1, v16

    const/16 v16, 0x35

    const-string v17, "6A"

    aput-object v17, v1, v16

    const/16 v16, 0x36

    const-string v17, "6C"

    aput-object v17, v1, v16

    const/16 v16, 0x37

    const-string v17, "6E"

    aput-object v17, v1, v16

    const/16 v16, 0x38

    const-string v17, "70"

    aput-object v17, v1, v16

    const/16 v16, 0x39

    const-string v17, "72"

    aput-object v17, v1, v16

    const/16 v16, 0x3a

    const-string v17, "74"

    aput-object v17, v1, v16

    const/16 v16, 0x3b

    const-string v17, "76"

    aput-object v17, v1, v16

    const/16 v16, 0x3c

    const-string v17, "78"

    aput-object v17, v1, v16

    const/16 v16, 0x3d

    const-string v17, "7A"

    aput-object v17, v1, v16

    const/16 v16, 0x3e

    const-string v17, "7C"

    aput-object v17, v1, v16

    const/16 v16, 0x3f

    const-string v17, "7E"

    aput-object v17, v1, v16

    const/16 v16, 0x40

    const-string v17, "80"

    aput-object v17, v1, v16

    const/16 v16, 0x41

    const-string v17, "82"

    aput-object v17, v1, v16

    const/16 v16, 0x42

    const-string v17, "84"

    aput-object v17, v1, v16

    const/16 v16, 0x43

    const-string v17, "86"

    aput-object v17, v1, v16

    const/16 v16, 0x44

    const-string v17, "88"

    aput-object v17, v1, v16

    const/16 v16, 0x45

    const-string v17, "8A"

    aput-object v17, v1, v16

    const/16 v16, 0x46

    const-string v17, "8C"

    aput-object v17, v1, v16

    const/16 v16, 0x47

    const-string v17, "8E"

    aput-object v17, v1, v16

    const/16 v16, 0x48

    const-string v17, "90"

    aput-object v17, v1, v16

    const/16 v16, 0x49

    const-string v17, "92"

    aput-object v17, v1, v16

    const/16 v16, 0x4a

    const-string v17, "94"

    aput-object v17, v1, v16

    const/16 v16, 0x4b

    const-string v17, "96"

    aput-object v17, v1, v16

    const/16 v16, 0x4c

    const-string v17, "98"

    aput-object v17, v1, v16

    const/16 v16, 0x4d

    const-string v17, "9A"

    aput-object v17, v1, v16

    const/16 v16, 0x4e

    const-string v17, "9C"

    aput-object v17, v1, v16

    const/16 v16, 0x4f

    const-string v17, "9E"

    aput-object v17, v1, v16

    const/16 v16, 0x50

    const-string v17, "A0"

    aput-object v17, v1, v16

    const/16 v16, 0x51

    const-string v17, "A2"

    aput-object v17, v1, v16

    const/16 v16, 0x52

    const-string v17, "A4"

    aput-object v17, v1, v16

    const/16 v16, 0x53

    const-string v17, "A6"

    aput-object v17, v1, v16

    const/16 v16, 0x54

    const-string v17, "A8"

    aput-object v17, v1, v16

    const/16 v16, 0x55

    const-string v17, "AA"

    aput-object v17, v1, v16

    const/16 v16, 0x56

    const-string v17, "AC"

    aput-object v17, v1, v16

    const/16 v16, 0x57

    const-string v17, "AE"

    aput-object v17, v1, v16

    const/16 v16, 0x58

    const-string v17, "B0"

    aput-object v17, v1, v16

    const/16 v16, 0x59

    const-string v17, "B2"

    aput-object v17, v1, v16

    const/16 v16, 0x5a

    const-string v17, "B4"

    aput-object v17, v1, v16

    const/16 v16, 0x5b

    const-string v17, "B6"

    aput-object v17, v1, v16

    const/16 v16, 0x5c

    const-string v17, "B8"

    aput-object v17, v1, v16

    const/16 v16, 0x5d

    const-string v17, "BA"

    aput-object v17, v1, v16

    const/16 v16, 0x5e

    const-string v17, "BC"

    aput-object v17, v1, v16

    const/16 v16, 0x5f

    const-string v17, "BE"

    aput-object v17, v1, v16

    const/16 v16, 0x60

    const-string v17, "C0"

    aput-object v17, v1, v16

    const/16 v16, 0x61

    const-string v17, "C2"

    aput-object v17, v1, v16

    const/16 v16, 0x62

    const-string v17, "C4"

    aput-object v17, v1, v16

    const/16 v16, 0x63

    const-string v17, "C6"

    aput-object v17, v1, v16

    const/16 v16, 0x64

    const-string v17, "C8"

    aput-object v17, v1, v16

    const/16 v16, 0x65

    const-string v17, "CA"

    aput-object v17, v1, v16

    const/16 v16, 0x66

    const-string v17, "CC"

    aput-object v17, v1, v16

    const/16 v16, 0x67

    const-string v17, "CE"

    aput-object v17, v1, v16

    const/16 v16, 0x68

    const-string v17, "D0"

    aput-object v17, v1, v16

    const/16 v16, 0x69

    const-string v17, "D2"

    aput-object v17, v1, v16

    const/16 v16, 0x6a

    const-string v17, "D4"

    aput-object v17, v1, v16

    const/16 v16, 0x6b

    const-string v17, "D6"

    aput-object v17, v1, v16

    const/16 v16, 0x6c

    const-string v17, "D8"

    aput-object v17, v1, v16

    const/16 v16, 0x6d

    const-string v17, "DA"

    aput-object v17, v1, v16

    const/16 v16, 0x6e

    const-string v17, "DC"

    aput-object v17, v1, v16

    const/16 v16, 0x6f

    const-string v17, "DE"

    aput-object v17, v1, v16

    const/16 v16, 0x70

    const-string v17, "E0"

    aput-object v17, v1, v16

    const/16 v16, 0x71

    const-string v17, "E2"

    aput-object v17, v1, v16

    const/16 v16, 0x72

    const-string v17, "E4"

    aput-object v17, v1, v16

    const/16 v16, 0x73

    const-string v17, "E6"

    aput-object v17, v1, v16

    const/16 v16, 0x74

    const-string v17, "E8"

    aput-object v17, v1, v16

    const/16 v16, 0x75

    const-string v17, "EA"

    aput-object v17, v1, v16

    const/16 v16, 0x76

    const-string v17, "EC"

    aput-object v17, v1, v16

    const/16 v16, 0x77

    const-string v17, "EE"

    aput-object v17, v1, v16

    const/16 v16, 0x78

    const-string v17, "F0"

    aput-object v17, v1, v16

    const/16 v16, 0x79

    const-string v17, "F2"

    aput-object v17, v1, v16

    const/16 v16, 0x7a

    const-string v17, "F4"

    aput-object v17, v1, v16

    const/16 v16, 0x7b

    const-string v17, "F6"

    aput-object v17, v1, v16

    const/16 v16, 0x7c

    const-string v17, "F8"

    aput-object v17, v1, v16

    const/16 v16, 0x7d

    const-string v17, "FA"

    aput-object v17, v1, v16

    const/16 v16, 0x7e

    const-string v17, "FC"

    aput-object v17, v1, v16

    const/16 v16, 0x7f

    const-string v17, "FE"

    aput-object v17, v1, v16

    const/16 v16, 0x80

    const-string v17, "01"

    aput-object v17, v1, v16

    const/16 v16, 0x81

    const-string v17, "03"

    aput-object v17, v1, v16

    const/16 v16, 0x82

    const-string v17, "05"

    aput-object v17, v1, v16

    const/16 v16, 0x83

    const-string v17, "07"

    aput-object v17, v1, v16

    const/16 v16, 0x84

    const-string v17, "09"

    aput-object v17, v1, v16

    const/16 v16, 0x85

    const-string v17, "0B"

    aput-object v17, v1, v16

    const/16 v16, 0x86

    const-string v17, "0D"

    aput-object v17, v1, v16

    const/16 v16, 0x87

    const-string v17, "0F"

    aput-object v17, v1, v16

    const/16 v16, 0x88

    const-string v17, "11"

    aput-object v17, v1, v16

    const/16 v16, 0x89

    const-string v17, "13"

    aput-object v17, v1, v16

    const/16 v16, 0x8a

    const-string v17, "15"

    aput-object v17, v1, v16

    const/16 v16, 0x8b

    const-string v17, "17"

    aput-object v17, v1, v16

    const/16 v16, 0x8c

    const-string v17, "19"

    aput-object v17, v1, v16

    const/16 v16, 0x8d

    const-string v17, "1B"

    aput-object v17, v1, v16

    const/16 v16, 0x8e

    const-string v17, "1D"

    aput-object v17, v1, v16

    const/16 v16, 0x8f

    const-string v17, "1F"

    aput-object v17, v1, v16

    const/16 v16, 0x90

    const-string v17, "21"

    aput-object v17, v1, v16

    const/16 v16, 0x91

    const-string v17, "23"

    aput-object v17, v1, v16

    const/16 v16, 0x92

    const-string v17, "25"

    aput-object v17, v1, v16

    const/16 v16, 0x93

    const-string v17, "27"

    aput-object v17, v1, v16

    const/16 v16, 0x94

    const-string v17, "29"

    aput-object v17, v1, v16

    const/16 v16, 0x95

    const-string v17, "2B"

    aput-object v17, v1, v16

    const/16 v16, 0x96

    const-string v17, "2D"

    aput-object v17, v1, v16

    const/16 v16, 0x97

    const-string v17, "2F"

    aput-object v17, v1, v16

    const/16 v16, 0x98

    const-string v17, "31"

    aput-object v17, v1, v16

    const/16 v16, 0x99

    const-string v17, "33"

    aput-object v17, v1, v16

    const/16 v16, 0x9a

    const-string v17, "35"

    aput-object v17, v1, v16

    const/16 v16, 0x9b

    const-string v17, "37"

    aput-object v17, v1, v16

    const/16 v16, 0x9c

    const-string v17, "39"

    aput-object v17, v1, v16

    const/16 v16, 0x9d

    const-string v17, "3B"

    aput-object v17, v1, v16

    const/16 v16, 0x9e

    const-string v17, "3D"

    aput-object v17, v1, v16

    const/16 v16, 0x9f

    const-string v17, "3F"

    aput-object v17, v1, v16

    const/16 v16, 0xa0

    const-string v17, "41"

    aput-object v17, v1, v16

    const/16 v16, 0xa1

    const-string v17, "43"

    aput-object v17, v1, v16

    const/16 v16, 0xa2

    const-string v17, "45"

    aput-object v17, v1, v16

    const/16 v16, 0xa3

    const-string v17, "47"

    aput-object v17, v1, v16

    const/16 v16, 0xa4

    const-string v17, "49"

    aput-object v17, v1, v16

    const/16 v16, 0xa5

    const-string v17, "4B"

    aput-object v17, v1, v16

    const/16 v16, 0xa6

    const-string v17, "4D"

    aput-object v17, v1, v16

    const/16 v16, 0xa7

    const-string v17, "4F"

    aput-object v17, v1, v16

    const/16 v16, 0xa8

    const-string v17, "51"

    aput-object v17, v1, v16

    const/16 v16, 0xa9

    const-string v17, "53"

    aput-object v17, v1, v16

    const/16 v16, 0xaa

    const-string v17, "55"

    aput-object v17, v1, v16

    const/16 v16, 0xab

    const-string v17, "57"

    aput-object v17, v1, v16

    const/16 v16, 0xac

    const-string v17, "59"

    aput-object v17, v1, v16

    const/16 v16, 0xad

    const-string v17, "5B"

    aput-object v17, v1, v16

    const/16 v16, 0xae

    const-string v17, "5D"

    aput-object v17, v1, v16

    const/16 v16, 0xaf

    const-string v17, "5F"

    aput-object v17, v1, v16

    const/16 v16, 0xb0

    const-string v17, "61"

    aput-object v17, v1, v16

    const/16 v16, 0xb1

    const-string v17, "63"

    aput-object v17, v1, v16

    const/16 v16, 0xb2

    const-string v17, "65"

    aput-object v17, v1, v16

    const/16 v16, 0xb3

    const-string v17, "67"

    aput-object v17, v1, v16

    const/16 v16, 0xb4

    const-string v17, "69"

    aput-object v17, v1, v16

    const/16 v16, 0xb5

    const-string v17, "6B"

    aput-object v17, v1, v16

    const/16 v16, 0xb6

    const-string v17, "6D"

    aput-object v17, v1, v16

    const/16 v16, 0xb7

    const-string v17, "6F"

    aput-object v17, v1, v16

    const/16 v16, 0xb8

    const-string v17, "71"

    aput-object v17, v1, v16

    const/16 v16, 0xb9

    const-string v17, "73"

    aput-object v17, v1, v16

    const/16 v16, 0xba

    const-string v17, "75"

    aput-object v17, v1, v16

    const/16 v16, 0xbb

    const-string v17, "77"

    aput-object v17, v1, v16

    const/16 v16, 0xbc

    const-string v17, "79"

    aput-object v17, v1, v16

    const/16 v16, 0xbd

    const-string v17, "7B"

    aput-object v17, v1, v16

    const/16 v16, 0xbe

    const-string v17, "7D"

    aput-object v17, v1, v16

    const/16 v16, 0xbf

    const-string v17, "7F"

    aput-object v17, v1, v16

    const/16 v16, 0xc0

    const-string v17, "81"

    aput-object v17, v1, v16

    const/16 v16, 0xc1

    const-string v17, "83"

    aput-object v17, v1, v16

    const/16 v16, 0xc2

    const-string v17, "85"

    aput-object v17, v1, v16

    const/16 v16, 0xc3

    const-string v17, "87"

    aput-object v17, v1, v16

    const/16 v16, 0xc4

    const-string v17, "89"

    aput-object v17, v1, v16

    const/16 v16, 0xc5

    const-string v17, "8B"

    aput-object v17, v1, v16

    const/16 v16, 0xc6

    const-string v17, "8D"

    aput-object v17, v1, v16

    const/16 v16, 0xc7

    const-string v17, "8F"

    aput-object v17, v1, v16

    const/16 v16, 0xc8

    const-string v17, "91"

    aput-object v17, v1, v16

    const/16 v16, 0xc9

    const-string v17, "93"

    aput-object v17, v1, v16

    const/16 v16, 0xca

    const-string v17, "95"

    aput-object v17, v1, v16

    const/16 v16, 0xcb

    const-string v17, "97"

    aput-object v17, v1, v16

    const/16 v16, 0xcc

    const-string v17, "99"

    aput-object v17, v1, v16

    const/16 v16, 0xcd

    const-string v17, "9B"

    aput-object v17, v1, v16

    const/16 v16, 0xce

    const-string v17, "9D"

    aput-object v17, v1, v16

    const/16 v16, 0xcf

    const-string v17, "9F"

    aput-object v17, v1, v16

    const/16 v16, 0xd0

    const-string v17, "A1"

    aput-object v17, v1, v16

    const/16 v16, 0xd1

    const-string v17, "A3"

    aput-object v17, v1, v16

    const/16 v16, 0xd2

    const-string v17, "A5"

    aput-object v17, v1, v16

    const/16 v16, 0xd3

    const-string v17, "A7"

    aput-object v17, v1, v16

    const/16 v16, 0xd4

    const-string v17, "A9"

    aput-object v17, v1, v16

    const/16 v16, 0xd5

    const-string v17, "AB"

    aput-object v17, v1, v16

    const/16 v16, 0xd6

    const-string v17, "AD"

    aput-object v17, v1, v16

    const/16 v16, 0xd7

    const-string v17, "AF"

    aput-object v17, v1, v16

    const/16 v16, 0xd8

    const-string v17, "B1"

    aput-object v17, v1, v16

    const/16 v16, 0xd9

    const-string v17, "B3"

    aput-object v17, v1, v16

    const/16 v16, 0xda

    const-string v17, "B5"

    aput-object v17, v1, v16

    const/16 v16, 0xdb

    const-string v17, "B7"

    aput-object v17, v1, v16

    const/16 v16, 0xdc

    const-string v17, "B9"

    aput-object v17, v1, v16

    const/16 v16, 0xdd

    const-string v17, "BB"

    aput-object v17, v1, v16

    const/16 v16, 0xde

    const-string v17, "BD"

    aput-object v17, v1, v16

    const/16 v16, 0xdf

    const-string v17, "BF"

    aput-object v17, v1, v16

    const/16 v16, 0xe0

    const-string v17, "C1"

    aput-object v17, v1, v16

    const/16 v16, 0xe1

    const-string v17, "C3"

    aput-object v17, v1, v16

    const/16 v16, 0xe2

    const-string v17, "C5"

    aput-object v17, v1, v16

    const/16 v16, 0xe3

    const-string v17, "C7"

    aput-object v17, v1, v16

    const/16 v16, 0xe4

    const-string v17, "C9"

    aput-object v17, v1, v16

    const/16 v16, 0xe5

    const-string v17, "CB"

    aput-object v17, v1, v16

    const/16 v16, 0xe6

    const-string v17, "CD"

    aput-object v17, v1, v16

    const/16 v16, 0xe7

    const-string v17, "CF"

    aput-object v17, v1, v16

    const/16 v16, 0xe8

    const-string v17, "D1"

    aput-object v17, v1, v16

    const/16 v16, 0xe9

    const-string v17, "D3"

    aput-object v17, v1, v16

    const/16 v16, 0xea

    const-string v17, "D5"

    aput-object v17, v1, v16

    const/16 v16, 0xeb

    const-string v17, "D7"

    aput-object v17, v1, v16

    const/16 v16, 0xec

    const-string v17, "D9"

    aput-object v17, v1, v16

    const/16 v16, 0xed

    const-string v17, "DB"

    aput-object v17, v1, v16

    const/16 v16, 0xee

    const-string v17, "DD"

    aput-object v17, v1, v16

    const/16 v16, 0xef

    const-string v17, "DF"

    aput-object v17, v1, v16

    const/16 v16, 0xf0

    const-string v17, "E1"

    aput-object v17, v1, v16

    const/16 v16, 0xf1

    const-string v17, "E3"

    aput-object v17, v1, v16

    const/16 v16, 0xf2

    const-string v17, "E5"

    aput-object v17, v1, v16

    const/16 v16, 0xf3

    const-string v17, "E7"

    aput-object v17, v1, v16

    const/16 v16, 0xf4

    const-string v17, "E9"

    aput-object v17, v1, v16

    const/16 v16, 0xf5

    const-string v17, "EB"

    aput-object v17, v1, v16

    const/16 v16, 0xf6

    const-string v17, "ED"

    aput-object v17, v1, v16

    const/16 v16, 0xf7

    const-string v17, "EF"

    aput-object v17, v1, v16

    const/16 v16, 0xf8

    const-string v17, "F1"

    aput-object v17, v1, v16

    const/16 v16, 0xf9

    const-string v17, "F3"

    aput-object v17, v1, v16

    const/16 v16, 0xfa

    const-string v17, "F5"

    aput-object v17, v1, v16

    const/16 v16, 0xfb

    const-string v17, "F7"

    aput-object v17, v1, v16

    const/16 v16, 0xfc

    const-string v17, "F9"

    aput-object v17, v1, v16

    const/16 v16, 0xfd

    const-string v17, "FB"

    aput-object v17, v1, v16

    const/16 v16, 0xfe

    const-string v17, "FD"

    aput-object v17, v1, v16

    const/16 v16, 0xff

    const-string v17, "FF"

    aput-object v17, v1, v16

    .line 292
    sput-object v1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->BD_ROTATE_LEFT:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    const-string v1, "80"

    aput-object v1, v0, v5

    const-string v1, "01"

    aput-object v1, v0, v7

    const-string v1, "81"

    aput-object v1, v0, v9

    aput-object v4, v0, v11

    const-string v1, "82"

    aput-object v1, v0, v13

    const-string v1, "03"

    aput-object v1, v0, v15

    const/4 v1, 0x7

    const-string v2, "83"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v6, v0, v1

    const/16 v1, 0x9

    const-string v2, "84"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "05"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "85"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v8, v0, v1

    const/16 v1, 0xd

    const-string v2, "86"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "87"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    aput-object v10, v0, v1

    const/16 v1, 0x11

    const-string v2, "88"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "89"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    aput-object v12, v0, v1

    const/16 v1, 0x15

    const-string v2, "8A"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "0B"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "8B"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    aput-object v14, v0, v1

    const/16 v1, 0x19

    const-string v2, "8C"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "0D"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "8D"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "0E"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "8E"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "0F"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "8F"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "90"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "91"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "92"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "93"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "94"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "95"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "96"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "97"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "98"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "99"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "1A"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "9A"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "1B"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "9B"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "1C"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "9C"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "1D"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "9D"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "1E"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "9E"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "1F"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "9F"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "A0"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "A1"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "22"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "A2"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "A3"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "A4"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "A5"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "26"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "A6"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "A7"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "A8"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "A9"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "2A"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "AA"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "2B"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "AB"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "2C"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "AC"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "2D"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "AD"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "2E"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "AE"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "2F"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "AF"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "30"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "B0"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "31"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "B1"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "32"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "B2"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "33"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "B3"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "34"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "B4"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "35"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "B5"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "36"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "B6"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "37"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "B7"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "38"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "B8"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "39"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "B9"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "3A"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "BA"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "3B"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "3C"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "BC"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "3D"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "BD"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "3E"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "BE"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "3F"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "BF"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "40"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "C0"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "41"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "C1"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "42"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "C2"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "43"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "C3"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "44"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "C4"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "45"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "C5"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "46"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "C6"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "47"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "C7"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "48"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "C8"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "49"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "C9"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "4A"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "4B"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "CB"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "4C"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "CC"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "4D"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "CD"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "4E"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "CE"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "4F"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "CF"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "50"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "D0"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "51"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "D1"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "52"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "D2"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "53"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "D3"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "54"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "D4"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "55"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "D5"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "56"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "D6"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "57"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "D7"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "58"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "D8"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "59"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "D9"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "5A"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "DA"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "5B"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "DB"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "5C"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "DC"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "5D"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "DD"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "5E"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "DE"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "5F"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "DF"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "60"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "E0"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "61"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "E1"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "62"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "E2"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "63"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "E3"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "64"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "E4"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "65"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "E5"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "66"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "E6"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "67"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "E7"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "68"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "E8"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "69"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "E9"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "6A"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "EA"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "6B"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "EB"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "6C"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "EC"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "6D"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "ED"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "6E"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "EE"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "6F"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "EF"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "70"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "F0"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "71"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "F1"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "72"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "F2"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "73"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "F3"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "74"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "F4"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "75"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "F5"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "76"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "F6"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "77"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "F7"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "78"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "F8"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "79"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "F9"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "7A"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "FA"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "7B"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "FB"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "7C"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "FC"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "7D"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "FD"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "7E"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "FE"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "7F"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "FF"

    aput-object v2, v0, v1

    .line 310
    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->BD_ROTATE_RIGHT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToInt(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static compareSameWithGear(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    .line 327
    invoke-static {p0, v0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->compareSameWithGear(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static compareSameWithGear(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 331
    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p2

    const-string v0, "%02X"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_2

    .line 336
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v2, [Ljava/lang/Object;

    aget-byte v5, p2, v3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {p1, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 337
    invoke-virtual {p3, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return v3

    :cond_0
    move p0, v2

    .line 340
    :goto_0
    array-length p1, p2

    if-ge p0, p1, :cond_5

    .line 341
    aget-byte p1, p2, p0

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->byteToInt(B)I

    move-result p1

    mul-int/lit8 v0, p0, 0x3

    add-int/lit8 v1, v0, 0x2

    .line 342
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 344
    sget-object v1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->BD_ROTATE_RIGHT:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v3

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    if-ne p0, v2, :cond_6

    .line 349
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p1, v2, [Ljava/lang/Object;

    aget-byte v4, p2, v3

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, p1, v3

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 350
    invoke-virtual {p3, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v3

    :cond_3
    move p0, v2

    .line 353
    :goto_1
    array-length p1, p2

    if-ge p0, p1, :cond_5

    .line 354
    aget-byte p1, p2, p0

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->byteToInt(B)I

    move-result p1

    mul-int/lit8 v0, p0, 0x3

    add-int/lit8 v1, v0, 0x2

    .line 355
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 357
    sget-object v1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->BD_ROTATE_LEFT:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v3

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    return v3
.end method

.method public static getBleSpenAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "spengestureservice"

    .line 528
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-eqz p0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getBleSpenAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBytesFromAddress(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 371
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 372
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x2

    .line 373
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 91
    :cond_0
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_disconnecting:I

    return p0

    .line 85
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_connected:I

    return p0

    .line 87
    :cond_2
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_connecting:I

    return p0

    .line 89
    :cond_3
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_disconnected:I

    return p0
.end method

.method public static getQuickPannelOn()Z
    .locals 1

    .line 269
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mQuickPannelOn:Z

    return v0
.end method

.method public static getRestoredDevices(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Z)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    const-string v1, "getRestoredDevices :: will be cursor close"

    const-string v2, "BluetoothUtils"

    const-string v6, "bond_state== 1"

    const-string v0, "address"

    const-string v9, "name"

    const-string v10, "cod"

    const-string v11, "bond_state"

    const-string v12, "appearance"

    const-string v13, "manufacturerdata"

    const-string/jumbo v14, "timestamp"

    const-string v15, "linktype"

    const-string/jumbo v8, "uuids"

    .line 414
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 416
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

    .line 419
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/16 v16, 0x0

    .line 423
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v5

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v20, v7

    :try_start_2
    const-string v7, " DESC"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v7, v19

    move-object/from16 v5, v17

    move-object/from16 v23, v7

    move-object/from16 v22, v20

    move-object/from16 v7, v18

    move-object/from16 v24, v8

    move-object/from16 v8, v21

    :try_start_3
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v3, :cond_1

    :try_start_4
    const-string v0, "getRestoredDevices() :: query return null"

    .line 427
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_0

    .line 480
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v16

    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_3

    .line 430
    :cond_1
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRestoredDevices() :: cursor count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Columns : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 432
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 433
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 434
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 435
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 436
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 437
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 438
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 439
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v11, v24

    .line 440
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 442
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    if-nez v12, :cond_3

    .line 446
    new-instance v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v15, p0

    invoke-direct {v12, v15, v13}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 447
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setName(Ljava/lang/String;)V

    .line 448
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setCod(I)V

    .line 449
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setBondState(I)V

    .line 450
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setAppearance(I)V

    .line 453
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object v13

    .line 454
    invoke-virtual {v12, v13}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setManufacturerData([B)V

    move/from16 v19, v4

    move/from16 v20, v5

    .line 456
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setTimeStamp(J)V

    .line 457
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setLinkType(I)V

    .line 460
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 461
    invoke-static {v13, v4}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSyncDevice([BLjava/lang/String;)Z

    move-result v5

    .line 464
    invoke-virtual {v12, v4}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setUuids(Ljava/lang/String;)V

    .line 465
    new-instance v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v13, v4

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, v12

    move/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;Z)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p3, :cond_2

    if-eqz v5, :cond_2

    move-object/from16 v5, v23

    .line 468
    :try_start_6
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v12, v22

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v12, v22

    goto :goto_4

    :cond_2
    move-object/from16 v5, v23

    move-object/from16 v12, v22

    .line 470
    :try_start_7
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v23, v5

    move-object/from16 v22, v12

    move/from16 v4, v19

    move/from16 v5, v20

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_3
    move-object/from16 v12, v22

    move-object/from16 v5, v23

    if-eqz v3, :cond_4

    .line 480
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v12, v22

    move-object/from16 v5, v23

    :goto_2
    move-object/from16 v16, v3

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_3
    move-object/from16 v12, v22

    move-object/from16 v5, v23

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v5, v19

    move-object/from16 v12, v20

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v12, v7

    move-object/from16 v5, v19

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v12, v7

    :goto_4
    :try_start_8
    const-string v3, "getRestoredDevices :: Occurs IllegalStateException"

    .line 476
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v16, :cond_4

    .line 480
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_5
    if-eqz p3, :cond_6

    .line 486
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "getRestoredDevices :: syncedDevices"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v5

    .line 489
    :cond_6
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "getRestoredDevices :: restoredDevices"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v12

    :goto_6
    if-eqz v3, :cond_8

    .line 480
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public static getStringToken(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    .line 536
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 539
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    .line 543
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isBlackListDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 231
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    const-string v1, "(?i).*BMW.*"

    .line 235
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "(?i).*A0:56:B2.*|(?i).*B8:24:10.*|(?i).*9C:DF:03.*|(?i).*00:19:C0.*"

    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "(?i)MINI[0-9].*"

    .line 236
    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isEnabledUltraPowerSaving(Landroid/content/Context;)Z
    .locals 3

    .line 216
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 217
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 219
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 221
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "BluetoothUtils"

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 249
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    move v1, p0

    goto :goto_0

    :cond_0
    const-string p0, "isPackageExists :: appInfo is null"

    .line 253
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 256
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 259
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageExists :: target package = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", find = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 1

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSyncDevice([BLjava/lang/String;)Z
    .locals 6

    const-string v0, "BluetoothUtils"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    .line 498
    new-instance v3, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct {v3, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;-><init>([B)V

    .line 500
    invoke-virtual {v3}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceId()[B

    move-result-object p0

    .line 501
    aget-byte v3, p0, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    .line 503
    aget-byte p0, p0, v1

    if-ne p0, v2, :cond_1

    if-lt v3, v2, :cond_1

    if-gt v3, v4, :cond_1

    .line 505
    sget-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "isSyncDevice :: DeviceId"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    if-eqz p1, :cond_4

    .line 510
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_4

    const-string p0, ","

    .line 511
    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringToken(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 513
    array-length p1, p0

    move v3, v1

    :goto_0
    if-ge v3, p1, :cond_4

    aget-object v4, p0, v3

    const-string v5, "e7ab2241-ca64-4a69-ac02-05f5c6fe2d62"

    .line 514
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 515
    sget-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "isSyncDevice :: UUID"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 522
    :cond_4
    sget-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "isSyncDevice :: It is not synced device"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1
.end method

.method public static isTablet()Z
    .locals 2

    const-string v0, "ro.build.characteristics"

    .line 182
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static makeParcelUuids([Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .locals 3

    .line 551
    array-length v0, p0

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    .line 552
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 553
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static setErrorListener(Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;)V
    .locals 0

    .line 162
    sput-object p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->sErrorListener:Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;

    return-void
.end method

.method public static setQuickPannelOn(Z)V
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQuickPannelOn :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sput-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mQuickPannelOn:Z

    return-void
.end method

.method static showConnectingError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u200e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_connecting_error_message:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 151
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u200e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 132
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 187
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030223

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 p0, 0x0

    .line 188
    invoke-static {v0, p1, p0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 189
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 191
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 193
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static stringToByte(Ljava/lang/String;)[B
    .locals 4

    if-eqz p0, :cond_2

    .line 385
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 388
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 389
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x2

    .line 390
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static updateDeviceName(Landroid/content/Context;)V
    .locals 4

    .line 99
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_name"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateDeviceName :: change device name to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
