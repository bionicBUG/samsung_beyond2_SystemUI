.class Lcom/android/systemui/shared/system/ActivityOptionsCompat$1;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$callbackHandler:Landroid/os/Handler;


# virtual methods
.method public onAnimationStarted()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityOptionsCompat$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityOptionsCompat$1;->val$callbackHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
