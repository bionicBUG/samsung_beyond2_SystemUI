.class public final enum Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
.super Ljava/lang/Enum;
.source "RestrictionPolicy.java"


# annotations
.annotation build Landroid/annotation/UnsupportedAppUsage;
    implicitMember = "values()[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "USBInterface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum ABL:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum APP:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum AUD:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum CDC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum COM:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum CON:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum CSC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum HID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum HUB:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum MAS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum MIS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum PER:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum PHY:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum PRI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum STI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum VEN:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum VID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum WIR:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# instance fields
.field private fullName:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 233
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/4 v1, 0x0

    const-string v2, "ABL"

    const-string v3, "ALL_BLOCK"

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->ABL:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 234
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/4 v2, 0x1

    const-string v3, "APP"

    const-string v4, "USB_CLASS_APP_SPEC"

    invoke-direct {v0, v3, v2, v4, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->APP:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 235
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/4 v3, 0x2

    const-string v4, "AUD"

    const-string v5, "USB_CLASS_AUDIO"

    invoke-direct {v0, v4, v3, v5, v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->AUD:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 237
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/4 v4, 0x3

    const/4 v5, 0x4

    const-string v6, "CDC"

    const-string v7, "USB_CLASS_CDC_DATA"

    invoke-direct {v0, v6, v4, v7, v5}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CDC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 239
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v6, 0x8

    const-string v7, "COM"

    const-string v8, "USB_CLASS_COMM"

    invoke-direct {v0, v7, v5, v8, v6}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->COM:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 241
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/4 v7, 0x5

    const/16 v8, 0x10

    const-string v9, "CON"

    const-string v10, "USB_CLASS_CONTENT_SEC"

    invoke-direct {v0, v9, v7, v10, v8}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CON:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 242
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/4 v9, 0x6

    const-string v10, "CSC"

    const-string v11, "USB_CLASS_CSCID"

    const/16 v12, 0x20

    invoke-direct {v0, v10, v9, v11, v12}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CSC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 243
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/4 v10, 0x7

    const-string v11, "HID"

    const-string v12, "USB_CLASS_HID"

    const/16 v13, 0x40

    invoke-direct {v0, v11, v10, v12, v13}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->HID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 245
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v11, "HUB"

    const-string v12, "USB_CLASS_HUB"

    const/16 v13, 0x80

    invoke-direct {v0, v11, v6, v12, v13}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->HUB:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 246
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v11, 0x9

    const-string v12, "MAS"

    const-string v13, "USB_CLASS_MASS_STORAGE"

    const/16 v14, 0x100

    invoke-direct {v0, v12, v11, v13, v14}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->MAS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 248
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v12, 0xa

    const-string v13, "MIS"

    const-string v14, "USB_CLASS_MISC"

    const/16 v15, 0x200

    invoke-direct {v0, v13, v12, v14, v15}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->MIS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 250
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v13, 0xb

    const-string v14, "PER"

    const-string v15, "USB_CLASS_PER_INTERFACE"

    const/16 v12, 0x400

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PER:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 251
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v12, 0xc

    const-string v14, "PHY"

    const-string v15, "USB_CLASS_PHYSICAL"

    const/16 v13, 0x800

    invoke-direct {v0, v14, v12, v15, v13}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PHY:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 252
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v13, 0xd

    const-string v14, "PRI"

    const-string v15, "USB_CLASS_PRINTER"

    const/16 v12, 0x1000

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PRI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 253
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v12, "STI"

    const/16 v14, 0xe

    const-string v15, "USB_CLASS_STILL_IMAGE"

    const/16 v13, 0x2000

    invoke-direct {v0, v12, v14, v15, v13}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->STI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 255
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v12, "VEN"

    const/16 v13, 0xf

    const-string v14, "USB_CLASS_VENDOR_SPEC"

    const/16 v15, 0x4000

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->VEN:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 257
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v12, "VID"

    const-string v13, "USB_CLASS_VIDEO"

    const v14, 0x8000

    invoke-direct {v0, v12, v8, v13, v14}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->VID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 258
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v12, "WIR"

    const/16 v13, 0x11

    const-string v14, "USB_CLASS_WIRELESS_CONTROLLER"

    const/high16 v15, 0x10000

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->WIR:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 260
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v12, "OFF"

    const/16 v13, 0x12

    const-string v14, "ALL_OPEN"

    const v15, 0x1ffff

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 231
    sget-object v12, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->ABL:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v12, v0, v1

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->APP:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->AUD:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CDC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->COM:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CON:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CSC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->HID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->HUB:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->MAS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->MIS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PER:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PHY:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PRI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->STI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->VEN:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->VID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->WIR:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->$VALUES:[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 264
    iput-object p1, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->fullName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 265
    iput p1, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->value:I

    .line 268
    iput-object p3, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->fullName:Ljava/lang/String;

    .line 269
    iput p4, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    .locals 1

    .line 231
    const-class v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    .locals 1

    .line 231
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->$VALUES:[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    return-object v0
.end method
