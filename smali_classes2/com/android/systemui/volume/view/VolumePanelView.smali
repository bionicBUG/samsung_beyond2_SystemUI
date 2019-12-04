.class public Lcom/android/systemui/volume/view/VolumePanelView;
.super Landroid/app/Dialog;
.source "VolumePanelView.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Dialog;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        ">;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mBackground:Landroid/view/ViewGroup;

.field private mCollapsedHeight:I

.field private final mContext:Landroid/content/Context;

.field private mCutoutSpec:Ljava/lang/String;

.field private mDownY:F

.field private mExpanded:Z

.field private mExpandedHeight:I

.field private mExpandedRowHeight:I

.field private final mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private mHasCutOutDisplay:Z

.field private mIsExpandedChanged:Z

.field private mIsLockscreen:Z

.field private mIsSwipe:Z

.field private mIsTracking:Z

.field private mNeedScroll:Z

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelHeight:I

.field private mRowContainer:Landroid/view/ViewGroup;

.field private mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private final mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

.field private mSwipeDistance:F

.field private mTitleView:Landroid/widget/TextView;

.field private final mToastWrapper:Lcom/android/systemui/volume/util/ToastWrapper;

.field private mTouchDown:Z

.field private mUpY:F

.field private final mVolumePanelMotion:Lcom/android/systemui/volume/VolumePanelMotion;

.field private mVolumePanelView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    .line 86
    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mObservers:Ljava/util/ArrayList;

    .line 87
    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    .line 88
    const-class v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 89
    const-class v0, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/store/VolumePanelStore;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 90
    const-class v0, Lcom/android/systemui/volume/util/ToastWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/ToastWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mToastWrapper:Lcom/android/systemui/volume/util/ToastWrapper;

    .line 91
    const-class v0, Lcom/android/systemui/volume/VolumePanelMotion;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/VolumePanelMotion;

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/VolumePanelMotion;

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelView;->setCutoutSpec()V

    const/16 p1, 0x7e4

    .line 94
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->setDialogWindowAttributes(I)V

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelView;->initViews()V

    return-void
.end method

.method private addRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Landroid/view/ViewGroup;)V
    .locals 2

    .line 523
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$GudKs3hhAMcQ7-83dbV2-5P44ew;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$GudKs3hhAMcQ7-83dbV2-5P44ew;-><init>(Lcom/android/systemui/volume/view/VolumePanelView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Landroid/view/ViewGroup;)V

    .line 524
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getBackground(Z)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 269
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 272
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$color;->tw_system_primary_color:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10603e9

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 276
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->volume_panel_background_corner_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 277
    iget-object v4, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$color;->volume_panel_stroke_color:I

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 278
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/android/systemui/R$dimen;->volume_panel_background_stroke_width:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    int-to-float v3, v3

    aput v3, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v5, 0x2

    aput v3, v4, v5

    const/4 v5, 0x3

    aput v3, v4, v5

    const/4 v5, 0x4

    aput v3, v4, v5

    const/4 v5, 0x5

    aput v3, v4, v5

    const/4 v5, 0x6

    aput v3, v4, v5

    const/4 v5, 0x7

    aput v3, v4, v5

    .line 280
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 285
    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    if-eqz p1, :cond_0

    const/16 p0, 0xff

    goto :goto_1

    :cond_0
    const/16 p0, 0xe5

    .line 286
    :goto_1
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 287
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private initViews()V
    .locals 2

    .line 146
    sget v0, Lcom/android/systemui/R$layout;->volume_panel_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 148
    sget v0, Lcom/android/systemui/R$id;->volume_panel_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelView:Landroid/view/ViewGroup;

    .line 149
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$t9ds4VC26vN9DdNR0pgAAJwMF5g;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$t9ds4VC26vN9DdNR0pgAAJwMF5g;-><init>(Lcom/android/systemui/volume/view/VolumePanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 154
    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$8Ug8gMEdRJeY0xoEWf1f3zVTATA;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$8Ug8gMEdRJeY0xoEWf1f3zVTATA;-><init>(Lcom/android/systemui/volume/view/VolumePanelView;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->volume_panel_swipe_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mSwipeDistance:F

    .line 158
    sget v0, Lcom/android/systemui/R$id;->volume_panel_background:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mBackground:Landroid/view/ViewGroup;

    .line 159
    sget v0, Lcom/android/systemui/R$id;->volume_panel_contents_container:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    .line 160
    sget v0, Lcom/android/systemui/R$id;->volume_panel_title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTitleView:Landroid/widget/TextView;

    return-void
.end method

.method private isActiveStreamChanged(I)Z
    .locals 2

    .line 515
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/view/VolumeRowView;

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumeRowView;->getStream()I

    move-result p0

    .line 516
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, v1, :cond_0

    .line 517
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    :cond_0
    if-eq p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private setCutoutSpec()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "config_mainBuiltInDisplayCutout"

    const-string v4, "string"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 101
    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mCutoutSpec:Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mCutoutSpec:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mCutoutSpec:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHasCutOutDisplay:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 104
    :catch_0
    iput-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mCutoutSpec:Ljava/lang/String;

    .line 105
    iput-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHasCutOutDisplay:Z

    :goto_2
    return-void
.end method

.method private setDialogWindowAttributes(I)V
    .locals 4

    .line 164
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 166
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x2

    .line 167
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    const v2, 0x10c0128

    .line 168
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 174
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 175
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 177
    iget-boolean p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHasCutOutDisplay:Z

    if-eqz p0, :cond_0

    .line 178
    iget p0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x4000400

    or-int/2addr p0, v3

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 179
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 182
    :cond_0
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p0, -0x3

    .line 183
    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 p0, 0x31

    .line 184
    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p0, -0x1

    .line 185
    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-string p0, "SecVolumePanel"

    .line 186
    invoke-virtual {v2, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 p0, 0x30

    .line 193
    invoke-virtual {v0, p0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private startCollapseAnimation(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 11

    .line 478
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 480
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 481
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 486
    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mCollapsedHeight:I

    iget v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandedRowHeight:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_2

    .line 487
    iget v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mCollapsedHeight:I

    iget v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandedRowHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mCollapsedHeight:I

    goto :goto_1

    .line 482
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mCollapsedHeight:I

    iget v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandedRowHeight:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    .line 483
    iget v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mCollapsedHeight:I

    iget v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandedRowHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mCollapsedHeight:I

    .line 492
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandedHeight:I

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int v8, v0, v1

    .line 493
    iget v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mCollapsedHeight:I

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int v9, v0, v1

    .line 495
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/VolumePanelMotion;

    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mBackground:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTitleView:Landroid/widget/TextView;

    const/4 v5, 0x0

    iget v7, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mCollapsedHeight:I

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 498
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->isActiveStreamChanged(I)Z

    move-result v10

    .line 495
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/volume/VolumePanelMotion;->startExpandCollapseAnimation(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/TextView;ZZIIIZ)V

    return-void
.end method

.method private update(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V
    .locals 10

    .line 208
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    const/4 v1, 0x0

    .line 209
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsExpandedChanged:Z

    .line 210
    iget-boolean v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpanded:Z

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    .line 211
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsExpandedChanged:Z

    .line 212
    iput-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpanded:Z

    :cond_0
    if-eqz p2, :cond_5

    .line 216
    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpanded:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 217
    :goto_0
    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->MEDIA_DEFAULT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p2

    .line 218
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    .line 219
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v2

    .line 220
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    .line 222
    sget v4, Lcom/android/systemui/R$id;->volume_DefaultVolumeControlMain:I

    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;

    .line 223
    sget v5, Lcom/android/systemui/R$id;->volume_panel_expand_button:I

    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/view/VolumePanelExpandButton;

    .line 224
    sget v6, Lcom/android/systemui/R$id;->volume_panel_status_message_main:I

    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/volume/view/VolumePanelStatusMessage;

    .line 226
    sget v7, Lcom/android/systemui/R$id;->volume_panel_scroll_view:I

    invoke-virtual {p0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/volume/view/VolumePanelScrollView;

    .line 227
    iget-object v8, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v7, v8}, Lcom/android/systemui/volume/view/VolumePanelScrollView;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;)V

    const/16 v7, 0x8

    if-eqz p1, :cond_2

    .line 230
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 233
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object v9, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {v4, v8, v9, p2}, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;Z)V

    .line 234
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object v4, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v8, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/VolumePanelMotion;

    invoke-virtual {v5, p2, v4, v8}, Lcom/android/systemui/volume/view/VolumePanelExpandButton;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/android/systemui/volume/VolumePanelMotion;)V

    .line 235
    invoke-virtual {v5, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 237
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-boolean v4, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpanded:Z

    invoke-virtual {v6, p2, v0, v2, v4}, Lcom/android/systemui/volume/view/VolumePanelStatusMessage;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;ZZZ)V

    .line 238
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 239
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mBackground:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpanded:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/view/VolumePanelView;->getBackground(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 p2, 0x3f800000    # 1.0f

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    .line 245
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_3

    .line 242
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTitleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 248
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_5
    return-void
.end method

.method private updateLayout(Landroid/view/ViewGroup;I)V
    .locals 5

    .line 253
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 254
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const v3, 0x3f59999a    # 0.85f

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    .line 255
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_1
    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 257
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->volume_panel_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-nez v0, :cond_3

    .line 258
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHasCutOutDisplay:Z

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    .line 260
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :cond_2
    add-int/2addr v2, p2

    .line 264
    :cond_3
    invoke-virtual {p1, v1, v2, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const/4 p0, 0x0

    .line 265
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private updateMediaDefaultPanelDivider(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 354
    sget v0, Lcom/android/systemui/R$id;->volume_panel_divider:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 355
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 356
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 357
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private updateRowContainerLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    .line 323
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 324
    :goto_0
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 330
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->volume_panel_row_container_padding_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_1

    .line 332
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->volume_panel_row_container_padding_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_1
    move v1, p1

    .line 334
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->volume_panel_row_container_padding_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_2

    :cond_2
    move p1, v1

    .line 337
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    invoke-virtual {v0, v2, v1, p0, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private updateRowOrder(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V
    .locals 1

    .line 502
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 504
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelView;->addRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 505
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 506
    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/systemui/volume/view/VolumePanelView;->isActiveStreamChanged(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 507
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 508
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelView;->addRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Landroid/view/ViewGroup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateRowsStartAlpha(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 6

    .line 341
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    .line 342
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    const/4 v1, 0x0

    .line 343
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 344
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 346
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 348
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 293
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 294
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 295
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x1

    .line 294
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/view/VolumePanelView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 297
    iput v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mCollapsedHeight:I

    .line 298
    iput v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mPanelHeight:I

    return-void
.end method

.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 310
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$pvcrx_kwdK0UNdfuSCJg6prGR9Q;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$pvcrx_kwdK0UNdfuSCJg6prGR9Q;-><init>(Lcom/android/systemui/volume/view/VolumePanelView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 316
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 317
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 49
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 533
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 534
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    .line 533
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/view/VolumePanelView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    .line 567
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsSwipe:Z

    .line 568
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 569
    invoke-virtual {p1, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 570
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 568
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/view/VolumePanelView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return v2

    .line 553
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mUpY:F

    .line 554
    iget v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mUpY:F

    iget v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDownY:F

    sub-float/2addr v0, v3

    .line 555
    iget-boolean v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTouchDown:Z

    if-eqz v3, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mSwipeDistance:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mNeedScroll:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsTracking:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsLockscreen:Z

    if-nez v0, :cond_6

    .line 556
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTouchDown:Z

    .line 557
    iget v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mUpY:F

    iget v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDownY:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpanded:Z

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mUpY:F

    iget v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDownY:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpanded:Z

    if-eqz v0, :cond_6

    .line 558
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsSwipe:Z

    .line 559
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SWIPE_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 560
    invoke-virtual {v0, v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    .line 559
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/view/VolumePanelView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    .line 546
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsSwipe:Z

    if-eqz v0, :cond_6

    .line 547
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsSwipe:Z

    return v2

    .line 539
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDownY:F

    .line 540
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsSwipe:Z

    .line 541
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTouchDown:Z

    .line 574
    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsSwipe:Z

    if-eqz v0, :cond_7

    return v2

    .line 577
    :cond_7
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public disposeActionObserver()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/VolumePanelMotion;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelMotion;->disposeActionObserver()V

    return-void
.end method

.method public disposeStateObservable()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    :cond_0
    return-void
.end method

.method public synthetic lambda$addRows$3$VolumePanelView(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Landroid/view/ViewGroup;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 7

    .line 525
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->volume_row_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/VolumeRowView;

    .line 526
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object v4, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v6, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/VolumePanelMotion;

    move-object v1, v0

    move-object v3, p3

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/volume/view/VolumeRowView;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/android/systemui/volume/VolumePanelMotion;)V

    .line 527
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$dispatch$2$VolumePanelView(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 312
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$initViews$0$VolumePanelView(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 151
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PANEL_LAYOUT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 152
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 p2, 0x1

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public synthetic lambda$initViews$1$VolumePanelView(Landroid/content/DialogInterface;)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/VolumePanelMotion;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumePanelMotion;->startShowAnimation(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 13

    .line 362
    sget-object v0, Lcom/android/systemui/volume/view/VolumePanelView$2;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 471
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsTracking:Z

    goto/16 :goto_3

    .line 467
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsTracking:Z

    goto/16 :goto_3

    .line 460
    :pswitch_2
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/volume/view/VolumePanelView;->updateRowOrder(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    .line 461
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 462
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->updateRowContainerLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto/16 :goto_3

    .line 452
    :pswitch_3
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 454
    sget p1, Lcom/android/systemui/R$id;->volume_panel_divider:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 455
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_3

    .line 419
    :pswitch_4
    sget v0, Lcom/android/systemui/R$id;->volume_panel_main_container:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 420
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    .line 421
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    .line 422
    iget v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mPanelHeight:I

    if-eq v3, v9, :cond_8

    .line 423
    iput v9, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mPanelHeight:I

    .line 425
    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 426
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    move p1, v2

    .line 425
    :goto_0
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez v0, :cond_2

    .line 429
    iget p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mCollapsedHeight:I

    if-nez p1, :cond_1

    .line 430
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 431
    iput v9, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 432
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    :cond_1
    iput v9, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mCollapsedHeight:I

    goto/16 :goto_3

    .line 436
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_8

    .line 437
    iput v9, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandedHeight:I

    .line 438
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandedRowHeight:I

    .line 439
    iget p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandedHeight:I

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mNeedScroll:Z

    .line 441
    iget-boolean p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsExpandedChanged:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mCollapsedHeight:I

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandedHeight:I

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    add-int v10, p1, v0

    .line 442
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    add-int v11, v9, p1

    .line 443
    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/VolumePanelMotion;

    iget-object v4, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mBackground:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTitleView:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/android/systemui/volume/VolumePanelMotion;->startExpandCollapseAnimation(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/TextView;ZZIIIZ)V

    goto/16 :goto_3

    .line 402
    :pswitch_5
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 404
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->updateRowContainerLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 406
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->updateRowsStartAlpha(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 407
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->updateMediaDefaultPanelDivider(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    if-nez v0, :cond_6

    .line 410
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->startCollapseAnimation(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 412
    :cond_6
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mNeedScroll:Z

    .line 413
    iput-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpanded:Z

    .line 414
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsExpandedChanged:Z

    goto :goto_3

    .line 398
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->showVolumeSafetyWarningDialog(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto :goto_3

    .line 394
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumePanelView;->showVolumeLimiterDialog()V

    goto :goto_3

    .line 383
    :pswitch_8
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 384
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 385
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 386
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/VolumePanelMotion;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/view/-$$Lambda$9BXQlgtbJqMs3cj80TltELNfjbs;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/-$$Lambda$9BXQlgtbJqMs3cj80TltELNfjbs;-><init>(Lcom/android/systemui/volume/view/VolumePanelView;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/volume/VolumePanelMotion;->startDismissAnimation(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 388
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumePanelView;->dismiss()V

    goto :goto_3

    .line 373
    :pswitch_9
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 374
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->onUpdate(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 375
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/volume/view/VolumePanelView;->updateRowOrder(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    goto :goto_3

    .line 364
    :pswitch_a
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsLockscreen:Z

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->onShow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 366
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/view/VolumePanelView;->updateRowOrder(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    .line 367
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->updateRowContainerLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 368
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->updateMediaDefaultPanelDivider(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 369
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mNeedScroll:Z

    :cond_8
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumePanelView$1;-><init>(Lcom/android/systemui/volume/view/VolumePanelView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public onShow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelView:Landroid/view/ViewGroup;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/view/VolumePanelView;->updateLayout(Landroid/view/ViewGroup;I)V

    .line 198
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    .line 200
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumePanelView;->update(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    return-void
.end method

.method public onUpdate(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumePanelView;->update(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    return-void
.end method

.method public setStore()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/view/VolumePanelView;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/VolumePanelMotion;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/volume/VolumePanelMotion;->initDependencies(Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    return-void
.end method

.method public showVolumeLimiterDialog()V
    .locals 3

    .line 581
    new-instance v0, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;-><init>(Landroid/content/Context;)V

    .line 582
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mToastWrapper:Lcom/android/systemui/volume/util/ToastWrapper;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/android/systemui/volume/util/ToastWrapper;)V

    .line 583
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showVolumeSafetyWarningDialog(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 587
    new-instance v0, Lcom/android/systemui/volume/view/VolumeSafetyWarningDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/VolumeSafetyWarningDialog;-><init>(Landroid/content/Context;)V

    .line 588
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/volume/view/VolumeSafetyWarningDialog;->setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;)V

    .line 589
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/view/VolumeSafetyWarningDialog;->initWindow(Z)V

    .line 590
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumeDisposable;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
