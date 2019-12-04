.class public Lcom/android/systemui/stackdivider/GuideView;
.super Landroid/widget/FrameLayout;
.source "GuideView.java"


# static fields
.field public static final SINE_IN_OUT33:Landroid/view/animation/Interpolator;


# instance fields
.field private mDim:Landroid/widget/ImageView;

.field private mDockSide:I

.field private mDuration:I

.field private mFocusedRect:Landroid/graphics/Rect;

.field private mFocusedStackWindowingMode:I

.field private mGradient:Landroid/graphics/drawable/GradientDrawable;

.field private mGuide:Landroid/widget/ImageView;

.field private mGuideColor:[I

.field private mIsHorizontalDivision:Z

.field private mRect:Landroid/widget/ImageView;

.field private mStableInsets:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 63
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/stackdivider/GuideView;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    .line 55
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mStableInsets:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 60
    iput-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    return-void
.end method

.method private isDockSideRight()Z
    .locals 1

    .line 179
    iget p0, p0, Lcom/android/systemui/stackdivider/GuideView;->mDockSide:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isDockSideTopLeft()Z
    .locals 2

    .line 170
    iget p0, p0, Lcom/android/systemui/stackdivider/GuideView;->mDockSide:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private setGradient()V
    .locals 2

    .line 269
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mIsHorizontalDivision:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 270
    iget v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    if-ne v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    .line 276
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideView;->isDockSideRight()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    iget v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    if-ne v0, v1, :cond_2

    .line 278
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    .line 283
    :cond_3
    iget v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    if-ne v0, v1, :cond_4

    .line 284
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/GuideView;->setGuideColor(I)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setGuideColor(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->multiwindow_divider_guideview_rect_end_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    aput v1, p1, v0

    .line 303
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    .line 304
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->multiwindow_divider_guideview_guide_color:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 303
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    aput p1, v1, v0

    .line 307
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 309
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    return-void
.end method


# virtual methods
.method cancelAnimation()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 265
    iget-object p0, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method dismiss(Landroid/graphics/Point;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 7

    .line 187
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 188
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mIsHorizontalDivision:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 189
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 190
    iget v1, p1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 192
    :cond_0
    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 193
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 196
    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 198
    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    .line 199
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 200
    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 201
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/GuideView;->mIsHorizontalDivision:Z

    const/4 v5, -0x1

    const/4 v6, 0x3

    if-eqz v4, :cond_2

    .line 202
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 203
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 204
    iget v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    if-ne v2, v6, :cond_1

    .line 205
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 206
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 207
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p1, v0

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 209
    :cond_1
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 210
    iget-object v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v2, p1

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v2, p1

    .line 211
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v2, p1

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 214
    :cond_2
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 215
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideView;->isDockSideRight()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 219
    iget-object v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 220
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v2

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 223
    :cond_3
    iget v4, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    if-ne v4, v6, :cond_4

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideView;->isDockSideTopLeft()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iget v4, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    if-eq v4, v6, :cond_6

    .line 226
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideView;->isDockSideTopLeft()Z

    move-result v4

    if-nez v4, :cond_6

    .line 228
    :cond_5
    iget p1, p1, Landroid/graphics/Point;->x:I

    sub-int v4, p1, v2

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v4, p1, v2

    .line 229
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 230
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v2

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 233
    :cond_6
    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 234
    iget-object v4, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 235
    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v1, p1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 238
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 239
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 240
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 241
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 243
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 244
    sget-object v0, Lcom/android/systemui/stackdivider/GuideView;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x96

    .line 245
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v2, 0x64

    .line 246
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 247
    iget-object v4, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 249
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 250
    sget-object v4, Lcom/android/systemui/stackdivider/GuideView;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 251
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 252
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 253
    new-instance v0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideView$1ZTlaEvXglIG2Y-foAnGQqP2DkE;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$GuideView$1ZTlaEvXglIG2Y-foAnGQqP2DkE;-><init>(Lcom/android/systemui/stackdivider/GuideView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 255
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 256
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x0
    .end array-data
.end method

.method init(ILandroid/graphics/Rect;ZLandroid/graphics/Rect;II)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    .line 91
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 92
    iput-boolean p3, p0, Lcom/android/systemui/stackdivider/GuideView;->mIsHorizontalDivision:Z

    .line 93
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 94
    iput p5, p0, Lcom/android/systemui/stackdivider/GuideView;->mDockSide:I

    .line 97
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    if-eq p1, p6, :cond_0

    .line 98
    invoke-direct {p0, p6}, Lcom/android/systemui/stackdivider/GuideView;->setGuideColor(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$dismiss$1$GuideView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$show$0$GuideView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 72
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 73
    sget v0, Lcom/android/systemui/R$id;->multiwindow_divider_guideview:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    .line 74
    sget v0, Lcom/android/systemui/R$id;->multiwindow_divider_guideview_rect:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    .line 75
    sget v0, Lcom/android/systemui/R$id;->multiwindow_divider_guideview_dim:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->multiwindow_divider_guideview_rect_start_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 79
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->multiwindow_divider_guideview_rect_end_color:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 81
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->multiwindow_divider_guideview_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mDuration:I

    return-void
.end method

.method setDimLayer(F)V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method show(Landroid/graphics/Rect;ZLandroid/animation/AnimatorListenerAdapter;)V
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 105
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 106
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 110
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    .line 111
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 112
    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 113
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mIsHorizontalDivision:Z

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 114
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 115
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 116
    iget v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    if-ne v2, v3, :cond_0

    .line 117
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 118
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 119
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 121
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 122
    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v3, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 123
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, p1

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 126
    :cond_1
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 127
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 129
    iget v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    if-ne v2, v3, :cond_2

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideView;->isDockSideTopLeft()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideView;->isDockSideTopLeft()Z

    move-result v2

    if-nez v2, :cond_4

    .line 134
    :cond_3
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 135
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 136
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 139
    :cond_4
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 140
    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v2, v3, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 141
    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, p1

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_0
    if-nez p2, :cond_5

    .line 146
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const p2, 0x3f19999a    # 0.6f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 147
    sget-object p2, Lcom/android/systemui/stackdivider/GuideView;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 148
    iget p2, p0, Lcom/android/systemui/stackdivider/GuideView;->mDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 149
    iget-object p2, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 152
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 153
    sget-object p2, Lcom/android/systemui/stackdivider/GuideView;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    iget p2, p0, Lcom/android/systemui/stackdivider/GuideView;->mDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 155
    new-instance p2, Lcom/android/systemui/stackdivider/-$$Lambda$GuideView$DiibdRir0osyqBHg9G2mQM9Rwr4;

    invoke-direct {p2, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$GuideView$DiibdRir0osyqBHg9G2mQM9Rwr4;-><init>(Lcom/android/systemui/stackdivider/GuideView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 157
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideView;->setGradient()V

    .line 161
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 162
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 163
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 164
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 165
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 166
    iget-object p0, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
    .end array-data
.end method
