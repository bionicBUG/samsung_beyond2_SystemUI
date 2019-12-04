.class Landroidx/leanback/widget/GuidedActionsStylist$2;
.super Ljava/lang/Object;
.source "GuidedActionsStylist.java"

# interfaces
.implements Landroidx/leanback/widget/ViewHolderTask;


# instance fields
.field final synthetic val$guidedActionAdapter:Landroidx/leanback/widget/GuidedActionAdapter;


# virtual methods
.method public run(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 779
    check-cast p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 780
    iget-object p0, p0, Landroidx/leanback/widget/GuidedActionsStylist$2;->val$guidedActionAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mGroup:Landroidx/leanback/widget/GuidedActionAdapterGroup;

    invoke-virtual {v0, p0, p1}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->openIme(Landroidx/leanback/widget/GuidedActionAdapter;Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    return-void
.end method
