.class public final enum Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;
.super Ljava/lang/Enum;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/EnterpriseDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnterpriseKeyVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

.field public static final enum ENTERPRISE_KEY_VERSION_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1299
    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    const/4 v1, 0x0

    const-string v2, "ENTERPRISE_KEY_VERSION_1"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;->ENTERPRISE_KEY_VERSION_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    .line 1298
    sget-object v2, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;->ENTERPRISE_KEY_VERSION_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;->$VALUES:[Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1298
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;
    .locals 1

    .line 1298
    const-class v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;
    .locals 1

    .line 1298
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;->$VALUES:[Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    return-object v0
.end method
