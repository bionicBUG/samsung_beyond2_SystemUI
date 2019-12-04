.class public Lcom/samsung/android/knox/sso/common/GenericSSOConstants;
.super Ljava/lang/Object;
.source "GenericSSOConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/sso/common/GenericSSOConstants$PasswordPolicyKeys;,
        Lcom/samsung/android/knox/sso/common/GenericSSOConstants$KerberosRequestKeys;,
        Lcom/samsung/android/knox/sso/common/GenericSSOConstants$SAMLResponseKeys;,
        Lcom/samsung/android/knox/sso/common/GenericSSOConstants$SAMLRequestKeys;,
        Lcom/samsung/android/knox/sso/common/GenericSSOConstants$OAuthResponseKeys;,
        Lcom/samsung/android/knox/sso/common/GenericSSOConstants$OAuthRequestKeys;
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
