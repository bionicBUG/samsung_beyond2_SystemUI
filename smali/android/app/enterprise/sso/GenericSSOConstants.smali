.class public Landroid/app/enterprise/sso/GenericSSOConstants;
.super Ljava/lang/Object;
.source "GenericSSOConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/sso/GenericSSOConstants$PasswordPolicyKeys;,
        Landroid/app/enterprise/sso/GenericSSOConstants$KerberosRequestKeys;,
        Landroid/app/enterprise/sso/GenericSSOConstants$SAMLResponseKeys;,
        Landroid/app/enterprise/sso/GenericSSOConstants$SAMLRequestKeys;,
        Landroid/app/enterprise/sso/GenericSSOConstants$OAuthResponseKeys;,
        Landroid/app/enterprise/sso/GenericSSOConstants$OAuthRequestKeys;
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

    sput-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
