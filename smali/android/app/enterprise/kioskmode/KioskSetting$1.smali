.class Landroid/app/enterprise/kioskmode/KioskSetting$1;
.super Ljava/lang/Object;
.source "KioskSetting.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/kioskmode/KioskSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/enterprise/kioskmode/KioskSetting;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/kioskmode/KioskSetting;
    .locals 0

    .line 166
    new-instance p0, Landroid/app/enterprise/kioskmode/KioskSetting;

    invoke-direct {p0, p1}, Landroid/app/enterprise/kioskmode/KioskSetting;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 163
    invoke-virtual {p0, p1}, Landroid/app/enterprise/kioskmode/KioskSetting$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/kioskmode/KioskSetting;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/enterprise/kioskmode/KioskSetting;
    .locals 0

    .line 171
    new-array p0, p1, [Landroid/app/enterprise/kioskmode/KioskSetting;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 163
    invoke-virtual {p0, p1}, Landroid/app/enterprise/kioskmode/KioskSetting$1;->newArray(I)[Landroid/app/enterprise/kioskmode/KioskSetting;

    move-result-object p0

    return-object p0
.end method
