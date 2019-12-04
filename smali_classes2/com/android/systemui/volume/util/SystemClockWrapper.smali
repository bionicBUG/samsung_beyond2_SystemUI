.class public Lcom/android/systemui/volume/util/SystemClockWrapper;
.super Ljava/lang/Object;
.source "SystemClockWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uptimeMillis()J
    .locals 2

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
