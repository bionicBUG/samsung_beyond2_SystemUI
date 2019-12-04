.class public Lcom/sec/analytics/data/collection/serviceif/DataCollectionManager;
.super Ljava/lang/Object;
.source "DataCollectionManager.java"


# static fields
.field private static binder:Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/sec/analytics/data/collection/serviceif/DataCollectionManager$1;

    invoke-direct {v0}, Lcom/sec/analytics/data/collection/serviceif/DataCollectionManager$1;-><init>()V

    sput-object v0, Lcom/sec/analytics/data/collection/serviceif/DataCollectionManager;->binder:Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
