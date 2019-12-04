.class Landroidx/recyclerview/widget/RecyclerView$14;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# virtual methods
.method public run()V
    .locals 1

    .line 4573
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$14;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
