.class Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$3;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplierCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$afterApplyCallback:Ljava/lang/Runnable;

.field final synthetic val$oldCallback:Ljava/lang/Runnable;


# virtual methods
.method public run()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$3;->val$afterApplyCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 135
    iget-object p0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$3;->val$oldCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
