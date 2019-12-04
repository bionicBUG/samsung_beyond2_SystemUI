.class public Lcom/android/systemui/appdock/view/AppDockBaseViewHolder$AppDockHeaderViewHolder;
.super Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;
.source "AppDockBaseViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDockHeaderViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->appdock_item_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBind(Lcom/android/systemui/appdock/model/AppDockItemInfo;)V
    .locals 2
    .param p1    # Lcom/android/systemui/appdock/model/AppDockItemInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->appdock_header_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    iget-object p1, p1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mHeaderTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder$AppDockHeaderViewHolder;->updateView()V

    return-void
.end method

.method public onUnbind()V
    .locals 0

    return-void
.end method

.method public updateView()V
    .locals 1

    .line 79
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->appdock_header_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 80
    sget v0, Lcom/android/systemui/R$dimen;->appdock_list_header_text_size:I

    invoke-static {p0, v0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setTextDimenSize(Landroid/widget/TextView;I)V

    return-void
.end method
