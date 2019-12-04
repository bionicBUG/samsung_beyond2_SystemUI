.class Landroidx/apppickerview/widget/ListAdapter;
.super Landroidx/apppickerview/widget/AbsAdapter;
.source "ListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/apppickerview/widget/AbsAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 112
    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->hasAllAppsInList()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x100

    return p0

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p1, p0, :cond_1

    const/16 p0, 0x102

    return p0

    :cond_1
    const/16 p0, 0x101

    return p0
.end method

.method onBindViewHolderAction(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 0

    .line 40
    iget p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mType:I

    const/4 p2, 0x0

    const/16 p3, 0x8

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 47
    :pswitch_0
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getLeftConatiner()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 48
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getWidgetContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 57
    :pswitch_1
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getLeftConatiner()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getWidgetContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 51
    :pswitch_2
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getWidgetContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 52
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getActionButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 42
    :pswitch_3
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getWidgetContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 43
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getLeftConatiner()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
    .locals 6

    .line 65
    sget v0, Landroidx/apppickerview/R$layout;->app_picker_list:I

    const/16 v1, 0x102

    const/16 v2, 0x100

    if-ne p2, v2, :cond_0

    .line 66
    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->hasAllAppsInList()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    sget v0, Landroidx/apppickerview/R$layout;->app_picker_list_header:I

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    .line 69
    sget v0, Landroidx/apppickerview/R$layout;->app_picker_list_footer:I

    .line 72
    :cond_1
    :goto_0
    iget-object v3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    sget v0, Landroidx/apppickerview/R$id;->widget_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 75
    iget v3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mType:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 92
    :pswitch_0
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Landroidx/apppickerview/R$layout;->app_picker_frame_radiobutton:I

    sget v5, Landroidx/apppickerview/R$id;->left_frame:I

    .line 93
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    .line 88
    :pswitch_1
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Landroidx/apppickerview/R$layout;->app_picker_frame_checkbox:I

    sget v5, Landroidx/apppickerview/R$id;->left_frame:I

    .line 89
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    .line 83
    :pswitch_2
    iget-object v3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v5, Landroidx/apppickerview/R$layout;->app_picker_frame_actionbutton:I

    .line 84
    invoke-virtual {v3, v5, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    .line 79
    :pswitch_3
    iget-object v3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v5, Landroidx/apppickerview/R$layout;->app_picker_frame_switch:I

    .line 80
    invoke-virtual {v3, v5, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 97
    :cond_2
    :goto_1
    sget v0, Landroidx/apppickerview/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/apppickerview/widget/AbsAdapter;->limitFontLarge(Landroid/widget/TextView;)V

    .line 98
    sget v0, Landroidx/apppickerview/R$id;->summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/apppickerview/widget/AbsAdapter;->limitFontLarge(Landroid/widget/TextView;)V

    if-ne p2, v2, :cond_3

    .line 100
    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->hasAllAppsInList()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 101
    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$HeaderViewHolder;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$HeaderViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    if-ne p2, v1, :cond_4

    .line 103
    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$FooterViewHolder;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$FooterViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_2

    .line 105
    :cond_4
    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;-><init>(Landroid/view/View;)V

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/apppickerview/widget/ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method
