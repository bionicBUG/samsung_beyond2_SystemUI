.class Landroidx/apppickerview/widget/GridAdapter;
.super Landroidx/apppickerview/widget/AbsAdapter;
.source "GridAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/apppickerview/widget/AbsAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method onBindViewHolderAction(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
    .locals 2

    .line 40
    iget-object p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Landroidx/apppickerview/R$layout;->app_picker_grid:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    iget p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mType:I

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    sget p2, Landroidx/apppickerview/R$id;->check_widget:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :goto_0
    sget p2, Landroidx/apppickerview/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroidx/apppickerview/widget/AbsAdapter;->limitFontLarge2LinesHeight(Landroid/widget/TextView;)V

    .line 47
    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/apppickerview/widget/GridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method
