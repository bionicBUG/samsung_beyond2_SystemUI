.class Lcom/sec/enterprise/knox/container/KnoxConfigurationType$1;
.super Ljava/lang/Object;
.source "KnoxConfigurationType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .locals 0

    .line 1864
    new-instance p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1861
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .locals 1

    const-string p0, "KnoxConfigurationType"

    const-string v0, "KnoxConfigurationType[] array to be created"

    .line 1870
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    new-array p0, p1, [Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1861
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType$1;->newArray(I)[Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object p0

    return-object p0
.end method
