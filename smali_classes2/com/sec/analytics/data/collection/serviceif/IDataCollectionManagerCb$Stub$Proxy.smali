.class Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDataCollectionManagerCb.java"

# interfaces
.implements Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
