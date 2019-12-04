.class public Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;
.super Landroid/view/View;
.source "NavigationBarEdgePanel.java"


# static fields
.field private static final ARROW_ANGLE_WHEN_EXTENDED_DEGREES:F

.field private static final ARROW_LENGTH_DP:F

.field private static final ARROW_THICKNESS_DP:F

.field private static final CURRENT_ANGLE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURRENT_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURRENT_VERTICAL_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROTECTION_WIDTH_PX:I

.field private static final RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;


# instance fields
.field private final mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private final mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private mAngleOffset:F

.field private mArrowColor:I

.field private final mArrowColorAnimator:Landroid/animation/ValueAnimator;

.field private mArrowColorDark:I

.field private mArrowColorLight:I

.field private final mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

.field private final mArrowLength:F

.field private mArrowPaddingEnd:I

.field private final mArrowPath:Landroid/graphics/Path;

.field private mArrowStartColor:I

.field private final mArrowThickness:F

.field private mArrowsPointLeft:Z

.field private final mBaseTranslation:F

.field private mCheckTriggerBack:I

.field private mCurrentAngle:F

.field private mCurrentArrowColor:I

.field private mCurrentTranslation:F

.field private final mDensity:F

.field private mDesiredAngle:F

.field private mDesiredTranslation:F

.field private mDesiredVerticalTranslation:F

.field private mDisappearAmount:F

.field private mDragSlopPassed:Z

.field private mIsDark:Z

.field private mIsLeftPanel:Z

.field private mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private mMaxTranslation:F

.field private final mMinDeltaForSwitch:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreviousTouchTranslation:F

.field private mProtectionColor:I

.field private mProtectionColorDark:I

.field private mProtectionColorLight:I

.field private final mProtectionPaint:Landroid/graphics/Paint;

.field private final mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field private mScreenSize:I

.field private mSetGoneEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mShowProtection:Z

.field private mStartX:F

.field private mStartY:F

.field private final mSwipeThreshold:F

.field private mTotalTouchDelta:F

.field private final mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTriggerBack:Z

.field private final mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalTranslation:F

.field private final mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mVibrationTime:J

.field private final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->PROTECTION_WIDTH_PX:I

    .line 77
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x41980000    # 19.0f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x41900000    # 18.0f

    :goto_1
    sput v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->ARROW_LENGTH_DP:F

    .line 82
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x422e0000    # 43.5f

    goto :goto_2

    :cond_2
    const/high16 v0, 0x42600000    # 56.0f

    :goto_2
    sput v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->ARROW_ANGLE_WHEN_EXTENDED_DEGREES:F

    .line 97
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_3

    :cond_3
    const/high16 v0, 0x40200000    # 2.5f

    :goto_3
    sput v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->ARROW_THICKNESS_DP:F

    .line 107
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 118
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;

    .line 216
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$2;

    const-string v1, "currentAngle"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_ANGLE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 229
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$3;

    const-string v1, "currentTranslation"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 242
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$4;

    const-string v1, "verticalTranslation"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_VERTICAL_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 257
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    .line 143
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsDark:Z

    .line 157
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mShowProtection:Z

    .line 205
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSetGoneEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 259
    const-class v0, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDensity:F

    const/high16 v0, 0x42000000    # 32.0f

    .line 263
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->dp(F)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBaseTranslation:F

    .line 264
    sget v1, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->ARROW_LENGTH_DP:F

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->dp(F)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    .line 265
    sget v1, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->ARROW_THICKNESS_DP:F

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->dp(F)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowThickness:F

    .line 266
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->dp(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mMinDeltaForSwitch:F

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowThickness:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/4 v0, 0x2

    new-array v2, v0, [F

    .line 274
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    .line 275
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x78

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 276
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$5;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 285
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$bOecFcR5bBF6RggHYoy3PBO7S7o;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$bOecFcR5bBF6RggHYoy3PBO7S7o;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 293
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_ANGLE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 295
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x43fa0000    # 500.0f

    .line 296
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 297
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 298
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v3, 0x44bb8000    # 1500.0f

    .line 299
    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 300
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x42b40000    # 90.0f

    .line 301
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 304
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 306
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 307
    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x3f400000    # 0.75f

    .line 308
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 309
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v4, 0x43e10000    # 450.0f

    .line 310
    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 311
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 313
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v4, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_VERTICAL_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 317
    invoke-virtual {v4, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    .line 318
    invoke-virtual {v3, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    .line 315
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 320
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionPaint:Landroid/graphics/Paint;

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowThickness:F

    sget v3, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->PROTECTION_WIDTH_PX:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 322
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->loadDimens()V

    .line 324
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->loadColors(Landroid/content/Context;)V

    .line 325
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateArrowDirection()V

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->navigation_edge_action_drag_threshold:I

    .line 328
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSwipeThreshold:F

    const/16 p1, 0x8

    .line 329
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz p1, :cond_0

    .line 332
    new-instance p1, Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    .line 333
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mShowProtection:Z

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;F)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentAngle(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)F
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getCurrentAngle()F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;F)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentTranslation(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)F
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getCurrentTranslation()F

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;F)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setVerticalTranslation(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)F
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getVerticalTranslation()F

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowStartColor:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColor:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentArrowColor(I)V

    return-void
.end method

.method private calculatePath(FF)Landroid/graphics/Path;
    .locals 3

    .line 532
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v0, :cond_0

    neg-float p1, p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f400000    # 0.75f

    .line 535
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDisappearAmount:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    neg-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 542
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    return-object p0
.end method

.method private dp(F)F
    .locals 0

    .line 797
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDensity:F

    mul-float/2addr p0, p1

    return p0
.end method

.method private getCurrentAngle()F
    .locals 0

    .line 546
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentAngle:F

    return p0
.end method

.method private getCurrentTranslation()F
    .locals 0

    .line 550
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentTranslation:F

    return p0
.end method

.method private getStaticArrowWidth()F
    .locals 1

    .line 520
    sget v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->ARROW_ANGLE_WHEN_EXTENDED_DEGREES:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->polarToCartX(F)F

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    mul-float/2addr v0, p0

    return v0
.end method

.method private getVerticalTranslation()F
    .locals 0

    .line 748
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslation:F

    return p0
.end method

.method private handleMoveEvent(Landroid/view/MotionEvent;)V
    .locals 12

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 630
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mStartX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    .line 631
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mStartY:F

    sub-float/2addr p1, v2

    .line 632
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPreviousTouchTranslation:F

    sub-float v2, v1, v2

    .line 633
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 634
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    .line 635
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    goto :goto_0

    .line 637
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    .line 640
    :cond_1
    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPreviousTouchTranslation:F

    .line 643
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDragSlopPassed:Z

    const/4 v3, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSwipeThreshold:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 644
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDragSlopPassed:Z

    .line 645
    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-nez v2, :cond_2

    .line 646
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 647
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibrationTime:J

    .line 651
    :cond_2
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDisappearAmount:F

    .line 652
    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 654
    invoke-direct {p0, v6, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setTriggerBack(ZZ)V

    .line 658
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBaseTranslation:F

    cmpl-float v7, v1, v2

    const/high16 v8, 0x40800000    # 4.0f

    if-lez v7, :cond_4

    sub-float/2addr v1, v2

    .line 660
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mScreenSize:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    div-float/2addr v1, v7

    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    .line 661
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mMaxTranslation:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBaseTranslation:F

    sub-float/2addr v2, v7

    mul-float/2addr v1, v2

    add-float/2addr v7, v1

    move v2, v7

    goto :goto_1

    :cond_4
    sub-float v1, v2, v1

    div-float/2addr v1, v2

    .line 666
    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    .line 667
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBaseTranslation:F

    div-float v7, v2, v8

    mul-float/2addr v1, v7

    sub-float/2addr v2, v1

    .line 672
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    .line 675
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mMinDeltaForSwitch:F

    cmpl-float v7, v7, v9

    const/4 v9, 0x0

    if-lez v7, :cond_7

    .line 676
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_5

    move v1, v6

    goto :goto_2

    :cond_5
    move v1, v9

    .line 677
    :goto_2
    sget-boolean v7, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v7, :cond_7

    if-nez v1, :cond_6

    .line 679
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCheckTriggerBack:I

    or-int/2addr v7, v6

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCheckTriggerBack:I

    goto :goto_3

    .line 681
    :cond_6
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCheckTriggerBack:I

    and-int/lit8 v7, v7, -0x2

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCheckTriggerBack:I

    .line 687
    :cond_7
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v7, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 688
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 689
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    .line 690
    invoke-static {v7, v10}, Landroid/util/MathUtils;->mag(FF)F

    move-result v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    mul-float/2addr v10, v8

    .line 691
    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 692
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    mul-float/2addr v8, v7

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    .line 693
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v7, :cond_9

    :cond_8
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-nez v7, :cond_a

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v7, :cond_a

    .line 694
    :cond_9
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    const/high16 v8, -0x40800000    # -1.0f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    .line 698
    :cond_a
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mStartX:F

    sub-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v0, v8

    cmpl-float v0, v7, v0

    if-lez v0, :cond_c

    .line 700
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_b

    .line 701
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCheckTriggerBack:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCheckTriggerBack:I

    :cond_b
    move v1, v9

    goto :goto_4

    .line 704
    :cond_c
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_d

    .line 705
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCheckTriggerBack:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCheckTriggerBack:I

    .line 708
    :cond_d
    :goto_4
    invoke-direct {p0, v1, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setTriggerBack(ZZ)V

    .line 710
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-nez v0, :cond_e

    move v0, v4

    goto :goto_5

    .line 712
    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v0, :cond_10

    :cond_f
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v0, :cond_11

    .line 716
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getStaticArrowWidth()F

    move-result v0

    sub-float v0, v2, v0

    goto :goto_5

    :cond_11
    move v0, v2

    .line 718
    :goto_5
    invoke-direct {p0, v0, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setDesiredTranslation(FZ)V

    .line 719
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 721
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    sub-float/2addr v0, v1

    .line 723
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v2, v0

    div-float/2addr v1, v2

    .line 722
    invoke-static {v1, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 725
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v0

    .line 726
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr v1, p1

    .line 727
    invoke-direct {p0, v1, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setDesiredVerticalTransition(FZ)V

    return-void
.end method

.method private loadColors(Landroid/content/Context;)V
    .locals 3

    .line 488
    sget v0, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 489
    sget v1, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 490
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 491
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 492
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$color;->edge_back_light_icon_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorLight:I

    .line 493
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$color;->edge_back_dark_icon_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_1

    :cond_1
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorDark:I

    .line 494
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$color;->edge_back_dark_stroke_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorLight:I

    :goto_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionColorDark:I

    .line 495
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$color;->edge_back_light_stroke_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_3

    :cond_3
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorDark:I

    :goto_3
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionColorLight:I

    const/4 p1, 0x0

    .line 496
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateIsDark(Z)V

    return-void
.end method

.method private loadDimens()V
    .locals 2

    .line 475
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->navigation_edge_panel_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPaddingEnd:I

    .line 477
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 478
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mScreenSize:I

    return-void
.end method

.method private polarToCartX(F)F
    .locals 0

    float-to-double p0, p1

    .line 524
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private polarToCartY(F)F
    .locals 0

    float-to-double p0, p1

    .line 528
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private resetOnDown()V
    .locals 4

    .line 606
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 610
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 611
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    .line 612
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    .line 614
    invoke-direct {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setTriggerBack(ZZ)V

    .line 615
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setDesiredTranslation(FZ)V

    .line 616
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentTranslation(F)V

    .line 617
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 618
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPreviousTouchTranslation:F

    .line 619
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    const-wide/16 v2, 0x0

    .line 620
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibrationTime:J

    .line 621
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setDesiredVerticalTransition(FZ)V

    .line 622
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_0

    .line 623
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCheckTriggerBack:I

    :cond_0
    return-void
.end method

.method private setCurrentAngle(F)V
    .locals 0

    .line 792
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentAngle:F

    .line 793
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setCurrentArrowColor(I)V
    .locals 1

    .line 514
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentArrowColor:I

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 516
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setCurrentTranslation(F)V
    .locals 0

    .line 763
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentTranslation:F

    .line 764
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setDesiredTranslation(FZ)V
    .locals 1

    .line 752
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredTranslation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 753
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredTranslation:F

    if-nez p2, :cond_0

    .line 755
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentTranslation(F)V

    goto :goto_0

    .line 757
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setDesiredVerticalTransition(FZ)V
    .locals 1

    .line 731
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredVerticalTranslation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 732
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredVerticalTranslation:F

    if-nez p2, :cond_0

    .line 734
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setVerticalTranslation(F)V

    goto :goto_0

    .line 736
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 738
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private setTriggerBack(ZZ)V
    .locals 1

    .line 768
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-eq v0, p1, :cond_0

    .line 769
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    .line 770
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 771
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 774
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method private setVerticalTranslation(F)V
    .locals 0

    .line 743
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslation:F

    .line 744
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private triggerBack()V
    .locals 7

    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 557
    :goto_0
    sget-boolean v3, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v3, :cond_1

    const v0, 0xc37f

    const/4 v2, -0x1

    .line 558
    sget-object v3, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, v2, v3}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 560
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 563
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibrationTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x190

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 569
    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    const/high16 v2, -0x3f800000    # -4.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    const/high16 v2, -0x3f000000    # -8.0f

    const/high16 v3, 0x41000000    # 8.0f

    sub-float/2addr v0, v3

    .line 570
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    .line 571
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 575
    :cond_4
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$qL_Cvd7_6Xne4NYpi_Ofi326YV0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$qL_Cvd7_6Xne4NYpi_Ofi326YV0;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V

    .line 587
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 588
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$6;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$6;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_2

    .line 600
    :cond_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_2
    return-void
.end method

.method private updateAngle(Z)V
    .locals 2

    .line 779
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->ARROW_ANGLE_WHEN_EXTENDED_DEGREES:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    .line 780
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredAngle:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_1

    .line 782
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentAngle(F)V

    goto :goto_2

    .line 784
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

    :goto_1
    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 785
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 787
    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredAngle:F

    :cond_3
    return-void
.end method

.method private updateArrowDirection()V
    .locals 1

    .line 483
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    .line 484
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateIsDark(Z)V
    .locals 2

    .line 501
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsDark:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionColorDark:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionColorLight:I

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionColor:I

    .line 502
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 503
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsDark:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorDark:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorLight:I

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColor:I

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    if-nez p1, :cond_2

    .line 506
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColor:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentArrowColor(I)V

    goto :goto_2

    .line 508
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentArrowColor:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowStartColor:I

    .line 509
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method


# virtual methods
.method public adjustRectToBoundingBox(Landroid/graphics/Rect;)V
    .locals 6

    .line 366
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredTranslation:F

    .line 367
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-nez v1, :cond_2

    .line 370
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBaseTranslation:F

    .line 371
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v1, :cond_2

    .line 375
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getStaticArrowWidth()F

    move-result v1

    sub-float/2addr v0, v1

    .line 378
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowThickness:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 379
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    .line 382
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getStaticArrowWidth()F

    move-result v1

    .line 383
    sget v3, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->ARROW_ANGLE_WHEN_EXTENDED_DEGREES:F

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->polarToCartY(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    .line 384
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v4, :cond_4

    sub-float/2addr v0, v1

    .line 388
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredVerticalTranslation:F

    add-float/2addr v4, p0

    div-float p0, v3, v2

    sub-float/2addr v4, p0

    float-to-int p0, v0

    float-to-int v0, v4

    .line 389
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 390
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, p0

    add-float/2addr v2, v1

    float-to-int v1, v2

    int-to-float v2, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public handleTouch(Landroid/view/MotionEvent;)V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 400
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto/16 :goto_1

    .line 413
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->handleMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 419
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-eqz v0, :cond_3

    .line 420
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->triggerBack()V

    goto :goto_0

    .line 422
    :cond_3
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_4

    .line 423
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDragSlopPassed:Z

    if-eqz v0, :cond_4

    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/util/DebugLogStore;->toString(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mTriggerBack is false because "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCheckTriggerBack:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NavbarEdgePanel"

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 428
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSetGoneEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_0

    :cond_5
    const/16 p1, 0x8

    .line 430
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 434
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 405
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDragSlopPassed:Z

    .line 406
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->resetOnDown()V

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mStartX:F

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mStartY:F

    .line 409
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$new$0$NavigationBarEdgePanel(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 289
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDisappearAmount:F

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public synthetic lambda$triggerBack$1$NavigationBarEdgePanel()V
    .locals 1

    const/16 v0, 0x8

    .line 584
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$triggerBack$2$NavigationBarEdgePanel()V
    .locals 4

    .line 577
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    const/high16 v1, 0x41000000    # 8.0f

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    const/4 v0, 0x1

    .line 578
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 580
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 582
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredTranslation:F

    const/high16 v3, 0x42000000    # 32.0f

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->dp(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setDesiredTranslation(FZ)V

    .line 583
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$nHEgOL8ws5zs7-Uj7JMc5oUqL9Y;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$nHEgOL8ws5zs7-Uj7JMc5oUqL9Y;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V

    .line 584
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 585
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 442
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 443
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateArrowDirection()V

    .line 444
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->loadDimens()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 449
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentTranslation:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowThickness:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 450
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 452
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    .line 453
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslation:F

    add-float/2addr v1, v2

    .line 451
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 456
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentAngle:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->polarToCartX(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    mul-float/2addr v0, v1

    .line 457
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentAngle:F

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->polarToCartY(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    mul-float/2addr v1, v2

    .line 458
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->calculatePath(FF)Landroid/graphics/Path;

    move-result-object v0

    .line 459
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mShowProtection:Z

    if-eqz v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 463
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 464
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 469
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 471
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPaddingEnd:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mMaxTranslation:F

    return-void
.end method

.method public setIsDark(ZZ)V
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsDark:Z

    .line 348
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateIsDark(Z)V

    return-void
.end method

.method public setIsLeftPanel(Z)V
    .locals 0

    .line 357
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    return-void
.end method

.method public shouldTriggerBack()Z
    .locals 0

    .line 343
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    return p0
.end method
