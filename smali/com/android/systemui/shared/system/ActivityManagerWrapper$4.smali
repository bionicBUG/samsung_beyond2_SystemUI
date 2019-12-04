.class Lcom/android/systemui/shared/system/ActivityManagerWrapper$4;
.super Ljava/lang/Object;
.source "ActivityManagerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$resultCallback:Ljava/util/function/Consumer;


# virtual methods
.method public run()V
    .locals 1

    .line 275
    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$4;->val$resultCallback:Ljava/util/function/Consumer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
