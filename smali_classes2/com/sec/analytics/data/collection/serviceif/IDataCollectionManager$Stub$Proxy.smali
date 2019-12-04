.class Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDataCollectionManager.java"

# interfaces
.implements Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager$Stub;
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

    .line 113
    iget-object p0, p0, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
