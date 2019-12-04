.class Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDeviceInfo.java"

# interfaces
.implements Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1346
    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
