.class Lcom/android/systemui/shared/recents/view/RecentsTransition$2;
.super Landroid/os/IRemoteCallback$Stub;
.source "RecentsTransition.java"


# instance fields
.field final synthetic val$animationStartCallback:Ljava/lang/Runnable;

.field final synthetic val$handler:Landroid/os/Handler;


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    iget-object p1, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$2;->val$handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$2;->val$animationStartCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
