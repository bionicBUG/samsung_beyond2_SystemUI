.class Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType$1;
.super Ljava/lang/Object;
.source "ContainerModeConfigurationType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    .locals 0

    .line 239
    new-instance p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 236
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    .locals 1

    const-string p0, "ContainerModeConfigurationType"

    const-string v0, "ContainerModeConfigurationType[] array to be created"

    .line 245
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-array p0, p1, [Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 236
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType$1;->newArray(I)[Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-result-object p0

    return-object p0
.end method
