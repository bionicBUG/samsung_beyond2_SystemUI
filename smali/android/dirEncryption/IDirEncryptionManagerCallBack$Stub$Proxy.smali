.class Landroid/dirEncryption/IDirEncryptionManagerCallBack$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDirEncryptionManagerCallBack.java"

# interfaces
.implements Landroid/dirEncryption/IDirEncryptionManagerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dirEncryption/IDirEncryptionManagerCallBack$Stub;
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

    .line 86
    iget-object p0, p0, Landroid/dirEncryption/IDirEncryptionManagerCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
