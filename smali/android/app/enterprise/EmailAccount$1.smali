.class Landroid/app/enterprise/EmailAccount$1;
.super Ljava/lang/Object;
.source "EmailAccount.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/EmailAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/enterprise/EmailAccount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/EmailAccount;
    .locals 0

    .line 215
    new-instance p0, Landroid/app/enterprise/EmailAccount;

    invoke-direct {p0, p1}, Landroid/app/enterprise/EmailAccount;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Landroid/app/enterprise/EmailAccount$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/EmailAccount;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/enterprise/EmailAccount;
    .locals 0

    .line 220
    new-array p0, p1, [Landroid/app/enterprise/EmailAccount;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Landroid/app/enterprise/EmailAccount$1;->newArray(I)[Landroid/app/enterprise/EmailAccount;

    move-result-object p0

    return-object p0
.end method
