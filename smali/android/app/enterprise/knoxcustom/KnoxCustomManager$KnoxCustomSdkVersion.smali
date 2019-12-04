.class public final enum Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;
.super Ljava/lang/Enum;
.source "KnoxCustomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KnoxCustomSdkVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

.field public static final enum KNOX_CUSTOM_SDK_VERSION_1:Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

.field public static final enum KNOX_CUSTOM_SDK_VERSION_2:Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

.field public static final enum KNOX_CUSTOM_SDK_VERSION_2_4:Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 761
    new-instance v0, Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

    const/4 v1, 0x0

    const-string v2, "KNOX_CUSTOM_SDK_VERSION_1"

    invoke-direct {v0, v2, v1}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;->KNOX_CUSTOM_SDK_VERSION_1:Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

    .line 765
    new-instance v0, Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

    const/4 v2, 0x1

    const-string v3, "KNOX_CUSTOM_SDK_VERSION_2"

    invoke-direct {v0, v3, v2}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;->KNOX_CUSTOM_SDK_VERSION_2:Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

    .line 769
    new-instance v0, Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

    const/4 v3, 0x2

    const-string v4, "KNOX_CUSTOM_SDK_VERSION_2_4"

    invoke-direct {v0, v4, v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;->KNOX_CUSTOM_SDK_VERSION_2_4:Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

    .line 757
    sget-object v4, Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;->KNOX_CUSTOM_SDK_VERSION_1:Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

    aput-object v4, v0, v1

    sget-object v1, Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;->KNOX_CUSTOM_SDK_VERSION_2:Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;->KNOX_CUSTOM_SDK_VERSION_2_4:Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;->$VALUES:[Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 757
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;
    .locals 1

    .line 757
    const-class v0, Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

    return-object p0
.end method

.method public static values()[Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;
    .locals 1

    .line 757
    sget-object v0, Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;->$VALUES:[Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

    invoke-virtual {v0}, [Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

    return-object v0
.end method
