.class public Lcom/samsung/android/knox/net/vpn/KnoxVpnPolicyConstants;
.super Ljava/lang/Object;
.source "KnoxVpnPolicyConstants.java"


# static fields
.field public static final ALLOWED_METHODS_VENDOR_SETTINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "getAllVpnProfiles"

    const-string v1, "removeVpnProfile"

    .line 139
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnPolicyConstants;->ALLOWED_METHODS_VENDOR_SETTINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
