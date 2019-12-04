.class Landroidx/leanback/app/BrowseFragment$5;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/BrowseFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/BrowseFragment;)V
    .locals 0

    .line 1152
    iput-object p1, p0, Landroidx/leanback/app/BrowseFragment$5;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1177
    iget-object p2, p0, Landroidx/leanback/app/BrowseFragment$5;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1180
    :cond_0
    iget-object p2, p0, Landroidx/leanback/app/BrowseFragment$5;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-boolean v0, p2, Landroidx/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroidx/leanback/app/BrowseFragment;->isInHeadersTransition()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 1181
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 1182
    sget p2, Landroidx/leanback/R$id;->browse_container_dock:I

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Landroidx/leanback/app/BrowseFragment$5;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-boolean v0, p2, Landroidx/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    .line 1183
    invoke-virtual {p2, p0}, Landroidx/leanback/app/BrowseFragment;->startHeadersTransitionInternal(Z)V

    goto :goto_0

    .line 1184
    :cond_2
    sget p2, Landroidx/leanback/R$id;->browse_headers_dock:I

    if-ne p1, p2, :cond_3

    iget-object p0, p0, Landroidx/leanback/app/BrowseFragment$5;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-boolean p1, p0, Landroidx/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 1185
    invoke-virtual {p0, p1}, Landroidx/leanback/app/BrowseFragment;->startHeadersTransitionInternal(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    .line 1156
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$5;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1160
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$5;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-boolean v2, v0, Landroidx/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Landroidx/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz v2, :cond_1

    .line 1161
    iget-object v0, v0, Landroidx/leanback/app/BrowseFragment;->mHeadersFragment:Landroidx/leanback/app/HeadersFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$5;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroidx/leanback/app/BrowseFragment;->mHeadersFragment:Landroidx/leanback/app/HeadersFragment;

    .line 1162
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1167
    :cond_1
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$5;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroidx/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$5;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroidx/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    .line 1168
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1171
    :cond_2
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$5;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BrandedFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/leanback/app/BrowseFragment$5;->this$0:Landroidx/leanback/app/BrowseFragment;

    .line 1172
    invoke-virtual {p0}, Landroidx/leanback/app/BrandedFragment;->getTitleView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
