.class Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDeviceAccountPolicy.java"

# interfaces
.implements Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;
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

    .line 491
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
