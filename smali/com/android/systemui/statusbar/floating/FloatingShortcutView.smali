.class public Lcom/android/systemui/statusbar/floating/FloatingShortcutView;
.super Landroid/widget/LinearLayout;
.source "FloatingShortcutView.java"


# instance fields
.field private mCenterLocationX:I

.field private mCenterLocationY:I

.field private mIconView:Lcom/android/systemui/widget/SystemUIImageView;

.field private mRadius:I

.field private mShortcut:Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

.field private mTitleView:Lcom/android/systemui/widget/SystemUITextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private playAnimation(IIFFFJ)V
    .locals 4

    .line 104
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 107
    invoke-virtual {p0, p5}, Landroid/widget/LinearLayout;->setScaleY(F)V

    int-to-float p4, p1

    .line 108
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, v1

    sub-float/2addr p4, p5

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setX(F)V

    int-to-float p4, p2

    .line 109
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, v1

    sub-float/2addr p4, p5

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setY(F)V

    .line 110
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v2, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v2, p2

    .line 113
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 115
    invoke-virtual {p3, p5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 116
    invoke-virtual {p3, p6, p7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    sget-object p4, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->SHORTCUT_SHOWING_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 117
    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const/4 p4, 0x0

    .line 118
    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 121
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mCenterLocationX:I

    .line 122
    iput p2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mCenterLocationY:I

    return-void
.end method


# virtual methods
.method public focusView(FFFJ)V
    .locals 8

    .line 100
    iget v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mCenterLocationX:I

    iget v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mCenterLocationY:I

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->playAnimation(IIFFFJ)V

    return-void
.end method

.method public getCenterLocationX()I
    .locals 0

    .line 126
    iget p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mCenterLocationX:I

    return p0
.end method

.method public getCenterLocationY()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mCenterLocationY:I

    return p0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mShortcut:Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getShortcutIndex()I
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mShortcut:Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->getShortcutIndex()I

    move-result p0

    return p0
.end method

.method public getShortcutProperty()I
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mShortcut:Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->getShortcutProperty()I

    move-result p0

    return p0
.end method

.method public hideView(II)V
    .locals 8

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x15e

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 92
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->playAnimation(IIFFFJ)V

    return-void
.end method

.method public hideViewImmediately(II)V
    .locals 8

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 96
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->playAnimation(IIFFFJ)V

    return-void
.end method

.method public isCollision(II)Z
    .locals 2

    .line 134
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mShortcut:Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mCenterLocationX:I

    sub-int/2addr p1, v0

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mCenterLocationY:I

    sub-int/2addr p2, v0

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    .line 140
    iget p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mRadius:I

    mul-int/2addr p0, p0

    sub-int/2addr p1, p0

    if-gez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public loadDimens()V
    .locals 2

    .line 63
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->floating_shortcut_app_shortcut_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mRadius:I

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 56
    sget v0, Lcom/android/systemui/R$id;->shortcut_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mIconView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 57
    sget v0, Lcom/android/systemui/R$id;->shortcut_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mTitleView:Lcom/android/systemui/widget/SystemUITextView;

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->loadDimens()V

    return-void
.end method

.method public setShortcut(Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;)V
    .locals 2

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mShortcut:Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mShortcut:Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mIconView:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->mTitleView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->getAppTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->getAppTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showView(II)V
    .locals 17

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    const-wide/16 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 86
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->playAnimation(IIFFFJ)V

    :cond_0
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const-wide/16 v15, 0x15e

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    .line 88
    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->playAnimation(IIFFFJ)V

    return-void
.end method
