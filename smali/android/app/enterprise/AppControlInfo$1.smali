.class Landroid/app/enterprise/AppControlInfo$1;
.super Ljava/lang/Object;
.source "AppControlInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/AppControlInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/enterprise/AppControlInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/AppControlInfo;
    .locals 1

    .line 135
    new-instance p0, Landroid/app/enterprise/AppControlInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/enterprise/AppControlInfo;-><init>(Landroid/os/Parcel;Landroid/app/enterprise/AppControlInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Landroid/app/enterprise/AppControlInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/AppControlInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/enterprise/AppControlInfo;
    .locals 0

    .line 141
    new-array p0, p1, [Landroid/app/enterprise/AppControlInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Landroid/app/enterprise/AppControlInfo$1;->newArray(I)[Landroid/app/enterprise/AppControlInfo;

    move-result-object p0

    return-object p0
.end method
