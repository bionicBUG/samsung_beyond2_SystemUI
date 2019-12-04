.class public abstract Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb$Stub;
.super Landroid/os/Binder;
.source "IDataCollectionManagerCb.java"

# interfaces
.implements Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.analytics.data.collection.serviceif.IDataCollectionManagerCb"

    .line 28
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.sec.analytics.data.collection.serviceif.IDataCollectionManagerCb"

    .line 39
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    instance-of v1, v0, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.sec.analytics.data.collection.serviceif.IDataCollectionManagerCb"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 56
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 61
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-interface {p0}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->empty()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
