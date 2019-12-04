.class public abstract Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;
.super Ljava/lang/Object;
.source "EnrollmentProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public certificateAlias:Ljava/lang/String;

.field public credentialStorageBundle:Landroid/os/Bundle;

.field public csrExtra:Landroid/os/Bundle;

.field public hashAlgorithmType:Ljava/lang/String;

.field public keyPairAlgorithm:Ljava/lang/String;

.field public keySize:I

.field public keystoreType:Ljava/lang/String;

.field public profileType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 168
    new-instance v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    .line 58
    iput-object v0, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->csrExtra:Landroid/os/Bundle;

    return-void
.end method
