.class public final enum Landroid/app/enterprise/RestrictionPolicy$USBInterface;
.super Ljava/lang/Enum;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "USBInterface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/enterprise/RestrictionPolicy$USBInterface;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum ABL:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum APP:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum AUD:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum CDC:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum COM:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum CON:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum CSC:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum HID:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum HUB:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum MAS:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum MIS:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum OFF:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum PER:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum PHY:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum PRI:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum STI:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum VEN:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum VID:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

.field public static final enum WIR:Landroid/app/enterprise/RestrictionPolicy$USBInterface;


# instance fields
.field private fullName:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 202
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/4 v1, 0x0

    const-string v2, "ABL"

    const-string v3, "ALL_BLOCK"

    invoke-direct {v0, v2, v1, v3, v1}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->ABL:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 203
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/4 v2, 0x1

    const-string v3, "APP"

    const-string v4, "USB_CLASS_APP_SPEC"

    invoke-direct {v0, v3, v2, v4, v2}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->APP:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 204
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/4 v3, 0x2

    const-string v4, "AUD"

    const-string v5, "USB_CLASS_AUDIO"

    invoke-direct {v0, v4, v3, v5, v3}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->AUD:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 205
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/4 v4, 0x3

    const/4 v5, 0x4

    const-string v6, "CDC"

    const-string v7, "USB_CLASS_CDC_DATA"

    invoke-direct {v0, v6, v4, v7, v5}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->CDC:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 206
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/16 v6, 0x8

    const-string v7, "COM"

    const-string v8, "USB_CLASS_COMM"

    invoke-direct {v0, v7, v5, v8, v6}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->COM:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 207
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/4 v7, 0x5

    const/16 v8, 0x10

    const-string v9, "CON"

    const-string v10, "USB_CLASS_CONTENT_SEC"

    invoke-direct {v0, v9, v7, v10, v8}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->CON:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 208
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/4 v9, 0x6

    const-string v10, "CSC"

    const-string v11, "USB_CLASS_CSCID"

    const/16 v12, 0x20

    invoke-direct {v0, v10, v9, v11, v12}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->CSC:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 209
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/4 v10, 0x7

    const-string v11, "HID"

    const-string v12, "USB_CLASS_HID"

    const/16 v13, 0x40

    invoke-direct {v0, v11, v10, v12, v13}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->HID:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 210
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const-string v11, "HUB"

    const-string v12, "USB_CLASS_HUB"

    const/16 v13, 0x80

    invoke-direct {v0, v11, v6, v12, v13}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->HUB:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 211
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/16 v11, 0x9

    const-string v12, "MAS"

    const-string v13, "USB_CLASS_MASS_STORAGE"

    const/16 v14, 0x100

    invoke-direct {v0, v12, v11, v13, v14}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->MAS:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 212
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/16 v12, 0xa

    const-string v13, "MIS"

    const-string v14, "USB_CLASS_MISC"

    const/16 v15, 0x200

    invoke-direct {v0, v13, v12, v14, v15}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->MIS:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 213
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/16 v13, 0xb

    const-string v14, "PER"

    const-string v15, "USB_CLASS_PER_INTERFACE"

    const/16 v12, 0x400

    invoke-direct {v0, v14, v13, v15, v12}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->PER:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 214
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/16 v12, 0xc

    const-string v14, "PHY"

    const-string v15, "USB_CLASS_PHYSICAL"

    const/16 v13, 0x800

    invoke-direct {v0, v14, v12, v15, v13}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->PHY:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 215
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/16 v13, 0xd

    const-string v14, "PRI"

    const-string v15, "USB_CLASS_PRINTER"

    const/16 v12, 0x1000

    invoke-direct {v0, v14, v13, v15, v12}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->PRI:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 216
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const-string v12, "STI"

    const/16 v14, 0xe

    const-string v15, "USB_CLASS_STILL_IMAGE"

    const/16 v13, 0x2000

    invoke-direct {v0, v12, v14, v15, v13}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->STI:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 217
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const-string v12, "VEN"

    const/16 v13, 0xf

    const-string v14, "USB_CLASS_VENDOR_SPEC"

    const/16 v15, 0x4000

    invoke-direct {v0, v12, v13, v14, v15}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->VEN:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 218
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const-string v12, "VID"

    const-string v13, "USB_CLASS_VIDEO"

    const v14, 0x8000

    invoke-direct {v0, v12, v8, v13, v14}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->VID:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 219
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const-string v12, "WIR"

    const/16 v13, 0x11

    const-string v14, "USB_CLASS_WIRELESS_CONTROLLER"

    const/high16 v15, 0x10000

    invoke-direct {v0, v12, v13, v14, v15}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->WIR:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 220
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const-string v12, "OFF"

    const/16 v13, 0x12

    const-string v14, "ALL_OPEN"

    const v15, 0x1ffff

    invoke-direct {v0, v12, v13, v14, v15}, Landroid/app/enterprise/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->OFF:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/16 v0, 0x13

    new-array v0, v0, [Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    .line 201
    sget-object v12, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->ABL:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    aput-object v12, v0, v1

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->APP:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->AUD:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->CDC:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v4

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->COM:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v5

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->CON:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v7

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->CSC:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v9

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->HID:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v10

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->HUB:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v6

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->MAS:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v11

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->MIS:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->PER:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->PHY:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->PRI:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->STI:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->VEN:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->VID:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v8

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->WIR:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->OFF:Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->$VALUES:[Landroid/app/enterprise/RestrictionPolicy$USBInterface;

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

    .line 226
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 223
    iput-object p1, p0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->fullName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 224
    iput p1, p0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->value:I

    .line 227
    iput-object p3, p0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->fullName:Ljava/lang/String;

    .line 228
    iput p4, p0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/enterprise/RestrictionPolicy$USBInterface;
    .locals 1

    .line 201
    const-class v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    return-object p0
.end method

.method public static values()[Landroid/app/enterprise/RestrictionPolicy$USBInterface;
    .locals 1

    .line 201
    sget-object v0, Landroid/app/enterprise/RestrictionPolicy$USBInterface;->$VALUES:[Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    invoke-virtual {v0}, [Landroid/app/enterprise/RestrictionPolicy$USBInterface;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/enterprise/RestrictionPolicy$USBInterface;

    return-object v0
.end method
