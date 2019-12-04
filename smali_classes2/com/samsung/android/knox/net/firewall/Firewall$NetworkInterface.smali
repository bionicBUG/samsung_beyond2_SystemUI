.class public final enum Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;
.super Ljava/lang/Enum;
.source "Firewall.java"


# annotations
.annotation build Landroid/annotation/UnsupportedAppUsage;
    implicitMember = "values()[Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/firewall/Firewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkInterface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

.field public static final enum ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 61
    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    const/4 v1, 0x0

    const-string v2, "ALL_NETWORKS"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 63
    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    const/4 v2, 0x1

    const-string v3, "WIFI_DATA_ONLY"

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 65
    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    const/4 v3, 0x2

    const-string v4, "MOBILE_DATA_ONLY"

    invoke-direct {v0, v4, v3}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 59
    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    aput-object v4, v0, v1

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->$VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;
    .locals 1

    .line 59
    const-class v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;
    .locals 1

    .line 59
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->$VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    return-object v0
.end method
