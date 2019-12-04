.class Lcom/sec/enterprise/identity/AuthenticationConfig$1;
.super Ljava/lang/Object;
.source "AuthenticationConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/identity/AuthenticationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/enterprise/identity/AuthenticationConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/identity/AuthenticationConfig;
    .locals 0

    .line 246
    new-instance p0, Lcom/sec/enterprise/identity/AuthenticationConfig;

    invoke-direct {p0, p1}, Lcom/sec/enterprise/identity/AuthenticationConfig;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 242
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/identity/AuthenticationConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/identity/AuthenticationConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/enterprise/identity/AuthenticationConfig;
    .locals 0

    .line 252
    new-array p0, p1, [Lcom/sec/enterprise/identity/AuthenticationConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 242
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/identity/AuthenticationConfig$1;->newArray(I)[Lcom/sec/enterprise/identity/AuthenticationConfig;

    move-result-object p0

    return-object p0
.end method
