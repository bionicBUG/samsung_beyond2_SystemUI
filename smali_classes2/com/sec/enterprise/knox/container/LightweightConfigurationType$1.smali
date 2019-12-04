.class Lcom/sec/enterprise/knox/container/LightweightConfigurationType$1;
.super Ljava/lang/Object;
.source "LightweightConfigurationType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/container/LightweightConfigurationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/enterprise/knox/container/LightweightConfigurationType;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/container/LightweightConfigurationType;
    .locals 0

    .line 169
    new-instance p0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 166
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/enterprise/knox/container/LightweightConfigurationType;
    .locals 1

    const-string p0, "LightweightConfigurationType"

    const-string v0, "LightweightConfigurationType[] array to be created"

    .line 175
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-array p0, p1, [Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 166
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType$1;->newArray(I)[Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-result-object p0

    return-object p0
.end method
