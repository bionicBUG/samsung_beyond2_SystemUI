.class public Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;
    }
.end annotation


# static fields
.field private static mIsLockscreenRotatable:Z = false


# instance fields
.field private mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCenterX:I

.field private mCenterXOnScreen:I

.field private mCenterY:I

.field private mCenterYOnScreen:I

.field private mCircleAnimator:Landroid/animation/ValueAnimator;

.field private mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mClipDistance:F

.field private mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mColorInterpolator:Landroid/animation/ArgbEvaluator;

.field private mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

.field private mCubicEaseOut:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

.field private mDCircleAlpha:I

.field private mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mDCircleAnimator:Landroid/animation/ValueAnimator;

.field private mDCircleEndAlpha:I

.field private mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDCircleMaxRadius:F

.field private final mDCirclePaint:Landroid/graphics/Paint;

.field private mDCircleRadius:F

.field private mDCircleStartAlpha:I

.field private mDeviceInteractive:Z

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private mFling:Z

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field protected mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

.field private mHintAnimation:Z

.field private mIconAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mIconAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mImageScale:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private final mInverseColor:I

.field private mIsFoldOpened:Z

.field private mIsPainterReady:Z

.field private mIsSecure:Z

.field private mIsShortcutForPhone:Z

.field private mJustClicked:Z

.field private mMaxRadius:F

.field private final mMinBackgroundRadius:I

.field private final mNormalColor:I

.field private mOldDistance:F

.field private mPaintColor:Landroid/graphics/Paint;

.field private mPaintPreview:Landroid/graphics/Paint;

.field private mPreviewAlpha:I

.field private mPreviewAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mPreviewAlphaEnd:I

.field private mPreviewAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPreviewAlphaShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPreviewAlphaStart:I

.field private mPreviewClipEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPreviewClipRect:Landroid/graphics/RectF;

.field private mPreviewClipper:Landroid/animation/Animator;

.field private mPreviewColor:I

.field private mPreviewScale:F

.field private mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

.field private mPreviewScaleEnd:F

.field private mPreviewScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPreviewScaleStart:F

.field private mPreviewShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPreviewShrinker:Landroid/animation/ValueAnimator;

.field private mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;

.field private mPreviewView:Landroid/view/View;

.field private mRadiusEnd:F

.field private mRadiusStart:F

.field private mRestingAlpha:F

.field private mReveal:Z

.field private mRight:Z

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShaderPreview:Z

.field private mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mShortcutForCamera:Z

.field private mSineIn33:Landroid/view/animation/Interpolator;

.field private mSineInOut33:Landroid/view/animation/Interpolator;

.field private mSineOut33:Landroid/view/animation/Interpolator;

.field private mStoppingAndHiding:Z

.field private mTempPoint:[I

.field private mTouchBoundary:I

.field private mTouchCancelled:Z

.field private mTouchHandler:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;

.field private mTrusted:Z

.field private mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 277
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 281
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 285
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 290
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 128
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDeviceInteractive:Z

    const/4 p3, 0x0

    .line 141
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z

    const/4 p4, 0x0

    .line 151
    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mOldDistance:F

    .line 154
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    .line 155
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    const/high16 v1, -0x40800000    # -1.0f

    .line 157
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 173
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    .line 175
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    .line 184
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z

    .line 185
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    .line 192
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    .line 195
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsShortcutForPhone:Z

    .line 199
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsFoldOpened:Z

    .line 201
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 220
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$2;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDisplayObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 246
    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTempPoint:[I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 251
    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRestingAlpha:F

    .line 261
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$3;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 267
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$4;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 380
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$6;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 387
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$7;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 398
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$8;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 405
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$9;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 416
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$10;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 423
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 440
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$12;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$12;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 447
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$13;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$13;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 454
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 1261
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mStoppingAndHiding:Z

    .line 1573
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$29;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$29;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 294
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    .line 295
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mColorInterpolator:Landroid/animation/ArgbEvaluator;

    .line 296
    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInverseColor:I

    .line 297
    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMinBackgroundRadius:I

    .line 298
    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mNormalColor:I

    .line 301
    iput-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 302
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    .line 303
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v2, "bottom"

    .line 307
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$color;->shortcut_affordance_white_bg:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_0

    .line 310
    :cond_0
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$color;->shortcut_affordance_bg:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 312
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f2b851f    # 0.67f

    const v3, 0x3e2e147b    # 0.17f

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    .line 315
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f547ae1    # 0.83f

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v4, p4, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    .line 316
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, p4, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 317
    new-instance p4, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    invoke-direct {p4}, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    .line 318
    new-instance p4, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

    invoke-direct {p4}, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseOut:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

    .line 320
    iget-object p4, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/android/systemui/R$dimen;->keyguard_affordance_boundary:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchBoundary:I

    .line 321
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    .line 322
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    .line 324
    new-instance p4, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {p4, v0, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 326
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 327
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    new-instance p4, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$5;

    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$5;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 334
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsSecure:Z

    .line 335
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTrusted:Z

    .line 336
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    const-string/jumbo p4, "window"

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDisplay:Landroid/view/Display;

    .line 338
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsLockscreenRotatable:Z

    .line 340
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 341
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array p2, p2, [Landroid/net/Uri;

    const-string/jumbo p4, "white_lockscreen_wallpaper"

    invoke-static {p4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/content/Context;
    .locals 0

    .line 82
    iget-object p0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/content/Context;
    .locals 0

    .line 82
    iget-object p0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTrusted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/RectF;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initAnimatedValues()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isSecure()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    return p1
.end method

.method static synthetic access$2702(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)I
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    return p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    return p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlpha:I

    return p0
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)I
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlpha:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsFoldOpened:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewClipRect(F)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewColor(F)V

    return-void
.end method

.method static synthetic access$3402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    return p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    return p0
.end method

.method static synthetic access$3502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/content/Context;
    .locals 0

    .line 82
    iget-object p0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mStoppingAndHiding:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z

    return p0
.end method

.method static synthetic access$3902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z

    return p1
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F
    .locals 0

    .line 82
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F

    return p0
.end method

.method static synthetic access$4002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F

    return p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    return p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F
    .locals 0

    .line 82
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F

    return p0
.end method

.method static synthetic access$4102(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F

    return p1
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutForCamera:Z

    return p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initVelocityTracker()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->trackMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FF)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->endMotion(FF)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    return p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewShrinker(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewAlphaShrinker()V

    return-void
.end method

.method static synthetic access$4902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mOldDistance:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getDCircleMaxRadius()I

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z

    return p0
.end method

.method static synthetic access$5002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAllAnimators()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAlphaAnimator(Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewAnimator(Z)V

    return-void
.end method

.method static synthetic access$5502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    return p1
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchBoundary:I

    return p0
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->showHidePreview(F)V

    return-void
.end method

.method static synthetic access$5802(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScale:F

    return p1
.end method

.method static synthetic access$5900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->dispatchCancelEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$6002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDeviceInteractive:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsSecure:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-object p0
.end method

.method private cancelAllAnimators()V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mCircleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mIconAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mPreviewScaleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mPreviewAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    const-string v1, "mPreviewShrinker"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 740
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 746
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-string p1, "mCircleAnimator"

    .line 748
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "KeyguardCircleAffordanceView"

    if-eqz p1, :cond_0

    .line 749
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCircleAnimator:mCircleRadius="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "mAlphaAnimator"

    .line 750
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 751
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mAlphaAnimator:mAlpha="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "mTranslateAnimator"

    .line 752
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 753
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setPreviewAnimator:mPreviewScale="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScale:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "mPreviewShrinker"

    .line 754
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 755
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPreviewShrinker:mPreviewClipRect="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private checkIfShaderReady()V
    .locals 10

    .line 775
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 779
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 780
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-nez v0, :cond_1

    return-void

    .line 785
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsLockscreenRotatable:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutForCamera:Z

    if-eqz v1, :cond_3

    .line 786
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 787
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_2
    const/high16 v1, 0x43340000    # 180.0f

    .line 790
    invoke-virtual {v8, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 792
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "KeyguardCircleAffordanceView"

    const-string v2, "OOM while creating camera preview bitmap"

    .line 794
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 799
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 800
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    :cond_4
    :goto_1
    return-void
.end method

.method private dispatchCancelEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1391
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 1392
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1394
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .locals 3

    .line 673
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 675
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawPreviewCircle(Landroid/graphics/Canvas;)V
    .locals 3

    .line 680
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-eqz v0, :cond_0

    .line 681
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    if-eqz v0, :cond_1

    .line 682
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 683
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 684
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 685
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 688
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 689
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 690
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 691
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method private endMotion(FF)V
    .locals 4

    .line 883
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F

    sub-float v0, p1, v0

    .line 884
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F

    sub-float v1, p2, v1

    float-to-double v2, v0

    float-to-double v0, v1

    .line 885
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 887
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    .line 888
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->revealOrVeil(FF)V

    goto :goto_0

    .line 890
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    .line 893
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 894
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 895
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method private getCurrentVelocity(FF)F
    .locals 6

    .line 900
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    .line 904
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 905
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 906
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 908
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F

    sub-float/2addr p1, v2

    .line 909
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F

    sub-float/2addr p2, p0

    float-to-double v2, p1

    float-to-double v4, p2

    .line 910
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float p0, v2

    mul-float/2addr v0, p1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    div-float/2addr v0, p0

    return v0
.end method

.method private getDCircleMaxRadius()I
    .locals 1

    .line 668
    iget-object p0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 669
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3ee66666    # 0.45f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 1167
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private getMaxCircleSize()F
    .locals 4

    .line 921
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTempPoint:[I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 922
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 923
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTempPoint:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 924
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 925
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTempPoint:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 927
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, v1

    .line 928
    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double v0, v0

    float-to-double v2, p0

    .line 930
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private initAnimatedValues()V
    .locals 2

    const/4 v0, 0x0

    .line 1003
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    .line 1004
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    const/4 v0, 0x0

    .line 1005
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScale:F

    .line 1006
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1007
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 873
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private isInCallForOnlyTablet()Z
    .locals 1

    .line 1606
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsShortcutForPhone:Z

    if-eqz v0, :cond_0

    .line 1607
    iget-object p0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p0

    .line 1608
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSecure()Z
    .locals 1

    .line 771
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsSecure:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTrusted:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTaskTypeShortcut(Z)Z
    .locals 0

    .line 1894
    invoke-static {}, Lcom/android/systemui/util/ShortcutManager;->getInstance()Lcom/android/systemui/util/ShortcutManager;

    move-result-object p0

    .line 1895
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->getShortcutProperty(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private revealOrVeil(FF)V
    .locals 8

    .line 934
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getCurrentVelocity(FF)F

    move-result p1

    const/4 p2, 0x1

    .line 936
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revealOrVeil currentVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardCircleAffordanceView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x3a860000    # -4000.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 939
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    .line 941
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isTaskTypeShortcut(Z)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isInCallForOnlyTablet()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 947
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->revealWithCurrentVelocity(F)V

    goto :goto_1

    .line 942
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    .line 943
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    .line 944
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFFZZ)V

    .line 945
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideEnded()V

    goto :goto_1

    .line 950
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    neg-float p1, p1

    .line 951
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->veilWithCurrentVelocity(F)V

    :goto_1
    return-void
.end method

.method private revealWithCurrentVelocity(F)V
    .locals 8

    .line 976
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-eqz v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 978
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFFZZ)V

    .line 979
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 980
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    .line 983
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 984
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 985
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 987
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideEnded()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 989
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 991
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewColorRevealer(FF)V

    .line 992
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAlphaAnimatorInSecured()V

    .line 994
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 995
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 997
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 998
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->startPhoneLaunchAnimationInSecured()V

    :goto_0
    return-void
.end method

.method private setCircleRadius(FZZ)V
    .locals 0

    return-void
.end method

.method private setDCircleAlphaAnimator(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 508
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleStartAlpha:I

    const-string v1, "bottom"

    .line 509
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x29

    goto :goto_0

    :cond_0
    const/16 v1, 0x59

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndAlpha:I

    goto :goto_1

    .line 511
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleStartAlpha:I

    .line 512
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndAlpha:I

    .line 516
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDCircleAlphaAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleStartAlpha:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndAlpha:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardCircleAffordanceView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 518
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleStartAlpha:I

    aput v2, v1, v0

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndAlpha:I

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 519
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    .line 520
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 521
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 522
    new-instance p1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$16;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$16;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 529
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setDCircleAlphaAnimatorInSecured()V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mDCircleAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 502
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAlphaAnimator(Z)V

    .line 503
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method private setDCircleAnimator(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 472
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(ZZ)V

    return-void
.end method

.method private setDCircleAnimator(ZZ)V
    .locals 3

    if-eqz p1, :cond_0

    .line 477
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusStart:F

    .line 478
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusEnd:F

    goto :goto_0

    .line 480
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusStart:F

    const/4 v0, 0x0

    .line 481
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusEnd:F

    .line 485
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDCircleAnimator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusStart:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusEnd:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardCircleAffordanceView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 486
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusStart:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusEnd:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 487
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    const-wide/16 v1, 0x96

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x15e

    .line 488
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 489
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineInOut33:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    :goto_2
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 490
    new-instance p1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 497
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setPreviewAlphaAnimator(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 566
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlpha:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaStart:I

    const-string v1, "bottom"

    .line 567
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x29

    goto :goto_0

    :cond_0
    const/16 v1, 0x59

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaEnd:I

    goto :goto_1

    .line 569
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlpha:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaStart:I

    .line 570
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaEnd:I

    .line 574
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewAlphaAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaEnd:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyguardCircleAffordanceView"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 577
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaStart:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaEnd:I

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 578
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    .line 579
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 581
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$18;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 589
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setPreviewAlphaShrinker()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 617
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 618
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    .line 619
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 620
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 621
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$20;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$20;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 630
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setPreviewAnimator(Z)V
    .locals 0

    .line 533
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewScaleAnimator(Z)V

    .line 534
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewAlphaAnimator(Z)V

    return-void
.end method

.method private setPreviewClipRect(F)V
    .locals 4

    .line 1423
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    int-to-float v2, v1

    sub-float/2addr v2, p1

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    int-to-float v3, p0

    sub-float/2addr v3, p1

    int-to-float v1, v1

    add-float/2addr v1, p1

    int-to-float p0, p0

    add-float/2addr p0, p1

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private setPreviewColor(F)V
    .locals 5

    .line 1405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isSecure()Z

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    if-nez v0, :cond_2

    .line 1406
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    cmpg-float v3, p1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v3, :cond_0

    div-float/2addr p1, v0

    goto :goto_0

    :cond_0
    cmpg-float v3, p1, v0

    if-gez v3, :cond_1

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    sub-float/2addr p1, v0

    .line 1411
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    sub-float/2addr v3, v0

    div-float/2addr p1, v3

    add-float/2addr p1, v4

    div-float/2addr p1, v2

    :goto_0
    const/4 v0, 0x0

    .line 1414
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1415
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    :cond_2
    const-string p1, "bottom"

    .line 1417
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x3dcccccd    # 0.1f

    goto :goto_1

    :cond_3
    const p1, 0x3e4ccccd    # 0.2f

    .line 1418
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_2
    return-void
.end method

.method private setPreviewColorRevealer(FF)V
    .locals 2

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewColorRevealer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardCircleAffordanceView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 637
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 638
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    .line 639
    new-instance p2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$21;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$21;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 651
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setPreviewScaleAnimator(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 539
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScale:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleStart:F

    .line 540
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchBoundary:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleEnd:F

    goto :goto_0

    .line 542
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleEnd:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleStart:F

    const/4 v0, 0x0

    .line 543
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleEnd:F

    .line 546
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewScaleAnimator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleStart:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleEnd:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardCircleAffordanceView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v0, 0x0

    .line 548
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleStart:F

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleEnd:F

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 549
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    .line 550
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 552
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$17;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$17;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 561
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setPreviewShrinker(Z)V
    .locals 2

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewShrinker:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardCircleAffordanceView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v0, 0x0

    .line 600
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    aput v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 601
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    .line 602
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 603
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 604
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$19;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$19;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 613
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private showHidePreview(F)V
    .locals 2

    .line 1428
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchBoundary:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mOldDistance:F

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 1429
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v0, "mPreviewAlphaAnimator"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 1430
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

    const-string v0, "mPreviewScaleAnimator"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 1431
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 1432
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchBoundary:I

    int-to-float v1, v0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    iget p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mOldDistance:F

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 1433
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 0

    .line 877
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_0

    .line 878
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private veilWithCurrentVelocity(F)V
    .locals 7

    const-string v0, "bottom"

    .line 956
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto :goto_0

    :cond_0
    const/16 v0, 0x59

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    .line 957
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAllAnimators()V

    const/4 v0, 0x0

    .line 959
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewScaleAnimator(Z)V

    .line 960
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewShrinker(Z)V

    .line 961
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(Z)V

    .line 963
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 964
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    .line 965
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 966
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 969
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 970
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 971
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 972
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public finishAnimation(FLjava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public getCircleRadius()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRestingAlpha()F
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public getShaderPreview()Z
    .locals 0

    .line 1011
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    return p0
.end method

.method public init()V
    .locals 3

    .line 462
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 464
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 465
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchHandler:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;

    const/4 p0, 0x0

    .line 467
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 468
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method public instantFinishAnimation()V
    .locals 3

    .line 1628
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1629
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 1630
    invoke-virtual {v0, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 1631
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 1633
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 1634
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public isPlayingHintAnimation()Z
    .locals 0

    .line 1594
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    return p0
.end method

.method public isWaitingLaunchAppInSecure()Z
    .locals 0

    .line 1598
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 363
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUIImageView;->onAttachedToWindow()V

    .line 366
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDisplayObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 367
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsFoldOpened:Z

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getDCircleMaxRadius()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 656
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 657
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getDCircleMaxRadius()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 1872
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getDCircleMaxRadius()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    .line 1873
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_affordance_boundary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchBoundary:I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 374
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUIImageView;->onDetachedFromWindow()V

    .line 376
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDisplayObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 715
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->drawCircle(Landroid/graphics/Canvas;)V

    .line 717
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-nez v0, :cond_0

    .line 718
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->drawPreviewCircle(Landroid/graphics/Canvas;)V

    .line 720
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 721
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 722
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDraw(Landroid/graphics/Canvas;)V

    .line 723
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 725
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-eqz v0, :cond_1

    .line 726
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->drawPreviewCircle(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 697
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onLayout(ZIIII)V

    .line 698
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    const/4 p2, 0x2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    .line 699
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    div-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    new-array p1, p2, [I

    .line 702
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    const/4 p2, 0x0

    .line 703
    aget p2, p1, p2

    iget p3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    const/4 p2, 0x1

    .line 704
    aget p1, p1, p2

    iget p2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    .line 706
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getMaxCircleSize()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1310
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isInCallForOnlyTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->checkIfShaderReady()V

    .line 1314
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1316
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchHandler:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;

    if-eqz p0, :cond_2

    .line 1317
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 1299
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 1300
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->endMotion(FF)V

    const/4 p0, 0x1

    return p0

    .line 1303
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/widget/SystemUIImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public performClick()Z
    .locals 1

    .line 1864
    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1865
    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->performClick()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public releaseShader()V
    .locals 2

    .line 804
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardCircleAffordanceView"

    const-string v1, "releaseShader"

    .line 805
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 807
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    .line 810
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 811
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->reset()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1250
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAllAnimators()V

    .line 1251
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initAnimatedValues()V

    const/4 v0, 0x0

    .line 1253
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    const/4 v0, 0x0

    .line 1254
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    .line 1256
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 1257
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    return-void
.end method

.method public setCircleRadius(FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1697
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCircleRadius(FZZ)V

    return-void
.end method

.method public setCircleRadiusWithoutAnimation(F)V
    .locals 0

    return-void
.end method

.method public setImageAlpha(FZ)V
    .locals 7

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 1065
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1127
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v5, "mIconAlphaAnimator"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    const v4, 0x433f4000    # 191.25f

    mul-float/2addr p1, v4

    float-to-int p1, p1

    .line 1129
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez p2, :cond_2

    if-eqz v4, :cond_1

    .line 1132
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1133
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_2

    .line 1135
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result p2

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput p2, v5, v3

    aput p1, v5, v2

    .line 1136
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1137
    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 1138
    new-instance v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$24;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$24;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1147
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p7, :cond_4

    if-eqz v1, :cond_3

    .line 1149
    iget-object p7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_3
    iget-object p7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    .line 1151
    :cond_4
    :goto_1
    invoke-virtual {v2, p7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, -0x1

    cmp-long p7, p3, v3

    if-nez p7, :cond_5

    sub-int/2addr p2, p1

    .line 1153
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    .line 1154
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x43480000    # 200.0f

    mul-float/2addr p1, p2

    float-to-long p3, p1

    .line 1157
    :cond_5
    invoke-virtual {v2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1158
    invoke-virtual {v2, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    if-eqz p8, :cond_6

    .line 1160
    invoke-direct {p0, p8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1162
    :cond_6
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method

.method public setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 9

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v7, p5

    move-object v8, p6

    .line 1071
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImageScale(FZ)V
    .locals 6

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 1019
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setImageScale(FZJLandroid/view/animation/Interpolator;)V
    .locals 2

    .line 1035
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mScaleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1040
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    .line 1041
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    .line 1043
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1044
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 1045
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$22;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$22;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1052
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1053
    invoke-virtual {p2, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, -0x1

    cmp-long p5, p3, v0

    if-nez p5, :cond_1

    .line 1055
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3e4ccccc    # 0.19999999f

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1056
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 p1, 0x43480000    # 200.0f

    mul-float/2addr p0, p1

    float-to-long p3, p0

    .line 1059
    :cond_1
    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1060
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public setIsShortcutForCamera(Z)V
    .locals 0

    .line 1602
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutForCamera:Z

    return-void
.end method

.method public setLaunchingAffordance(Z)V
    .locals 0

    return-void
.end method

.method public setPreviewView(I)V
    .locals 2

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewView: mRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardCircleAffordanceView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 855
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    .line 856
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewColor:I

    .line 857
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 858
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    return-void
.end method

.method public setPreviewView(Landroid/view/View;)V
    .locals 3

    .line 817
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    .line 822
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewView: mRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",preview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardCircleAffordanceView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 825
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 827
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    .line 828
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    .line 829
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 830
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->checkIfShaderReady()V

    goto :goto_0

    .line 833
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 834
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 837
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 838
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 839
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    :goto_0
    return-void
.end method

.method public setRight(Z)V
    .locals 0

    .line 862
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    return-void
.end method

.method public setShortcutForPhone(Z)V
    .locals 0

    .line 1617
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsShortcutForPhone:Z

    return-void
.end method

.method public startHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 2

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startHintAnimationPhase1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mCiradius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardCircleAffordanceView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1189
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1191
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1215
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->startHintAnimationPhase2(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public startHintAnimationPhase2(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "KeyguardCircleAffordanceView"

    const-string/jumbo v1, "startHintAnimationPhase2"

    .line 1221
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    const/4 v0, 0x0

    .line 1225
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewAnimator(Z)V

    .line 1226
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(Z)V

    .line 1227
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAlphaAnimator(Z)V

    .line 1228
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1243
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1244
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1245
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1246
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
