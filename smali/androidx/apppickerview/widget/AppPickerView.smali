.class public Landroidx/apppickerview/widget/AppPickerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "AppPickerView.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;,
        Landroidx/apppickerview/widget/AppPickerView$FooterViewHolder;,
        Landroidx/apppickerview/widget/AppPickerView$HeaderViewHolder;,
        Landroidx/apppickerview/widget/AppPickerView$ViewHolder;,
        Landroidx/apppickerview/widget/AppPickerView$OnBindListener;,
        Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;,
        Landroidx/apppickerview/widget/AppPickerView$AppPickerOrder;,
        Landroidx/apppickerview/widget/AppPickerView$AppPickerType;
    }
.end annotation


# instance fields
.field private mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

.field private mGridSpacingDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mOrder:I

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Landroidx/apppickerview/widget/AppPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, p2, v0}, Landroidx/apppickerview/widget/AppPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    invoke-virtual {p0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/apppickerview/widget/AppPickerView;)Landroidx/apppickerview/widget/AbsAdapter;
    .locals 0

    .line 52
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    return-object p0
.end method

.method public static getInstalledPackages(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 191
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getInstalledPackagesWithLabel(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-static {p0}, Landroidx/apppickerview/widget/AppPickerView;->getInstalledPackages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 184
    invoke-static {}, Landroidx/apppickerview/widget/DataManager;->getInstance()Landroidx/apppickerview/widget/DataManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroidx/apppickerview/widget/DataManager;->resetPackages(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getLayoutManager(I)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 253
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 251
    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-object p1
.end method


# virtual methods
.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 219
    check-cast p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    .line 221
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getActionButton()Landroid/widget/ImageButton;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :cond_0
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIcon()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :cond_1
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 233
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 236
    :cond_2
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 238
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :cond_3
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSwitch()Landroid/widget/Switch;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 243
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_4
    return-void
.end method

.method public setAppPickerView(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(ILjava/util/List;ILjava/util/List;)V

    return-void
.end method

.method public setAppPickerView(ILjava/util/List;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroidx/apppickerview/widget/AppPickerView;->getInstalledPackages(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    .line 151
    :cond_0
    iput p1, p0, Landroidx/apppickerview/widget/AppPickerView;->mType:I

    .line 152
    iput p3, p0, Landroidx/apppickerview/widget/AppPickerView;->mOrder:I

    .line 153
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1, p3, p4}, Landroidx/apppickerview/widget/AbsAdapter;->getAppPickerAdapter(Landroid/content/Context;Ljava/util/List;IILjava/util/List;)Landroidx/apppickerview/widget/AbsAdapter;

    move-result-object p2

    iput-object p2, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    .line 155
    iget p2, p0, Landroidx/apppickerview/widget/AppPickerView;->mType:I

    const/4 p3, 0x7

    const/16 p4, 0x8

    if-eq p2, p3, :cond_1

    if-eq p2, p4, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    iget-object p2, p0, Landroidx/apppickerview/widget/AppPickerView;->mGridSpacingDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    if-nez p2, :cond_2

    .line 159
    new-instance p2, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;

    const/4 p3, 0x4

    const/4 v0, 0x1

    invoke-direct {p2, p3, p4, v0}, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;-><init>(IIZ)V

    iput-object p2, p0, Landroidx/apppickerview/widget/AppPickerView;->mGridSpacingDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 164
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView;->getLayoutManager(I)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 165
    iget-object p1, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V
    .locals 0
    .param p1    # Landroidx/apppickerview/widget/AppPickerView$OnBindListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 173
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    if-eqz p0, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    :cond_0
    return-void
.end method
