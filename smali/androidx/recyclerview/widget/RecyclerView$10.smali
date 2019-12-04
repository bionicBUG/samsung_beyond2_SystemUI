.class Landroidx/recyclerview/widget/RecyclerView$10;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3663
    :try_start_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$10;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->access$4602(Landroidx/recyclerview/widget/RecyclerView;I)I

    .line 3664
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$10;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->access$4000(Landroidx/recyclerview/widget/RecyclerView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 3654
    :try_start_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$10;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->access$4602(Landroidx/recyclerview/widget/RecyclerView;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
