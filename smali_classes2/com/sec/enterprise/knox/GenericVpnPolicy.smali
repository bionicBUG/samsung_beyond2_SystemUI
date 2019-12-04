.class public Lcom/sec/enterprise/knox/GenericVpnPolicy;
.super Ljava/lang/Object;
.source "GenericVpnPolicy.java"


# static fields
.field private static final DBG:Z

.field private static final KNOX_VPN_V2_ENABLED:Z

.field private static TAG:Ljava/lang/String;

.field public static VPN_RETURN_BOOL_ERROR:Z

.field private static VPN_RETURN_INT_ERROR:I

.field private static VPN_RETURN_INT_SUCCESS:I

.field private static genericVpnObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/enterprise/knox/GenericVpnPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field private static mPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.config.knox"

    const-string v1, "0"

    .line 137
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "v30"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/enterprise/knox/GenericVpnPolicy;->KNOX_VPN_V2_ENABLED:Z

    const/4 v0, -0x1

    .line 141
    sput v0, Lcom/sec/enterprise/knox/GenericVpnPolicy;->VPN_RETURN_INT_ERROR:I

    const/4 v0, 0x0

    .line 143
    sput v0, Lcom/sec/enterprise/knox/GenericVpnPolicy;->VPN_RETURN_INT_SUCCESS:I

    .line 145
    sput-boolean v0, Lcom/sec/enterprise/knox/GenericVpnPolicy;->VPN_RETURN_BOOL_ERROR:Z

    const-string v0, "GenericVpnPolicy"

    .line 147
    sput-object v0, Lcom/sec/enterprise/knox/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 149
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/sec/enterprise/knox/GenericVpnPolicy;->DBG:Z

    const/4 v0, 0x0

    .line 160
    sput-object v0, Lcom/sec/enterprise/knox/GenericVpnPolicy;->mPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

    .line 162
    sput-object v0, Lcom/sec/enterprise/knox/GenericVpnPolicy;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/GenericVpnPolicy;->genericVpnObjectMap:Ljava/util/HashMap;

    return-void
.end method
