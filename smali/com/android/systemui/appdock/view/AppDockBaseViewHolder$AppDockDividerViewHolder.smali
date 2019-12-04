.class public Lcom/android/systemui/appdock/view/AppDockBaseViewHolder$AppDockDividerViewHolder;
.super Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;
.source "AppDockBaseViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDockDividerViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->appdock_item_divider:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBind(Lcom/android/systemui/appdock/model/AppDockItemInfo;)V
    .locals 0
    .param p1    # Lcom/android/systemui/appdock/model/AppDockItemInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder$AppDockDividerViewHolder;->updateView()V

    return-void
.end method

.method public onUnbind()V
    .locals 0

    return-void
.end method

.method public updateView()V
    .locals 2

    .line 51
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->appdock_divider_bar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 52
    sget-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->TOP_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v1, Lcom/android/systemui/R$dimen;->appdock_list_divider_margin_top:I

    invoke-static {p0, v0, v1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 53
    sget-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->BOTTOM_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v1, Lcom/android/systemui/R$dimen;->appdock_list_divider_margin_bottom:I

    invoke-static {p0, v0, v1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 54
    sget-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->LEFT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v1, Lcom/android/systemui/R$dimen;->appdock_list_divider_margin_left_right:I

    invoke-static {p0, v0, v1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 55
    sget-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->RIGHT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v1, Lcom/android/systemui/R$dimen;->appdock_list_divider_margin_left_right:I

    invoke-static {p0, v0, v1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    return-void
.end method
