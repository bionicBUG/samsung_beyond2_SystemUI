.class public Lcom/android/systemui/swipe/SwipeAnimator;
.super Ljava/lang/Object;
.source "SwipeAnimator.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;,
        Lcom/android/systemui/swipe/SwipeAnimator$Direction;
    }
.end annotation


# instance fields
.field private mAffordancePivotX:I

.field private mAffordancePivotY:I

.field private mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

.field private mBottomViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mClockView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentNotiScale:F

.field private mDexAnimSet:Landroid/animation/AnimatorSet;

.field private mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

.field private mDisplayInfo:Landroid/view/DisplayInfo;

.field private mDistance:D

.field private mFloatingShortcutView:Landroid/view/View;

.field private mFullModeStartTime:J

.field private mFullScreenAnimSet:Landroid/animation/AnimatorSet;

.field private mFullScreenModeEnabled:Z

.field private mFullscreenModeStart:J

.field private mIconSlotView:Landroid/view/View;

.field protected mIntercepting:Z

.field private mIrisTextPreview:Landroid/view/View;

.field private mIsDynamicLockEnabled:Z

.field private mIsFullScreenModeShown:Z

.field private mIsTouching:Z

.field private mLastNotiScaleTime:J

.field private mLastResetNotiScaleTime:J

.field private mLeftShortcutView:Landroid/view/View;

.field private mLockIconView:Landroid/view/View;

.field private mLongPressAllowHeight:I

.field private mLongPressCallback:Ljava/lang/Runnable;

.field private mNonSwipeMode:I

.field private mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mNotificationStackScrollerView:Landroid/view/View;

.field private mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

.field private mRestoreAnimSet:Landroid/animation/AnimatorSet;

.field private mRightShortcutView:Landroid/view/View;

.field private mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

.field private final mSineIn33:Landroid/view/animation/Interpolator;

.field private final mSineInOut80:Landroid/view/animation/Interpolator;

.field private final mSineOut33:Landroid/view/animation/Interpolator;

.field private mStatusBarView:Landroid/view/View;

.field private mSwipeUnlockRadius:I

.field private mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

.field private mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mTouchSlop:I

.field private mUnlockExecuted:Z

.field private mUnlockViewHideAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    .line 93
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e2e147b    # 0.17f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v1, v3, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    .line 94
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f547ae1    # 0.83f

    const v4, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    .line 102
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    .line 103
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    .line 111
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    .line 112
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    .line 113
    iput v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCurrentNotiScale:F

    const-wide/16 v6, 0x0

    .line 114
    iput-wide v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLastResetNotiScaleTime:J

    .line 115
    iput-wide v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLastNotiScaleTime:J

    .line 118
    iput-wide v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullscreenModeStart:J

    .line 130
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    .line 132
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    .line 133
    new-instance v1, Lcom/android/systemui/swipe/-$$Lambda$SwipeAnimator$iMJI9Zh6GWHcSsgz9dj0AJPc0Yk;

    invoke-direct {v1, p0}, Lcom/android/systemui/swipe/-$$Lambda$SwipeAnimator$iMJI9Zh6GWHcSsgz9dj0AJPc0Yk;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;)V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    .line 151
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    .line 156
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    .line 167
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v4, v5, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineInOut80:Landroid/view/animation/Interpolator;

    .line 170
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDexAnimSet:Landroid/animation/AnimatorSet;

    .line 171
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v1, 0x0

    .line 183
    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    .line 184
    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    .line 185
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    .line 529
    iput-wide v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullModeStartTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;Landroid/view/View;)V
    .locals 8

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    .line 93
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e2e147b    # 0.17f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v1, v3, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    .line 94
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f547ae1    # 0.83f

    const v4, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    .line 102
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    .line 103
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    .line 111
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    .line 112
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    .line 113
    iput v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCurrentNotiScale:F

    const-wide/16 v6, 0x0

    .line 114
    iput-wide v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLastResetNotiScaleTime:J

    .line 115
    iput-wide v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLastNotiScaleTime:J

    .line 118
    iput-wide v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullscreenModeStart:J

    .line 130
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    .line 132
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    .line 133
    new-instance v1, Lcom/android/systemui/swipe/-$$Lambda$SwipeAnimator$iMJI9Zh6GWHcSsgz9dj0AJPc0Yk;

    invoke-direct {v1, p0}, Lcom/android/systemui/swipe/-$$Lambda$SwipeAnimator$iMJI9Zh6GWHcSsgz9dj0AJPc0Yk;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;)V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    .line 151
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    .line 156
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    .line 167
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v4, v5, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineInOut80:Landroid/view/animation/Interpolator;

    .line 170
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDexAnimSet:Landroid/animation/AnimatorSet;

    .line 171
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v1, 0x0

    .line 183
    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    .line 184
    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    .line 185
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    .line 529
    iput-wide v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullModeStartTime:J

    .line 202
    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    .line 203
    iput-object p2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 204
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget p2, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    .line 205
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget p2, Lcom/android/systemui/R$id;->keyguard_header:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    .line 206
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget p2, Lcom/android/systemui/R$id;->keyguard_status_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    .line 207
    iput-object p5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLockIconView:Landroid/view/View;

    .line 215
    invoke-direct {p0, p3}, Lcom/android/systemui/swipe/SwipeAnimator;->setBottomViewsList(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 217
    iput-object p4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->initDimens()V

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->setChildViewPivot()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/swipe/SwipeAnimator;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/swipe/SwipeAnimator;)Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/swipe/SwipeAnimator;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/swipe/SwipeAnimator;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/swipe/SwipeAnimator;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/systemui/swipe/SwipeAnimator;J)J
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullModeStartTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/swipe/SwipeAnimator;Landroid/animation/AnimatorSet;Landroid/view/View;FF)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    return-object p0
.end method

.method private getAngle(DDDD)D
    .locals 0

    sub-double/2addr p5, p1

    sub-double/2addr p7, p3

    .line 416
    invoke-static {p7, p8, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide p2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method private getDirection(D)Lcom/android/systemui/swipe/SwipeAnimator$Direction;
    .locals 6

    .line 420
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getNonSwipeModeAngle()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    sub-double/2addr v2, v0

    cmpl-double p0, p1, v2

    if-gez p0, :cond_4

    const-wide v2, -0x3f99800000000000L    # -180.0

    add-double/2addr v2, v0

    cmpg-double p0, p1, v2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    neg-double v2, v0

    cmpl-double p0, p1, v2

    if-ltz p0, :cond_1

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_1

    .line 424
    sget-object p0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->RIGHT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    return-object p0

    :cond_1
    const-wide v2, -0x3fa9800000000000L    # -90.0

    sub-double v4, v2, v0

    cmpl-double p0, p1, v4

    if-ltz p0, :cond_2

    add-double/2addr v2, v0

    cmpg-double p0, p1, v2

    if-gtz p0, :cond_2

    .line 426
    sget-object p0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->UP:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    return-object p0

    :cond_2
    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double v4, v2, v0

    cmpl-double p0, p1, v4

    if-ltz p0, :cond_3

    add-double/2addr v0, v2

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_3

    .line 428
    sget-object p0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->DOWN:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    return-object p0

    .line 430
    :cond_3
    sget-object p0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    return-object p0

    .line 422
    :cond_4
    :goto_0
    sget-object p0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->LEFT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    return-object p0
.end method

.method private initDynamicLock()V
    .locals 2

    .line 434
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    .line 435
    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    if-eqz v0, :cond_0

    .line 436
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getNonSwipeMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 438
    iget p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "mNonSwipeMode: 0x%08x"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SwipeAnimator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private isAnimationRunning()Z
    .locals 1

    .line 526
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isTapAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

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

.method private isTapAnimationRunning()Z
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

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

.method private resetChildViewVI()V
    .locals 4

    .line 886
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    .line 887
    invoke-interface {v0}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->getBarState()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 888
    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-nez v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 892
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    .line 896
    invoke-interface {v0}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->getBarState()I

    move-result v0

    if-gt v0, v2, :cond_2

    .line 897
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 898
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 899
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 902
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 903
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 904
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 905
    iput v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCurrentNotiScale:F

    .line 906
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLastResetNotiScaleTime:J

    .line 908
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 909
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 910
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 913
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 914
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 915
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 918
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 919
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 920
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 923
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 924
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 925
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 926
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 927
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 930
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 931
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 932
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 933
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 934
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 937
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_8

    .line 938
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_8

    .line 939
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 940
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 941
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_9
    return-void
.end method

.method private resetDynamicLock()V
    .locals 2

    const/4 v0, 0x0

    .line 443
    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    const/4 v1, 0x0

    .line 444
    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    .line 445
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    return-void
.end method

.method private sendSALogging()V
    .locals 4

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullscreenModeStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x7d0

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    const-string p0, "2"

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0xfa0

    cmp-long p0, v0, v2

    if-gez p0, :cond_2

    const-string p0, "3"

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x1b58

    cmp-long p0, v0, v2

    if-gez p0, :cond_3

    const-string p0, "4"

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x2710

    cmp-long p0, v0, v2

    if-gez p0, :cond_4

    const-string p0, "5"

    goto :goto_0

    :cond_4
    if-ltz p0, :cond_5

    const-string p0, "6"

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    .line 408
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1011"

    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setBottomViewsList(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 1

    .line 1000
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    .line 1001
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    .line 1003
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setChildViewPivot()V
    .locals 5

    .line 734
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 735
    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    int-to-float v4, v3

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    int-to-float v1, v3

    goto :goto_0

    :cond_0
    neg-int v1, v3

    int-to-float v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 740
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 741
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 742
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 744
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 745
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 747
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 748
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 749
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotX:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 750
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 752
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 753
    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotX:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 754
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 757
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_4

    .line 758
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 759
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 760
    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private setFullScreenMode(Z)V
    .locals 4

    .line 531
    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFullScreenMode enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwipeAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 535
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v1, :cond_1

    .line 536
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "KeyguardFingerPrintSwipe"

    if-eqz p1, :cond_0

    const-string v2, "setFullScreenMode is true. FP will be stop!"

    .line 538
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    goto :goto_0

    :cond_0
    const-string v2, "setFullScreenMode is false. FP will be start!"

    .line 541
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 546
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isTapAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 548
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 551
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 554
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    invoke-interface {v0}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 555
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    .line 556
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 557
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_5

    const-wide/16 v1, 0x96

    goto :goto_2

    :cond_5
    const-wide/16 v1, 0x12c

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 558
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/swipe/SwipeAnimator$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/swipe/SwipeAnimator$1;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_6

    const v1, 0x3f733333    # 0.95f

    goto :goto_3

    :cond_6
    move v1, v0

    :goto_3
    if-eqz p1, :cond_7

    const/4 v0, 0x0

    .line 596
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 597
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p1, :cond_8

    .line 598
    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 600
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-direct {p0, p1, v3, v1, v0}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 601
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 603
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 604
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 607
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz p1, :cond_a

    .line 608
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 611
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_b

    .line 612
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_b

    .line 613
    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    goto :goto_4

    .line 616
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 617
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 619
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 621
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    if-eqz p1, :cond_d

    .line 622
    iget-boolean p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->onFullScreenMode(Z)V

    :cond_d
    return-void
.end method

.method private setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V
    .locals 7

    const/high16 p0, -0x40800000    # -1.0f

    cmpl-float v0, p3, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    new-array v0, v3, [Landroid/animation/Animator;

    .line 628
    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v1, [F

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v6

    aput v6, v5, v2

    aput p3, v5, v3

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v3, [Landroid/animation/Animator;

    .line 629
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v1, [F

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v6

    aput v6, v5, v2

    aput p3, v5, v3

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    aput-object p3, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    cmpl-float p0, p4, p0

    if-eqz p0, :cond_1

    new-array p0, v3, [Landroid/animation/Animator;

    .line 632
    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v1, [F

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v1

    aput v1, v0, v2

    aput p4, v0, v3

    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, p0, v2

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    return-void
.end method

.method private showTapAffordanceAnimation()V
    .locals 5

    .line 653
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    .line 654
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 655
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/swipe/SwipeAnimator$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/swipe/SwipeAnimator$2;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 663
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    .line 664
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 665
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 666
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/swipe/SwipeAnimator$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/swipe/SwipeAnimator$3;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 706
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    const v2, 0x3f733333    # 0.95f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 707
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 708
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 717
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    const v4, 0x3f7d70a4    # 0.99f

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 719
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 720
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 724
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 725
    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    goto :goto_0

    .line 730
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateChildViewVI(D)V
    .locals 13

    .line 766
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    .line 776
    iget v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v4, v0

    sub-double/2addr v4, p1

    int-to-double v6, v0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    double-to-float v2, v4

    int-to-double v3, v0

    sub-double/2addr v3, p1

    int-to-double v5, v0

    div-double/2addr v3, v5

    const-wide v5, 0x3fc9999980000000L    # 0.19999998807907104

    mul-double/2addr v3, v5

    const-wide v7, 0x3fe99999a0000000L    # 0.800000011920929

    add-double/2addr v3, v7

    double-to-float v3, v3

    int-to-double v9, v0

    sub-double/2addr v9, p1

    int-to-double v11, v0

    div-double/2addr v9, v11

    mul-double/2addr v9, v5

    add-double/2addr v9, v7

    double-to-float v4, v9

    const-wide v5, 0x3fecccccc0000000L    # 0.8999999761581421

    int-to-double v7, v0

    .line 782
    iget v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    int-to-double v9, v9

    sub-double v9, p1, v9

    sub-double/2addr v7, v9

    int-to-double v9, v0

    div-double/2addr v7, v9

    const-wide v9, 0x3fb9999a00000000L    # 0.10000002384185791

    mul-double/2addr v7, v9

    add-double/2addr v7, v5

    double-to-float v0, v7

    .line 786
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v5, 0x3f4ccccd    # 0.8f

    .line 787
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 788
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 789
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 790
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v5, 0x3f666666    # 0.9f

    .line 791
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 793
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    .line 794
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 796
    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 797
    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 798
    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setAlpha(F)V

    .line 799
    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 800
    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 801
    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 802
    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 804
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    .line 805
    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    .line 806
    iput v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCurrentNotiScale:F

    .line 807
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLastNotiScaleTime:J

    .line 808
    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 810
    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 811
    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    .line 812
    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    .line 813
    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 816
    :cond_2
    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    int-to-double v3, v3

    cmpl-double p1, p1, v3

    if-lez p1, :cond_6

    .line 817
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 818
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 819
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 820
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 821
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 822
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 824
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 825
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 826
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 827
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 830
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_4

    .line 831
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 832
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 836
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_6

    .line 837
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    .line 838
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 839
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 840
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 842
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "SwipeAnimator state:"

    .line 1148
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mCurrentNotiScale: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCurrentNotiScale:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    lastNotiScaleTime: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLastNotiScaleTime:J

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    lastResetNotiScaleTime: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLastResetNotiScaleTime:J

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public forceResetStackScrollerScale()V
    .locals 3

    .line 1139
    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCurrentNotiScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "SwipeAnimator"

    const-string v2, "NSSL wasn\'t restored to original scale. Need to reset in force."

    .line 1140
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1142
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public getCurrentNotiScale()F
    .locals 0

    .line 1135
    iget p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCurrentNotiScale:F

    return p0
.end method

.method public initDimens()V
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    .line 496
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 497
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotX:I

    .line 498
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    .line 499
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->close_handle_underlap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressAllowHeight:I

    .line 500
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v1, v1

    iget v2, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    div-float/2addr v1, v2

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v2, v2

    iget v0, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    div-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40900000    # 4.5f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40600000    # 3.5f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_1
    const v1, 0x3fe66666    # 1.8f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_2
    const v0, 0x3f333333    # 0.7f

    .line 502
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    return-void
.end method

.method public isViRunning()Z
    .locals 1

    .line 518
    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isAnimationRunning()Z

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

.method public synthetic lambda$new$0$SwipeAnimator()V
    .locals 2

    const/4 v0, 0x1

    .line 134
    invoke-direct {p0, v0}, Lcom/android/systemui/swipe/SwipeAnimator;->setFullScreenMode(Z)V

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullscreenModeStart:J

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 225
    iget-boolean p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIntercepting:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v9, p0

    .line 230
    iget-boolean v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mIntercepting:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 234
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIM_PERM_DISABLED:Z

    const/4 v10, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    .line 235
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_1

    return v10

    .line 241
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_17

    const/4 v2, 0x6

    const/4 v3, 0x3

    if-eq v0, v10, :cond_f

    const/4 v15, 0x2

    if-eq v0, v15, :cond_4

    if-eq v0, v3, :cond_f

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    if-eq v0, v2, :cond_f

    :cond_2
    :goto_0
    const-wide/16 v2, 0x1f4

    goto/16 :goto_5

    .line 281
    :cond_3
    iget-object v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/PanelView;->setMotionAborted(Z)V

    goto :goto_0

    .line 285
    :cond_4
    iget-boolean v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    if-nez v0, :cond_5

    return v1

    .line 288
    :cond_5
    iget-boolean v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    if-eqz v0, :cond_6

    return v10

    .line 293
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 295
    iget v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownX:F

    sub-float v2, v0, v2

    float-to-int v7, v2

    .line 296
    iget v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownY:F

    sub-float v2, v1, v2

    float-to-int v8, v2

    int-to-double v2, v7

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 297
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-double v13, v8

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    .line 300
    iget v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    int-to-double v2, v2

    iget-wide v4, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_7

    .line 301
    iget-object v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v3, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 304
    :cond_7
    iget-boolean v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    if-eqz v2, :cond_e

    iget v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    if-eqz v2, :cond_e

    .line 307
    iget v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownX:F

    float-to-double v2, v2

    iget v4, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownY:F

    float-to-double v4, v4

    float-to-double v13, v0

    float-to-double v0, v1

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v13

    move v13, v7

    move v14, v8

    move-wide/from16 v7, v16

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/swipe/SwipeAnimator;->getAngle(DDDD)D

    move-result-wide v0

    .line 308
    iget-wide v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    iget v4, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_c

    .line 309
    iget v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    and-int/2addr v2, v10

    if-eqz v2, :cond_8

    if-gez v13, :cond_8

    .line 310
    invoke-direct {v9, v0, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->getDirection(D)Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->LEFT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 311
    sget-object v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->LEFT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    iput-object v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    goto :goto_1

    .line 312
    :cond_8
    iget v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    and-int/2addr v2, v15

    if-eqz v2, :cond_9

    if-lez v13, :cond_9

    .line 313
    invoke-direct {v9, v0, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->getDirection(D)Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->RIGHT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 314
    sget-object v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->RIGHT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    iput-object v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    goto :goto_1

    .line 315
    :cond_9
    iget v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a

    if-gez v14, :cond_a

    .line 316
    invoke-direct {v9, v0, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->getDirection(D)Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->UP:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 317
    sget-object v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->UP:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    iput-object v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    goto :goto_1

    .line 318
    :cond_a
    iget v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_b

    if-lez v14, :cond_b

    .line 319
    invoke-direct {v9, v0, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->getDirection(D)Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->DOWN:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 320
    sget-object v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->DOWN:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    iput-object v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    goto :goto_1

    .line 322
    :cond_b
    sget-object v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    iput-object v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    goto :goto_1

    .line 325
    :cond_c
    iget v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_d

    .line 326
    sget-object v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->TAP:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    iput-object v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    goto :goto_1

    .line 328
    :cond_d
    sget-object v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    iput-object v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    .line 333
    :cond_e
    :goto_1
    iget-wide v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    invoke-direct {v9, v0, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->updateChildViewVI(D)V

    goto/16 :goto_0

    .line 339
    :cond_f
    invoke-virtual {v9, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->setIntercept(Z)V

    .line 342
    iget-object v4, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v5, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 343
    iget-boolean v4, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    if-eqz v4, :cond_10

    .line 344
    invoke-direct {v9, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->setFullScreenMode(Z)V

    .line 346
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeAnimator;->sendSALogging()V

    .line 351
    :cond_10
    iget-wide v4, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    iget v6, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-lez v4, :cond_12

    if-eq v0, v2, :cond_12

    if-ne v0, v3, :cond_11

    goto :goto_2

    :cond_11
    move v0, v1

    goto :goto_3

    :cond_12
    :goto_2
    move v0, v10

    .line 355
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isAnimationRunning()Z

    move-result v2

    if-nez v2, :cond_15

    iget-boolean v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-nez v2, :cond_15

    iget-object v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_15

    .line 356
    iget-object v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    if-eqz v2, :cond_13

    sget-object v3, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    if-eq v2, v3, :cond_13

    sget-object v3, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->TAP:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    if-ne v2, v3, :cond_15

    .line 358
    :cond_13
    iget-wide v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    iget v4, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    int-to-double v4, v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_14

    .line 359
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeAnimator;->resetChildViewVI()V

    .line 360
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeAnimator;->showTapAffordanceAnimation()V

    goto :goto_4

    :cond_14
    if-eqz v0, :cond_15

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeAnimator;->restoreChildViewVI()V

    .line 369
    :cond_15
    :goto_4
    iget-boolean v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    if-eqz v0, :cond_16

    .line 370
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeAnimator;->resetDynamicLock()V

    .line 372
    :cond_16
    iput-boolean v1, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    goto/16 :goto_0

    .line 247
    :cond_17
    iput-boolean v10, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    .line 248
    iput-boolean v1, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    const-wide/16 v0, 0x0

    .line 249
    iput-wide v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownX:F

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownY:F

    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeAnimator;->initDynamicLock()V

    .line 258
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeAnimator;->setChildViewPivot()V

    .line 260
    iget v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2

    iget-boolean v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    if-nez v0, :cond_2

    iget-object v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    .line 261
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownY:F

    iget-object v1, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 262
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressAllowHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 264
    iget-object v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 265
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v1, :cond_18

    .line 266
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 267
    iget-object v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_18

    .line 269
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorAreaInDisplay()Landroid/graphics/Rect;

    move-result-object v0

    .line 270
    iget v1, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownX:F

    float-to-int v1, v1

    iget v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownY:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "KeyguardFingerPrintSwipe"

    const-string v1, "mLongPressCallback canceled. Touch position is FP-InDisplay area!"

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 276
    :cond_18
    iget-object v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 382
    :goto_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v11

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_19

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent(): Touch processing took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwipeAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return v10
.end method

.method public onUnlockExecuted()V
    .locals 1

    .line 510
    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-eqz v0, :cond_0

    const-string p0, "SwipeAnimator"

    const-string v0, "onUnlockExecuted(): Already Call Unlock!"

    .line 511
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 513
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 4

    const-string v0, "SwipeAnimator"

    const-string v1, "RESET"

    .line 450
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 452
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 453
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 454
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 455
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 457
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 458
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 461
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->resetChildViewVI()V

    const/4 v1, 0x0

    .line 463
    iput-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    .line 464
    iget-boolean v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    if-eqz v2, :cond_1

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset mFullScreenModeEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iput-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    .line 472
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    .line 473
    iput-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    .line 474
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 475
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 479
    iput v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    .line 480
    iput-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    return-void
.end method

.method public restoreChildViewVI()V
    .locals 4

    .line 848
    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isTapAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 853
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    .line 854
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 855
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 857
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 859
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 860
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v1, v0, v2, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 864
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 865
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 867
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 868
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v1, v0, v2, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 871
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 872
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v1, v0, v2, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 875
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_4

    .line 876
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_4

    .line 877
    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v3, v1, v2, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    goto :goto_0

    .line 881
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 882
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 849
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreChildViewVI(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SwipeAnimator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAnimatedViewAlpha(F)V
    .locals 2

    .line 637
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 638
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 639
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 640
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 641
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 644
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 646
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFloatingShortcutView(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 491
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    return-void
.end method

.method public setIconSlotView(Landroid/view/View;)V
    .locals 0

    .line 1008
    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    return-void
.end method

.method public setIntercept(Z)V
    .locals 0

    .line 506
    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIntercepting:Z

    return-void
.end method
