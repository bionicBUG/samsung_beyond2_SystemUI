.class public interface abstract Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager;
.super Ljava/lang/Object;
.source "IDataCollectionManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager$Stub;,
        Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager$Default;
    }
.end annotation


# virtual methods
.method public abstract disableLogCollection(Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;ILandroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableLogCollection(Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;ILandroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
