.class Landroid/app/enterprise/NtpInfo$1;
.super Ljava/lang/Object;
.source "NtpInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/NtpInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/enterprise/NtpInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/NtpInfo;
    .locals 1

    .line 169
    new-instance p0, Landroid/app/enterprise/NtpInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/enterprise/NtpInfo;-><init>(Landroid/os/Parcel;Landroid/app/enterprise/NtpInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 166
    invoke-virtual {p0, p1}, Landroid/app/enterprise/NtpInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/NtpInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/enterprise/NtpInfo;
    .locals 0

    .line 173
    new-array p0, p1, [Landroid/app/enterprise/NtpInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 166
    invoke-virtual {p0, p1}, Landroid/app/enterprise/NtpInfo$1;->newArray(I)[Landroid/app/enterprise/NtpInfo;

    move-result-object p0

    return-object p0
.end method
