.class public Lcom/android/systemui/qscoloring/SecQSColoringBlurController;
.super Ljava/lang/Object;
.source "SecQSColoringBlurController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;,
        Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mBlurHistory:Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;

.field private mContext:Landroid/content/Context;

.field private mCurrentBlurModel:Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mFloatingShortcutVisible:Z

.field private mHeightAnimationOverlapped:Z

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field private mHeightAnimatorExpand:Z

.field private mIsCollapseAnimationTriggered:Z

.field private mMirrorVisible:Z

.field private mOldDimAmount:F

.field private mPanelFullyCollapsed:Z

.field private mPanelFullyExpanded:Z

.field private mQsAnimator:Landroid/animation/ValueAnimator;

.field private mQsAnimatorExpand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mOldDimAmount:F

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mCurrentBlurModel:Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;

    .line 298
    new-instance v0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;

    invoke-direct {v0, p0}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;-><init>(Lcom/android/systemui/qscoloring/SecQSColoringBlurController;)V

    iput-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mBlurHistory:Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mContext:Landroid/content/Context;

    .line 62
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method private IsBackDropViewDrawn()Z
    .locals 1

    .line 215
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private applyPanelBlur(F)V
    .locals 1

    .line 116
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyPanelBlur(F)V

    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->makeBlurModel(F)Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mBlurHistory:Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;

    invoke-direct {p0, p1}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->makeBlurModel(F)Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;->putBlurModel(Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;)V

    return-void
.end method

.method private getInterpolatedFraction(F)F
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p0

    const p1, 0x3e4ccccd    # 0.2f

    mul-float/2addr p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private makeBlurModel(F)Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;
    .locals 13

    .line 222
    new-instance v12, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;

    iget-boolean v2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mMirrorVisible:Z

    iget-boolean v3, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mFloatingShortcutVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mQsAnimatorExpand:Z

    iget-boolean v5, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mHeightAnimatorExpand:Z

    iget-boolean v6, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mHeightAnimationOverlapped:Z

    iget-boolean v7, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mIsCollapseAnimationTriggered:Z

    iget-boolean v8, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mPanelFullyExpanded:Z

    iget-boolean v9, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mPanelFullyCollapsed:Z

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->IsBackDropViewDrawn()Z

    move-result v10

    move-object v0, v12

    move-object v1, p0

    move v11, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;-><init>(Lcom/android/systemui/qscoloring/SecQSColoringBlurController;ZZZZZZZZZF)V

    return-object v12
.end method

.method private optimizeBlurAmount(F)F
    .locals 4

    .line 137
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isKeyguardState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mQsAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    if-eqz v0, :cond_1

    .line 139
    iget-boolean v2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mQsAnimatorExpand:Z

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mHeightAnimatorExpand:Z

    :goto_1
    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v3

    .line 142
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->IsBackDropViewDrawn()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_2

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-nez v2, :cond_3

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mIsCollapseAnimationTriggered:Z

    :cond_3
    return p1
.end method


# virtual methods
.method public clearBlur()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlur(F)V

    .line 127
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->applyPanelBlur(F)V

    .line 128
    iput v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mOldDimAmount:F

    return-void
.end method

.method public getDumpString()Ljava/lang/String;
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QuickStar]SecQSColoringBlurController "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mCurrentBlurModel:Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->getLogString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "Current BlurModel is null ! "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mBlurHistory:Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;

    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;->getDumpString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAnimationOverlapped(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mHeightAnimationOverlapped:Z

    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBouncerShowing("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SecQSColoringBlurController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->clearBlur()V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->updateBlur()V

    :goto_0
    return-void
.end method

.method public setFullyCollapsed(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mPanelFullyCollapsed:Z

    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mPanelFullyExpanded:Z

    return-void
.end method

.method public setHeightAnimator(Landroid/animation/ValueAnimator;Z)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 191
    iput-boolean p2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mHeightAnimatorExpand:Z

    return-void
.end method

.method public setQsAnimator(Landroid/animation/ValueAnimator;Z)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mQsAnimator:Landroid/animation/ValueAnimator;

    .line 184
    iput-boolean p2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mQsAnimatorExpand:Z

    return-void
.end method

.method public updateBlur()V
    .locals 1

    .line 69
    iget v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mOldDimAmount:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->updateBlur(F)V

    return-void
.end method

.method public updateBlur(F)V
    .locals 4

    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mIsCollapseAnimationTriggered:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mPanelFullyExpanded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mPanelFullyCollapsed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mIsCollapseAnimationTriggered:Z

    .line 77
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mFloatingShortcutVisible:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    .line 79
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mMirrorVisible:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mIsCollapseAnimationTriggered:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 82
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->getInterpolatedFraction(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->optimizeBlurAmount(F)F

    move-result v0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 85
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mCurrentBlurModel:Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;

    if-eqz v1, :cond_5

    iget v2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mOldDimAmount:F

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->needToPrintLog(FF)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 86
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->makeBlurModel(F)Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 87
    iget-object v2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mCurrentBlurModel:Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->isEquals(Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 88
    :cond_6
    sget-boolean v2, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBlur(amount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mOldDimAmount:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " >> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->getLogString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "[QuickStar]SecQSColoringBlurController"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_7
    iput-object v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mCurrentBlurModel:Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;

    .line 94
    :cond_8
    iget p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mOldDimAmount:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_9

    return-void

    .line 95
    :cond_9
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isShadeState()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_c

    .line 97
    iget-boolean p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mHeightAnimatorExpand:Z

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mOldDimAmount:F

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_b

    :cond_a
    iget-boolean p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mHeightAnimatorExpand:Z

    if-nez p1, :cond_c

    iget p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mOldDimAmount:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_c

    :cond_b
    return-void

    .line 103
    :cond_c
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isShadeState()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->IsBackDropViewDrawn()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mFloatingShortcutVisible:Z

    if-nez p1, :cond_d

    .line 104
    iget-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object p1

    if-eqz p1, :cond_e

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v1, v0

    .line 107
    invoke-virtual {p1, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlur(F)V

    goto :goto_2

    .line 110
    :cond_d
    invoke-direct {p0, v0}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->applyPanelBlur(F)V

    .line 112
    :cond_e
    :goto_2
    iput v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mOldDimAmount:F

    return-void
.end method

.method public updateFloatingShortcutVisibility(Z)V
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFloatingShortcutVisibility("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SecQSColoringBlurController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-boolean p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mFloatingShortcutVisible:Z

    const/4 p1, 0x0

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->updateBlur(F)V

    return-void
.end method

.method public updateMirrorVisibility(Z)V
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMirrorVisibility("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SecQSColoringBlurController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-boolean p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->mMirrorVisible:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->updateBlur(F)V

    return-void
.end method
