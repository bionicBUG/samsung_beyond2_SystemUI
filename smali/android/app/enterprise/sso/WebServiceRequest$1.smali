.class Landroid/app/enterprise/sso/WebServiceRequest$1;
.super Ljava/lang/Object;
.source "WebServiceRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/sso/WebServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/enterprise/sso/WebServiceRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/sso/WebServiceRequest;
    .locals 1

    .line 73
    new-instance p0, Landroid/app/enterprise/sso/WebServiceRequest;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/enterprise/sso/WebServiceRequest;-><init>(Landroid/os/Parcel;Landroid/app/enterprise/sso/WebServiceRequest$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/enterprise/sso/WebServiceRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/sso/WebServiceRequest;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/enterprise/sso/WebServiceRequest;
    .locals 0

    .line 79
    new-array p0, p1, [Landroid/app/enterprise/sso/WebServiceRequest;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/enterprise/sso/WebServiceRequest$1;->newArray(I)[Landroid/app/enterprise/sso/WebServiceRequest;

    move-result-object p0

    return-object p0
.end method
