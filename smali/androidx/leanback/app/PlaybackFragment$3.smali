.class Landroidx/leanback/app/PlaybackFragment$3;
.super Ljava/lang/Object;
.source "PlaybackFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/PlaybackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/PlaybackFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/PlaybackFragment;)V
    .locals 0

    .line 256
    iput-object p1, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 273
    iget-object p1, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    iget v0, p1, Landroidx/leanback/app/PlaybackFragment;->mBgAlpha:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 274
    invoke-virtual {p1, v0}, Landroidx/leanback/app/PlaybackFragment;->enableVerticalGridAnimations(Z)V

    .line 275
    iget-object p0, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    iget-object p0, p0, Landroidx/leanback/app/PlaybackFragment;->mFadeCompleteListener:Landroidx/leanback/app/PlaybackFragment$OnFadeCompleteListener;

    if-eqz p0, :cond_2

    .line 276
    invoke-virtual {p0}, Landroidx/leanback/app/PlaybackFragment$OnFadeCompleteListener;->onFadeInComplete()V

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/app/PlaybackFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 281
    invoke-virtual {p1}, Landroidx/leanback/widget/BaseGridView;->getSelectedPosition()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz p1, :cond_1

    .line 284
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v0

    instance-of v0, v0, Landroidx/leanback/widget/PlaybackRowPresenter;

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/PlaybackRowPresenter;

    .line 286
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;

    .line 285
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/PlaybackRowPresenter;->onReappear(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    .line 289
    :cond_1
    iget-object p0, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    iget-object p0, p0, Landroidx/leanback/app/PlaybackFragment;->mFadeCompleteListener:Landroidx/leanback/app/PlaybackFragment$OnFadeCompleteListener;

    if-eqz p0, :cond_2

    .line 290
    invoke-virtual {p0}, Landroidx/leanback/app/PlaybackFragment$OnFadeCompleteListener;->onFadeOutComplete()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 259
    iget-object p0, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/leanback/app/PlaybackFragment;->enableVerticalGridAnimations(Z)V

    return-void
.end method
