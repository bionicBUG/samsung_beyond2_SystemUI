.class Landroidx/leanback/app/RowsSupportFragment$2;
.super Ljava/lang/Object;
.source "RowsSupportFragment.java"

# interfaces
.implements Landroidx/leanback/widget/ViewHolderTask;


# instance fields
.field final synthetic val$rowHolderTask:Landroidx/leanback/widget/Presenter$ViewHolderTask;


# virtual methods
.method public run(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 515
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroidx/leanback/app/RowsSupportFragment$2$1;

    invoke-direct {v1, p0, p1}, Landroidx/leanback/app/RowsSupportFragment$2$1;-><init>(Landroidx/leanback/app/RowsSupportFragment$2;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
