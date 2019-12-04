.class Lcom/sec/analytics/data/collection/serviceif/DataCollectionManager$1;
.super Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb$Stub;
.source "DataCollectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/analytics/data/collection/serviceif/DataCollectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public empty()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
