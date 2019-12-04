.class Lcom/android/systemui/popup/util/DisplayManagerWrapper$1;
.super Ljava/lang/Object;
.source "DisplayManagerWrapper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field final synthetic val$runnable:Ljava/lang/Runnable;


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/popup/util/DisplayManagerWrapper$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
