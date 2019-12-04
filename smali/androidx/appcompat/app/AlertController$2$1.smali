.class Landroidx/appcompat/app/AlertController$2$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroidx/appcompat/app/AlertController$2;


# virtual methods
.method public run()V
    .locals 2

    .line 541
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$2$1;->this$1:Landroidx/appcompat/app/AlertController$2;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController$2;->this$0:Landroidx/appcompat/app/AlertController;

    invoke-static {v0}, Landroidx/appcompat/app/AlertController;->access$000(Landroidx/appcompat/app/AlertController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Landroidx/appcompat/app/AlertController$2$1;->this$1:Landroidx/appcompat/app/AlertController$2;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$2;->this$0:Landroidx/appcompat/app/AlertController;

    iget v1, v1, Landroidx/appcompat/app/AlertController;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 543
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$2$1;->this$1:Landroidx/appcompat/app/AlertController$2;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController$2;->this$0:Landroidx/appcompat/app/AlertController;

    invoke-static {v0}, Landroidx/appcompat/app/AlertController;->access$100(Landroidx/appcompat/app/AlertController;)V

    .line 544
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$2$1;->this$1:Landroidx/appcompat/app/AlertController$2;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController$2;->val$parentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 546
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/AlertController$2$1;->this$1:Landroidx/appcompat/app/AlertController$2;

    iget-object p0, p0, Landroidx/appcompat/app/AlertController$2;->this$0:Landroidx/appcompat/app/AlertController;

    invoke-static {p0}, Landroidx/appcompat/app/AlertController;->access$000(Landroidx/appcompat/app/AlertController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroidx/appcompat/app/AlertController;->mLastOrientation:I

    return-void
.end method
