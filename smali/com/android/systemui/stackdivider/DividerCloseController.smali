.class public Lcom/android/systemui/stackdivider/DividerCloseController;
.super Ljava/lang/Object;
.source "DividerCloseController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;,
        Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;
    }
.end annotation


# instance fields
.field private mCloseButtonView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

.field private mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

.field private mDividerSize:I

.field private mDockSide:I

.field private mIsShowing:Z

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mMinimizedPosition:I

.field private mMinimizedSplitView:Landroid/view/View;

.field private mPrevLocale:Ljava/util/Locale;

.field private mRemoved:Z

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;-><init>(Lcom/android/systemui/stackdivider/DividerCloseController;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    .line 52
    new-instance v0, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;-><init>(Lcom/android/systemui/stackdivider/DividerCloseController;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    const/4 p1, 0x2

    .line 57
    iput p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDockSide:I

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mRemoved:Z

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mIsShowing:Z

    .line 60
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mWindowManager:Landroid/view/WindowManager;

    .line 62
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 64
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050112

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v2, p1

    sub-int/2addr v1, v2

    .line 66
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDividerSize:I

    .line 67
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mPrevLocale:Ljava/util/Locale;

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->makeView()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/stackdivider/DividerCloseController;)Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/stackdivider/DividerCloseController;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    return-object p0
.end method

.method private adjustPositionWithDockSide()V
    .locals 4

    .line 147
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDockSide:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 161
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedPosition:I

    sub-int/2addr v0, v3

    iget p0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDividerSize:I

    sub-int/2addr v0, p0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 162
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p0, 0x15

    .line 163
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 150
    iget p0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedPosition:I

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p0, 0x31

    .line 151
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedPosition:I

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 155
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p0, 0x13

    .line 156
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    return-void
.end method

.method private isDimAnimating()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    .line 214
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$makeView$0(Landroid/view/View;)V
    .locals 0

    .line 77
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->dismissDockedStack()V

    return-void
.end method

.method private showToast()V
    .locals 9

    .line 218
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050403

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 221
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10501f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 223
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 224
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 225
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 226
    iget v3, v3, Landroid/graphics/Point;->x:I

    aget v4, v0, v5

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_0
    aget v3, v0, v5

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 227
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    sub-int/2addr v3, v2

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    const v4, 0x800035

    .line 233
    aget v0, v0, v6

    const-wide v5, 0x3ff199999999999aL    # 1.1

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-double v7, p0

    mul-double/2addr v7, v5

    double-to-int p0, v7

    add-int/2addr v0, p0

    sub-int/2addr v0, v1

    .line 233
    invoke-virtual {v2, v4, v3, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 235
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public addView()V
    .locals 7

    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mRemoved:Z

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0xa2f

    const/16 v5, 0x8

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "DividerClose"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 98
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 99
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->adjustPositionWithDockSide()V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mRemoved:Z

    return-void
.end method

.method public hide()V
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mIsShowing:Z

    if-nez v0, :cond_0

    const-string p0, "DividerCloseController"

    const-string v0, "MinimizedSplitView has already been hidden"

    .line 190
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mIsShowing:Z

    .line 195
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->removeView()V

    return-void
.end method

.method public synthetic lambda$makeView$1$DividerCloseController(Landroid/view/View;)Z
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->showToast()V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$startDimAnimation$2$DividerCloseController()V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public makeView()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->mw_close_button_while_minimized:I

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->mw_close_button_minimized:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    sget-object v1, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$4z792vZfrGB-kPArtMivEprgzNA;->INSTANCE:Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$4z792vZfrGB-kPArtMivEprgzNA;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mCloseButtonView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$sygi_9JvknLKFjOBI4bOIkz6fIA;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$sygi_9JvknLKFjOBI4bOIkz6fIA;-><init>(Lcom/android/systemui/stackdivider/DividerCloseController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public removeView()V
    .locals 2

    .line 109
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mRemoved:Z

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mRemoved:Z

    :cond_1
    return-void
.end method

.method public show(II)V
    .locals 2

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mIsShowing:Z

    .line 170
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    const-string v1, "DividerCloseController"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mRemoved:Z

    if-nez v0, :cond_1

    const-string p0, "MinimizedSplitView has already been added"

    .line 176
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 180
    :cond_1
    iput p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDockSide:I

    .line 181
    iput p2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedPosition:I

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->addView()V

    .line 184
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 185
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimDarknessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Animator is running"

    .line 171
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDimAnimation()V
    .locals 4

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->isDimAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDimBrightnessAnimator:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$UNaEz01o-ZBETzgNh71FdKfO_CQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$UNaEz01o-ZBETzgNh71FdKfO_CQ;-><init>(Lcom/android/systemui/stackdivider/DividerCloseController;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public update(Landroid/content/res/Configuration;)V
    .locals 1

    .line 120
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mPrevLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mPrevLocale:Ljava/util/Locale;

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->removeView()V

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->makeView()V

    .line 127
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mIsShowing:Z

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->addView()V

    :cond_1
    return-void
.end method

.method public updateDockside(II)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mDockSide:I

    .line 134
    iput p2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedPosition:I

    .line 136
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mRemoved:Z

    if-eqz p1, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->adjustPositionWithDockSide()V

    .line 142
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mMinimizedSplitView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerCloseController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
