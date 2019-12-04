.class public Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;
.super Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;
.source "AppDockItemInfoViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/appdock/model/AppDockItemInfo$ItemCallback;


# instance fields
.field private mContentView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mEditDeleteView:Landroid/widget/ImageView;

.field mEditDragAction:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field private mIconView:Landroid/widget/ImageView;

.field private mItemInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

.field public mLoadRunnable:Ljava/lang/Runnable;

.field mLongClickAction:Ljava/lang/Runnable;

.field private final mNotSupportedReason:[I

.field private mTitleView:Lcom/android/systemui/appdock/view/ContrastTextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .line 93
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->appdock_item_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 55
    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mNotSupportedReason:[I

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockItemInfoViewHolder$m_z5G6ZUt_IrbasZU4ZvR8szVcE;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockItemInfoViewHolder$m_z5G6ZUt_IrbasZU4ZvR8szVcE;-><init>(Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mEditDragAction:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockItemInfoViewHolder$Y0y5fhUmpSpA39VmzbcHc1cbquo;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockItemInfoViewHolder$Y0y5fhUmpSpA39VmzbcHc1cbquo;-><init>(Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mLongClickAction:Ljava/lang/Runnable;

    .line 96
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mContext:Landroid/content/Context;

    .line 98
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    .line 99
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/appdock/view/ContrastTextView;

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mTitleView:Lcom/android/systemui/appdock/view/ContrastTextView;

    .line 100
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 101
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->icon_edit_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mEditDeleteView:Landroid/widget/ImageView;

    .line 103
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mNotSupportedReason:[I

    sget p1, Lcom/android/systemui/R$string;->dream_cant_use_this_app_in_multi_window_view_tpop:I

    aput p1, p0, v2

    .line 104
    sget p1, Lcom/android/systemui/R$string;->dream_cant_use_this_launcher_in_multi_window_view_tpop:I

    const/4 v0, 0x1

    aput p1, p0, v0

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;)Lcom/android/systemui/appdock/model/AppDockItemInfo;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    return-object p0
.end method

.method private checkDisableAddToEdit()Z
    .locals 3

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->getParentView()Lcom/android/systemui/appdock/view/AppDockBaseItemListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getRVType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getFavoriteApps()Lcom/android/systemui/appdock/model/AppDockFavoriteApps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/model/AppDockFavoriteApps;->getCount()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 84
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->showFavitesMaxToast(Landroid/content/Context;)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private executeLongClick(Landroid/view/View;)V
    .locals 2

    .line 316
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 318
    sget-boolean p1, Lcom/android/systemui/Rune;->APPDOCK_ENABLED:Z

    if-nez p1, :cond_0

    return-void

    .line 330
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "icon drawable is null."

    .line 331
    invoke-static {p1, p0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 335
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 336
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder$1;-><init>(Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;)V

    const/4 p0, 0x1

    invoke-static {v0, p1, v1, p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->create(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;I)Lcom/samsung/android/multiwindow/DragAndDropHelper;

    move-result-object p0

    .line 353
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->show()V

    return-void
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 357
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    .line 358
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 357
    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 359
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 360
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 361
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 231
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/AppDockStateManager;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->getParentView()Lcom/android/systemui/appdock/view/AppDockBaseItemListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getRVType()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mEditDragAction:Ljava/lang/Runnable;

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mLongClickAction:Ljava/lang/Runnable;

    .line 241
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    goto :goto_2

    .line 253
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 243
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    const-string p1, "[%d, %d], raw=[%d, %d]"

    .line 245
    invoke-static {p1, v5}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x1f4

    if-ne v2, p1, :cond_4

    const-wide/16 v2, 0x12c

    goto :goto_1

    :cond_4
    int-to-long v2, v2

    :goto_1
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return v1
.end method

.method private showFavitesMaxToast(Landroid/content/Context;)V
    .locals 3

    .line 290
    sget p0, Lcom/android/systemui/R$string;->appdock_edit_add_disable_max:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    .line 291
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 290
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 291
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateViewByAppType()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    iget v0, v0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mAppVHType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "AppVHType.TYPE_EDIT_EMPTY : updateView"

    .line 217
    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 219
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mEditDeleteView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->WIDTH:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v3, Lcom/android/systemui/R$dimen;->appdock_edit_ui_item_delete_icon_size:I

    invoke-static {v0, v1, v3}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mEditDeleteView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->HEIGHT:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v3, Lcom/android/systemui/R$dimen;->appdock_edit_ui_item_delete_icon_size:I

    invoke-static {v0, v1, v3}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mEditDeleteView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mEditDeleteView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockItemInfoViewHolder$LD204JBPkp25dMBfbo0MPuE2jAk;

    invoke-direct {v1, p0}, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockItemInfoViewHolder$LD204JBPkp25dMBfbo0MPuE2jAk;-><init>(Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mEditDeleteView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateViewByRVType()V
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->getParentView()Lcom/android/systemui/appdock/view/AppDockBaseItemListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getRVType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->WIDTH:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v2, Lcom/android/systemui/R$dimen;->appdock_edit_ui_item_icon_size:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->HEIGHT:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v2, Lcom/android/systemui/R$dimen;->appdock_edit_ui_item_icon_size:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->TOP_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v2, Lcom/android/systemui/R$dimen;->appdock_edit_ui_item_icon_margin_top:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->BOTTOM_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v2, Lcom/android/systemui/R$dimen;->appdock_edit_ui_item_icon_margin_bottom:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 192
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mTitleView:Lcom/android/systemui/appdock/view/ContrastTextView;

    sget v0, Lcom/android/systemui/R$dimen;->appdock_edit_ui_item_text_size:I

    invoke-static {p0, v0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setTextDimenSize(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->WIDTH:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v2, Lcom/android/systemui/R$dimen;->appdock_grid_ui_item_icon_size:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->HEIGHT:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v2, Lcom/android/systemui/R$dimen;->appdock_grid_ui_item_icon_size:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->TOP_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v2, Lcom/android/systemui/R$dimen;->appdock_grid_ui_item_icon_margin_top:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->BOTTOM_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v2, Lcom/android/systemui/R$dimen;->appdock_grid_ui_item_icon_margin_bottom:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 180
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mTitleView:Lcom/android/systemui/appdock/view/ContrastTextView;

    sget v0, Lcom/android/systemui/R$dimen;->appdock_grid_ui_item_text_size:I

    invoke-static {p0, v0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setTextDimenSize(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->WIDTH:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v2, Lcom/android/systemui/R$dimen;->appdock_list_ui_item_icon_size:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->HEIGHT:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v2, Lcom/android/systemui/R$dimen;->appdock_list_ui_item_icon_size:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->TOP_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v2, Lcom/android/systemui/R$dimen;->appdock_list_ui_item_icon_margin_top:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->BOTTOM_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v2, Lcom/android/systemui/R$dimen;->appdock_list_ui_item_icon_margin_bottom:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 168
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mTitleView:Lcom/android/systemui/appdock/view/ContrastTextView;

    sget v0, Lcom/android/systemui/R$dimen;->appdock_list_ui_item_text_size:I

    invoke-static {p0, v0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setTextDimenSize(Landroid/widget/TextView;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method checkDisable()Z
    .locals 3

    .line 382
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/AppDockStateManager;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->getParentView()Lcom/android/systemui/appdock/view/AppDockBaseItemListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getRVType()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 384
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getFavoriteApps()Lcom/android/systemui/appdock/model/AppDockFavoriteApps;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {v2}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/appdock/model/AppDockFavoriteApps;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 388
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    iget p0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mAppVHType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    return v1

    .line 392
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->isDisabled()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getAppInfo()Lcom/android/systemui/appdock/model/AppDockItemInfo;
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    return-object p0
.end method

.method public getContentView()Landroid/widget/LinearLayout;
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getParentView()Lcom/android/systemui/appdock/view/AppDockBaseItemListView;
    .locals 0

    .line 366
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;

    return-object p0
.end method

.method public synthetic lambda$new$0$AppDockItemInfoViewHolder()V
    .locals 5

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->checkDisableAddToEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getFavoriteApps()Lcom/android/systemui/appdock/model/AppDockFavoriteApps;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->getAppInfo()Lcom/android/systemui/appdock/model/AppDockItemInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/appdock/model/AppDockFavoriteApps;->addCache(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->updateDisableState()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 70
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 71
    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x1

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v4, "mEditDragAction loc=[%d, %d]"

    invoke-static {v4, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/appdock/event/AppDockEditDragStartEvent;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->getAppInfo()Lcom/android/systemui/appdock/model/AppDockItemInfo;

    move-result-object p0

    aget v2, v1, v2

    aget v1, v1, v3

    invoke-direct {v4, p0, v2, v1}, Lcom/android/systemui/appdock/event/AppDockEditDragStartEvent;-><init>(Lcom/android/systemui/appdock/model/AppDockItemInfo;II)V

    invoke-virtual {v0, v4}, Lcom/android/systemui/appdock/event/EventBus;->send(Lcom/android/systemui/appdock/event/EventBus$Event;)V

    return-void
.end method

.method public synthetic lambda$new$1$AppDockItemInfoViewHolder()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->executeLongClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$updateView$2$AppDockItemInfoViewHolder(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 129
    invoke-direct {p0, p2}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$updateViewByAppType$3$AppDockItemInfoViewHolder(Landroid/view/View;)V
    .locals 0

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->performEditDelete()V

    return-void
.end method

.method public onAppDataLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 296
    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onBind(Lcom/android/systemui/appdock/model/AppDockItemInfo;)V
    .locals 1

    .line 109
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 111
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {p1, p0}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->addCallback(Lcom/android/systemui/appdock/model/AppDockItemInfo$ItemCallback;)V

    .line 112
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {p1, v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->loadAppInfoData(Lcom/android/systemui/appdock/model/AppDockItemInfo;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mLoadRunnable:Ljava/lang/Runnable;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->updateView()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 271
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/AppDockStateManager;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->getParentView()Lcom/android/systemui/appdock/view/AppDockBaseItemListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getRVType()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->checkDisableAddToEdit()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/appdock/event/AppDockEditAddEvent;

    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/event/AppDockEditAddEvent;-><init>(Lcom/android/systemui/appdock/model/AppDockItemInfo;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/appdock/event/EventBus;->send(Lcom/android/systemui/appdock/event/EventBus$Event;)V

    :cond_1
    return-void

    .line 283
    :cond_2
    invoke-static {}, Lcom/android/systemui/appdock/AppDockDI;->getActivityStarter()Lcom/android/systemui/appdock/ActivityStarterInterface;

    move-result-object v0

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/appdock/ActivityStarterInterface;->getStartingWindowingModeFromClickEvent(Landroid/content/Context;)I

    move-result p1

    .line 285
    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v2, v3, p1, v1}, Lcom/android/systemui/appdock/ActivityStarterInterface;->startApp(Lcom/android/systemui/appdock/model/AppDockItemInfo;Landroid/view/View;II)V

    .line 286
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/appdock/event/LaunchAppEvent;

    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/event/LaunchAppEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/appdock/event/EventBus;->send(Lcom/android/systemui/appdock/event/EventBus$Event;)V

    return-void
.end method

.method public onUnbind()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {v0, p0}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->removeCallback(Lcom/android/systemui/appdock/model/AppDockItemInfo$ItemCallback;)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mTitleView:Lcom/android/systemui/appdock/view/ContrastTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public performEditDelete()V
    .locals 2

    .line 225
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 226
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/appdock/event/AppDockEditRemoveEvent;

    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-direct {v1, p0}, Lcom/android/systemui/appdock/event/AppDockEditRemoveEvent;-><init>(Lcom/android/systemui/appdock/model/AppDockItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/appdock/event/EventBus;->send(Lcom/android/systemui/appdock/event/EventBus$Event;)V

    return-void
.end method

.method public setContrastWord(Ljava/lang/String;)V
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mTitleView:Lcom/android/systemui/appdock/view/ContrastTextView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/ContrastTextView;->setContrastWord(Ljava/lang/String;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 301
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 302
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 301
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 303
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 304
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 305
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 307
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 308
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public updateDisableState()V
    .locals 5

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->checkDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    sget v1, Lcom/android/systemui/R$color;->appdock_disabled_text_color:I

    goto :goto_0

    .line 141
    :cond_0
    sget v1, Lcom/android/systemui/R$color;->appdock_enabled_text_color:I

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mTitleView:Lcom/android/systemui/appdock/view/ContrastTextView;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v0, :cond_1

    .line 147
    sget v1, Lcom/android/systemui/R$color;->appdock_disabled_text_shadow_color:I

    goto :goto_1

    .line 148
    :cond_1
    sget v1, Lcom/android/systemui/R$color;->appdock_enabled_text_shadow_color:I

    .line 149
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mTitleView:Lcom/android/systemui/appdock/view/ContrastTextView;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 150
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v3, v4}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 151
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const/4 v4, 0x0

    .line 149
    invoke-virtual {v2, v3, v4, v4, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 152
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mTitleView:Lcom/android/systemui/appdock/view/ContrastTextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 154
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public updateView()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 118
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "item Type=%d, pos=%d"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mTitleView:Lcom/android/systemui/appdock/view/ContrastTextView;

    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {v1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {v1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setHapticFeedbackEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockItemInfoViewHolder$sIvHTJypy61fKu_rVhq1VfNor-M;

    invoke-direct {v1, p0}, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockItemInfoViewHolder$sIvHTJypy61fKu_rVhq1VfNor-M;-><init>(Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->updateDisableState()V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->updateViewByRVType()V

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->updateViewByAppType()V

    return-void
.end method
