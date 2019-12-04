.class Landroid/app/enterprise/sso/AuthenticationRequest$1;
.super Ljava/lang/Object;
.source "AuthenticationRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/sso/AuthenticationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/enterprise/sso/AuthenticationRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/sso/AuthenticationRequest;
    .locals 1

    .line 116
    new-instance p0, Landroid/app/enterprise/sso/AuthenticationRequest;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/enterprise/sso/AuthenticationRequest;-><init>(Landroid/os/Parcel;Landroid/app/enterprise/sso/AuthenticationRequest$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Landroid/app/enterprise/sso/AuthenticationRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/sso/AuthenticationRequest;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/enterprise/sso/AuthenticationRequest;
    .locals 0

    .line 122
    new-array p0, p1, [Landroid/app/enterprise/sso/AuthenticationRequest;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Landroid/app/enterprise/sso/AuthenticationRequest$1;->newArray(I)[Landroid/app/enterprise/sso/AuthenticationRequest;

    move-result-object p0

    return-object p0
.end method
