.class public final enum Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;
.super Ljava/lang/Enum;
.source "FirewallResponse.java"


# annotations
.annotation build Landroid/annotation/UnsupportedAppUsage;
    implicitMember = "values()[Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/firewall/FirewallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

.field public static final enum FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum PARTIAL:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 19
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 21
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    const/4 v2, 0x1

    const-string v3, "NO_CHANGES"

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 23
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    const/4 v3, 0x2

    const-string v4, "FAILED"

    invoke-direct {v0, v4, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 25
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    const/4 v4, 0x3

    const-string v5, "PARTIAL"

    invoke-direct {v0, v5, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->PARTIAL:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 17
    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    aput-object v5, v0, v1

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->PARTIAL:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->$VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;
    .locals 1

    .line 17
    const-class v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;
    .locals 1

    .line 17
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->$VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    return-object v0
.end method
