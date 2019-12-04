.class public final Lcom/android/systemui/util/UiThreadMonitorKt;
.super Ljava/lang/Object;
.source "UiThreadMonitor.kt"


# static fields
.field private static final ENABLE_PAUSE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/util/UiThreadMonitorKt;->ENABLE_PAUSE:Z

    return-void
.end method

.method public static final synthetic access$debugLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static final synthetic access$getENABLE_PAUSE$p()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/util/UiThreadMonitorKt;->ENABLE_PAUSE:Z

    return v0
.end method
