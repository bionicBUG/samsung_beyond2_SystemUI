.class public Lcom/sec/enterprise/knox/trustedpinpad/TrustedPinPadInfo;
.super Ljava/lang/Object;
.source "TrustedPinPadInfo.java"


# instance fields
.field public maximumImageHeight:I

.field public maximumImageWidth:I

.field public pinPadCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/enterprise/knox/trustedpinpad/TrustedPinPadInfo;->pinPadCertificates:Ljava/util/List;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/sec/enterprise/knox/trustedpinpad/TrustedPinPadInfo;->maximumImageHeight:I

    .line 62
    iput v0, p0, Lcom/sec/enterprise/knox/trustedpinpad/TrustedPinPadInfo;->maximumImageWidth:I

    return-void
.end method
