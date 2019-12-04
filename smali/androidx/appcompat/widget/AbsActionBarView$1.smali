.class Landroidx/appcompat/widget/AbsActionBarView$1;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/AbsActionBarView;


# virtual methods
.method public run()V
    .locals 0

    .line 204
    iget-object p0, p0, Landroidx/appcompat/widget/AbsActionBarView$1;->this$0:Landroidx/appcompat/widget/AbsActionBarView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AbsActionBarView;->showOverflowMenu()Z

    return-void
.end method
