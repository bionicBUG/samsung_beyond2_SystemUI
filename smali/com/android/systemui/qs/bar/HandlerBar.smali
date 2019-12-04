.class public Lcom/android/systemui/qs/bar/HandlerBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "HandlerBar.java"


# instance fields
.field private mExpandedFraction:F

.field private mHandler:Landroid/widget/ImageView;

.field mOldHeight:I

.field mOldOrientation:I

.field private mQSSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

.field private mTouchAnimator:Lcom/android/systemui/qs/TouchAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mOldOrientation:I

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mOldHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/bar/HandlerBar;)Lcom/android/systemui/qs/TouchAnimator;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mTouchAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/bar/HandlerBar;)Lcom/android/systemui/qs/QSSecurityFooter;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mQSSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/bar/HandlerBar;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mExpandedFraction:F

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/bar/HandlerBar;)Landroid/widget/ImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandler:Landroid/widget/ImageView;

    return-object p0
.end method

.method private updateAnimator()V
    .locals 5

    .line 84
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandler:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    .line 85
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mQSSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    .line 86
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v1

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const v1, 0x3e19999a    # 0.15f

    .line 87
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mTouchAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getBarHeight()I
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_handler_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qspanel_handler_layout_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->qs_bar_handler:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/qs/bar/HandlerBar$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/HandlerBar$1;-><init>(Lcom/android/systemui/qs/bar/HandlerBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->handler_image_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandler:Landroid/widget/ImageView;

    .line 53
    check-cast p1, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mQSSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    .line 54
    iget-object p1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mQSSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/HandlerBar;->updateAnimator()V

    .line 56
    iget-object p1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mQSSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    new-instance v0, Lcom/android/systemui/qs/bar/HandlerBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/HandlerBar$2;-><init>(Lcom/android/systemui/qs/bar/HandlerBar;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSSecurityFooter;->setQSSecurityFooterCallback(Lcom/android/systemui/qs/QSSecurityFooter$QSSecurityFooterCallback;)V

    .line 68
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mQSSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 93
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mOldOrientation:I

    if-eq v0, v1, :cond_1

    const/4 v0, -0x1

    .line 99
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_handler_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 100
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qspanel_handler_layout_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qspanel_handler_layout_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mOldOrientation:I

    :cond_1
    return-void
.end method

.method public onPanelColorChanged(Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V
    .locals 0

    return-void
.end method

.method public setPosition(F)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandler:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mQSSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mQSSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    .line 76
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->hasFooter()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mTouchAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mExpandedFraction:F

    .line 80
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    :goto_0
    return-void
.end method
