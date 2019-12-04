.class public Lcom/android/systemui/facewidget/FaceWidgetContainer;
.super Landroid/widget/FrameLayout;
.source "FaceWidgetContainer.java"

# interfaces
.implements Lcom/android/systemui/facewidget/KeyguardStatusBase;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;
    }
.end annotation


# static fields
.field public static final SUPPORT_AOD_FEATURE_VERSION:I

.field private static mIsCovered:Z


# instance fields
.field private mAODStateEnabled:Z

.field private mAODUIContainer:Landroid/widget/LinearLayout;

.field private mAdditionalInfo:Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;

.field private final mConfig:Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;

.field private final mController:Lcom/android/systemui/facewidget/FaceWidgetController;

.field private mCurrentClockType:I

.field private mCurrentFullScreenPkgName:Ljava/lang/String;

.field private mDarkAmount:F

.field private final mFaceWidgetAttribute:Lcom/android/systemui/facewidget/FaceWidgetAttribute;

.field private mFaceWidgetPageAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

.field private mFaceWidgetSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

.field private mFaceWidgetViewPager:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

.field private final mHandler:Landroid/os/Handler;

.field private mHasCMAS:Z

.field private mHasFocus:Z

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsBouncer:Z

.field private mIsChangingDozing:Z

.field private mIsClockOnly:Z

.field private mIsNeedToForceUpdate:Z

.field private mIsNeedToOwnerInfoSidePaddingUpdate:Z

.field private mIsNeedToTransitionByAOD:Z

.field private mIsPageAlphaTransitionEnabled:Z

.field private mIsScreenTurnedOn:Z

.field private mIsShowingOwnerInfoByAnim:Z

.field private mIsShownOwnBigPage:Z

.field private final mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field private mLastLockClockType:I

.field private mLockscreenPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

.field private mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

.field private mNotificationCount:I

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mOwnerInfo:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

.field private mOwnerInfoContainer:Landroid/widget/LinearLayout;

.field private mPageAttachedStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

.field private mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

.field private mRotation:I

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShowFullScreenInProgress:Z

.field private mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

.field private final mUpdateConfigChangedRunnable:Ljava/lang/Runnable;

.field private final mUpdateDensityScaleRunnable:Ljava/lang/Runnable;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "7"

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->SUPPORT_AOD_FEATURE_VERSION:I

    const/4 v0, 0x0

    .line 164
    sput-boolean v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsCovered:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const/4 v0, 0x0

    .line 367
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 371
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsScreenTurnedOn:Z

    const/4 p2, 0x0

    .line 141
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsClockOnly:Z

    .line 142
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mHasFocus:Z

    .line 151
    sget-object p3, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->EXPAND:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    iput-object p3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mLockscreenPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    .line 152
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAODStateEnabled:Z

    .line 153
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsNeedToTransitionByAOD:Z

    .line 154
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsNeedToForceUpdate:Z

    .line 155
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsNeedToOwnerInfoSidePaddingUpdate:Z

    .line 157
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mShowFullScreenInProgress:Z

    .line 158
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsShownOwnBigPage:Z

    .line 159
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsShowingOwnerInfoByAnim:Z

    .line 160
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsBouncer:Z

    const/4 p3, 0x0

    .line 161
    iput p3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mDarkAmount:F

    .line 169
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mHasCMAS:Z

    const/4 p3, -0x1

    .line 172
    iput p3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mLastLockClockType:I

    const/16 v0, 0x9

    .line 173
    iput v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mCurrentClockType:I

    .line 174
    iput p3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mNotificationCount:I

    .line 175
    iput p3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mRotation:I

    .line 182
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mHandler:Landroid/os/Handler;

    .line 189
    new-instance p3, Lcom/android/systemui/facewidget/FaceWidgetContainer$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer$1;-><init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V

    iput-object p3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    .line 204
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsPageAlphaTransitionEnabled:Z

    .line 209
    new-instance p3, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$kKGiM3gePYyZD022wzc5195plvM;

    invoke-direct {p3, p0}, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$kKGiM3gePYyZD022wzc5195plvM;-><init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V

    iput-object p3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 215
    new-instance p3, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$V-Jz6TNK25qDVZ7S3e7wvDlukJE;

    invoke-direct {p3, p0}, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$V-Jz6TNK25qDVZ7S3e7wvDlukJE;-><init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V

    iput-object p3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mUpdateDensityScaleRunnable:Ljava/lang/Runnable;

    .line 223
    new-instance p3, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$0SB7sPDFsDztAy8pt1W1U84ODL0;

    invoke-direct {p3, p0}, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$0SB7sPDFsDztAy8pt1W1U84ODL0;-><init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V

    iput-object p3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mUpdateConfigChangedRunnable:Ljava/lang/Runnable;

    .line 241
    new-instance p3, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;-><init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V

    iput-object p3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 333
    new-instance p3, Lcom/android/systemui/facewidget/FaceWidgetContainer$3;

    invoke-direct {p3, p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer$3;-><init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V

    iput-object p3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPageAttachedStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 346
    new-instance p3, Lcom/android/systemui/facewidget/FaceWidgetContainer$4;

    invoke-direct {p3, p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer$4;-><init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V

    iput-object p3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1514
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsChangingDozing:Z

    .line 373
    const-class p2, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/facewidget/FaceWidgetController;

    iput-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mController:Lcom/android/systemui/facewidget/FaceWidgetController;

    .line 374
    iget-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mController:Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {p2, p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->setContainer(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V

    .line 376
    new-instance p2, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mController:Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-direct {p2, p3, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/facewidget/FaceWidgetController;)V

    iput-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    .line 377
    new-instance p2, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-direct {p2, p3, v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;-><init>(Landroid/content/Context;Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;)V

    iput-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    .line 379
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 380
    new-instance p2, Lcom/android/systemui/facewidget/FaceWidgetAttribute;

    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/systemui/facewidget/FaceWidgetAttribute;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetAttribute:Lcom/android/systemui/facewidget/FaceWidgetAttribute;

    .line 382
    new-instance p2, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;-><init>(Landroid/content/res/Configuration;Lcom/android/systemui/facewidget/FaceWidgetContainer$1;)V

    iput-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mConfig:Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;

    .line 384
    new-instance p2, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mController:Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-direct {p2, p3, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;-><init>(Landroid/content/Context;Lcom/android/systemui/facewidget/FaceWidgetController;)V

    iput-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    .line 386
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->initDimens()V

    .line 388
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAllowedPokeDrawLock(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updateInfoContainer()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updateComponentVisibility()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetPageAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/facewidget/FaceWidgetContainer;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsBouncer:Z

    return p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 116
    sget-boolean v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsCovered:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0

    .line 116
    sput-boolean p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsCovered:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfo:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/facewidget/FaceWidgetContainer;Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updateFaceWidgetRemoteViewsPage(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/facewidget/FaceWidgetContainer;Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updateAODRemoteViews(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->handleStartedGoingToSleep()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->handleStartedWakingUp()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/KeyguardStatusCallback;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->update()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsNeedToOwnerInfoSidePaddingUpdate:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Landroid/content/Context;
    .locals 0

    .line 116
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Landroid/widget/LinearLayout;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/facewidget/FaceWidgetContainer;II)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updateInfoPadding(II)V

    return-void
.end method

.method private getDetailEventByPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "servicebox_music"

    .line 872
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    return-object p0

    :cond_0
    const-string p0, "servicebox_calendar"

    .line 874
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "2"

    return-object p0

    :cond_1
    const-string p0, "servicebox_alarm"

    .line 876
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "3"

    return-object p0

    :cond_2
    const-string p0, "servicebox_clock"

    .line 878
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "4"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFaceWidgetFullScreenPage(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;Z)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;
    .locals 5

    .line 787
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;->FULLSCREEN:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getPageView(Landroid/content/Context;Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    move-result-object p1

    .line 790
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isLockStarEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFaceWidgetFullScreenPage transitionEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "FaceWidgetContainer"

    invoke-static {v4, v1, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_0

    .line 795
    iget-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {p2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getCurrentPageState()Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setPageState(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Z)V

    .line 796
    sget-object p2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setPageState(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Z)V

    .line 799
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPageAttachedStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 800
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getOrientation()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setOrientation(I)V

    return-object p1
.end method

.method private getPackageNameChangeToCurrentFromRemoteViews()Ljava/lang/String;
    .locals 4

    .line 1306
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getAllRemoteViewsItem()Ljava/util/List;

    move-result-object v0

    .line 1311
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-class v2, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    new-instance v3, Lcom/android/systemui/facewidget/-$$Lambda$zOHRT2_5gj4Jvo2qxNHdNCv0Utc;

    invoke-direct {v3, v2}, Lcom/android/systemui/facewidget/-$$Lambda$zOHRT2_5gj4Jvo2qxNHdNCv0Utc;-><init>(Ljava/lang/Class;)V

    .line 1312
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    const-class v2, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    new-instance v3, Lcom/android/systemui/facewidget/-$$Lambda$P7jUsMhN34qrdQz-qBZ4ral1syw;

    invoke-direct {v3, v2}, Lcom/android/systemui/facewidget/-$$Lambda$P7jUsMhN34qrdQz-qBZ4ral1syw;-><init>(Ljava/lang/Class;)V

    .line 1313
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/facewidget/-$$Lambda$DvA8_YkkjtbEdIoFBhi8s9nb1vE;->INSTANCE:Lcom/android/systemui/facewidget/-$$Lambda$DvA8_YkkjtbEdIoFBhi8s9nb1vE;

    .line 1314
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$B_1nonVxFnCEWsgkZYk9NdzaJVE;->INSTANCE:Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$B_1nonVxFnCEWsgkZYk9NdzaJVE;

    .line 1315
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/facewidget/-$$Lambda$TFIMnM_4OLkilTb4Qd7IG1Jz42w;->INSTANCE:Lcom/android/systemui/facewidget/-$$Lambda$TFIMnM_4OLkilTb4Qd7IG1Jz42w;

    .line 1316
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/facewidget/-$$Lambda$R-KQdPoyTaoWDHfeGJHm669GQq8;

    invoke-direct {v2, p0}, Lcom/android/systemui/facewidget/-$$Lambda$R-KQdPoyTaoWDHfeGJHm669GQq8;-><init>(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;)V

    .line 1317
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1318
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 1319
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getPageItem(Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;
    .locals 3

    .line 1323
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->isPageEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 1324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPageItem() pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceWidgetContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1329
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getItem(Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    move-result-object p0

    return-object p0
.end method

.method private handleStartedGoingToSleep()V
    .locals 2

    const-string v0, "FaceWidgetContainer"

    const-string v1, "handleStartedGoingToSleep()"

    .line 1298
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1300
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsScreenTurnedOn:Z

    const-string v0, "servicebox_clock"

    .line 1302
    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setCurrentPage(Ljava/lang/String;)V

    return-void
.end method

.method private handleStartedWakingUp()V
    .locals 5

    const-string v0, "FaceWidgetContainer"

    const-string v1, "handleStartedWakingUp()"

    .line 1263
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isFaceWidgetFullScreenShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1267
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getPackageNameChangeToCurrentFromRemoteViews()Ljava/lang/String;

    move-result-object v1

    .line 1269
    sget-boolean v2, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsCovered:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Go to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getItem(Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    if-eqz v0, :cond_0

    .line 1273
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->disableChangeToCurrent()V

    .line 1275
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setCurrentPage(Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1277
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 1279
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceWidgetMusicPage()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 1280
    invoke-static {v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->isMusicPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsCovered:Z

    if-nez v1, :cond_2

    const-string v1, "Go to the music page due to UX concept"

    .line 1281
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "servicebox_music"

    .line 1282
    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setCurrentPage(Ljava/lang/String;)V

    .line 1283
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1284
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 1289
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsScreenTurnedOn:Z

    .line 1291
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->canBeSkipOnWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsNeedToForceUpdate:Z

    if-eqz v0, :cond_3

    .line 1293
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updatePageState()V

    :cond_3
    return-void
.end method

.method private initDimens()V
    .locals 2

    const-string v0, "FaceWidgetContainer"

    const-string v1, "initDimens"

    .line 1147
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1149
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getMinHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 1150
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetAttribute:Lcom/android/systemui/facewidget/FaceWidgetAttribute;

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->loadDimens(Landroid/content/res/Resources;)V

    return-void
.end method

.method private isNeedToTransition(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)Z
    .locals 3

    .line 689
    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsNeedToTransitionByAOD:Z

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 691
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isKeyguardShowing()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mHasFocus:Z

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 692
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isLockScreenDisabled()Z

    move-result p1

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    .line 693
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x2

    if-ne p0, p2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 694
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    return v2

    :cond_5
    :goto_3
    return p1
.end method

.method private isPageEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    .line 1350
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->isPageEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTypoClock(I)Z
    .locals 0

    .line 418
    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getPackageNameChangeToCurrentFromRemoteViews$9(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)I
    .locals 2

    .line 1315
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->getLastUpdatedTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->getLastUpdatedTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method static synthetic lambda$reissueAllPages$6(Ljava/lang/String;Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Z
    .locals 0

    .line 1037
    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$updateAdditionalInfoView$5(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)I
    .locals 2

    .line 930
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getLastUpdatedTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getLastUpdatedTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private launchBaseApplication(Ljava/lang/String;Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V
    .locals 1

    .line 805
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "servicebox_music"

    .line 807
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->launchBaseApplication(Landroid/content/Context;Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V

    goto :goto_0

    :cond_1
    const-string v0, "servicebox_calendar"

    .line 809
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 810
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->launchBaseApplication(Landroid/content/Context;Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private saveCurrentPageKeyListForAOD()V
    .locals 5

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1052
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetPageAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->getOrderedPageItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    .line 1053
    invoke-virtual {v2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "clone_clock"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1056
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, ";"

    .line 1057
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1062
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->saveCurrentPageKeyListForAOD(Ljava/lang/String;)V

    return-void
.end method

.method private sendRequestRemoteViewsBroadcast(Ljava/lang/String;Z)V
    .locals 3

    .line 1099
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1103
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.REQUEST_SERVICEBOX_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 1104
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1105
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    invoke-virtual {v1, p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->getPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1108
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1110
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pageId"

    .line 1111
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1112
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getLockscreenClockGravity()I

    move-result v1

    const-string v2, "gravity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1113
    sget-boolean v1, Lcom/android/systemui/Rune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v1, :cond_2

    .line 1114
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getAODClockGravity()I

    move-result v1

    const-string v2, "gravityAOD"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    const-string/jumbo v1, "whiteTheme"

    .line 1116
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 1120
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    iget-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {p2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getLockscreenClockGravity()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    iget-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {p2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getAODClockGravity()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "FaceWidgetContainer"

    const-string p2, "sendRequestRemoteViewsBroadcast() %s %s %d %d"

    .line 1119
    invoke-static {p1, p2, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1122
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setVisibility(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1540
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eq p0, p2, :cond_0

    .line 1541
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private shouldVisibleAfterConfigChanged()Z
    .locals 0

    .line 1170
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isKeyguardShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1171
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getViewMode()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private update()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateAODRemoteViews(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V
    .locals 3

    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAODRemoteViews"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v0, p1, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->packageNamePageId:Ljava/lang/String;

    .line 1252
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1253
    invoke-virtual {v1}, Lcom/android/systemui/doze/PluginAODManager;->isPlugged()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    .line 1255
    invoke-virtual {v2, v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->getPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1257
    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1258
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->isPermissionGranted(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->getAODView(Z)Landroid/widget/RemoteViews;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1257
    :goto_0
    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/doze/PluginAODManager;->setAODRemoteViews(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    :cond_1
    return-void
.end method

.method private updateAdditionalInfoView()V
    .locals 4

    .line 927
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getAllRemoteViewsItem()Ljava/util/List;

    move-result-object v0

    .line 928
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$0GZAVpA32-CG9rROU9elIb4uM-A;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$0GZAVpA32-CG9rROU9elIb4uM-A;-><init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V

    .line 929
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$WYgcOxvRh8QGaEotStxUQFel_PA;->INSTANCE:Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$WYgcOxvRh8QGaEotStxUQFel_PA;

    .line 930
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    new-instance v2, Lcom/android/systemui/facewidget/-$$Lambda$zOHRT2_5gj4Jvo2qxNHdNCv0Utc;

    invoke-direct {v2, v1}, Lcom/android/systemui/facewidget/-$$Lambda$zOHRT2_5gj4Jvo2qxNHdNCv0Utc;-><init>(Ljava/lang/Class;)V

    .line 931
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    new-instance v2, Lcom/android/systemui/facewidget/-$$Lambda$P7jUsMhN34qrdQz-qBZ4ral1syw;

    invoke-direct {v2, v1}, Lcom/android/systemui/facewidget/-$$Lambda$P7jUsMhN34qrdQz-qBZ4ral1syw;-><init>(Ljava/lang/Class;)V

    .line 932
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/facewidget/-$$Lambda$LVJ96aeUxpfcIwY2Nl2MgvTUejQ;->INSTANCE:Lcom/android/systemui/facewidget/-$$Lambda$LVJ96aeUxpfcIwY2Nl2MgvTUejQ;

    .line 933
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/facewidget/-$$Lambda$u86DXK4Jyc8hPKbsfO-DivqYas8;->INSTANCE:Lcom/android/systemui/facewidget/-$$Lambda$u86DXK4Jyc8hPKbsfO-DivqYas8;

    .line 934
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 935
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 936
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 938
    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAdditionalInfo:Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;->setAdditionalInfoView(Landroid/widget/RemoteViews;)V

    .line 940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAdditionalInfoView "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "no view"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updateInfoContainer()V

    return-void
.end method

.method private updateAnalytics(Ljava/lang/String;Z)V
    .locals 1

    .line 857
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsScreenTurnedOn:Z

    if-eqz v0, :cond_3

    .line 861
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getDetailEventByPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 862
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "107"

    goto :goto_0

    :cond_1
    const-string p1, "106"

    :goto_0
    if-eqz p2, :cond_2

    const-string p2, "1060"

    goto :goto_1

    :cond_2
    const-string p2, "1050"

    .line 868
    :goto_1
    invoke-static {p1, p2, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private updateComponentVisibility()V
    .locals 1

    .line 198
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenAllDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setVisibility(I)V

    return-void
.end method

.method private updateFaceWidgetRemoteViewsPage(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V
    .locals 4

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFaceWidgetRemoteViewsPage() item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v0, p1, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->packageNamePageId:Ljava/lang/String;

    .line 1199
    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1200
    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v2, v0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->add(Ljava/lang/String;Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)V

    .line 1202
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    move-result-object v2

    .line 1204
    iget-object v3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mCurrentFullScreenPkgName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->hasWindow(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "refresh big page"

    .line 1205
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-virtual {v2, v0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;

    .line 1207
    invoke-virtual {v3, p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->setItem(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V

    .line 1208
    invoke-virtual {v2, v0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->updateFloatingView(Ljava/lang/String;)V

    .line 1211
    :cond_0
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo p0, "user is not unlocked. (FBE)"

    .line 1212
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1217
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->remove(Ljava/lang/String;)V

    .line 1220
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsCovered:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1221
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    invoke-virtual {p1, v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->isEnabledChangeCurrentPage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    .line 1222
    invoke-virtual {p1, v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->isShowingInFaceWidgetOnly(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1223
    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setCurrentPage(Ljava/lang/String;)V

    .line 1227
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updateAdditionalInfoView()V

    return-void
.end method

.method private updateInfoContainer()V
    .locals 5

    .line 512
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfo:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->updateOwnerInfo()V

    .line 513
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfo:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->updateTextView()V

    .line 514
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAdditionalInfo:Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;->updateVisibility()V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfo:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAdditionalInfo:Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;

    .line 519
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 520
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getClockGravity()I

    move-result v0

    .line 522
    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfo:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 523
    instance-of v3, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_1

    .line 524
    move-object v3, v2

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-eq v4, v0, :cond_1

    .line 526
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 527
    iget-object v3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfo:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAdditionalInfo:Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 532
    instance-of v3, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_2

    .line 533
    move-object v3, v2

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-eq v4, v0, :cond_2

    .line 535
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 536
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAdditionalInfo:Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    :cond_2
    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mCurrentClockType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isTypoClock(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 541
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 542
    sget v1, Lcom/android/systemui/R$dimen;->keyguard_owner_info_top_padding_for_typo_clock_tablet:I

    goto :goto_0

    .line 543
    :cond_3
    sget v1, Lcom/android/systemui/R$dimen;->keyguard_owner_info_top_padding_for_typo_clock:I

    .line 540
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    .line 547
    :cond_4
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getInstance()Lcom/android/systemui/keyguard/KeyguardSideMargin;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getClockSidePadding(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updateInfoPadding(II)V

    return-void
.end method

.method private updateInfoPadding(II)V
    .locals 4

    .line 551
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    .line 552
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    if-eq v0, p2, :cond_3

    .line 556
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 557
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 560
    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mCurrentClockType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isTypoClock(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintImageSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    move v1, v0

    move v0, p1

    goto :goto_0

    .line 563
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintImageSize()I

    move-result v0

    add-int/2addr v0, p1

    .line 564
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintImageSize()I

    move-result v1

    add-int/2addr v1, p1

    goto :goto_0

    :cond_2
    move v0, p1

    move v1, v0

    .line 569
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v0, p2, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 p2, 0x0

    .line 570
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsNeedToOwnerInfoSidePaddingUpdate:Z

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "owner info setPadding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "FaceWidgetContainer"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAODUIContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p2, v1, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method private wakeUp()V
    .locals 3

    .line 815
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "com.android.systemui:SERVICE_BOX"

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public disableBlurFlag(Ljava/lang/String;)V
    .locals 3

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableBlurFlag pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    move-result-object v0

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->setDuration(Ljava/lang/String;J)V

    .line 842
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->setFlag(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public dismissFaceWidgetFullScreen(Ljava/lang/String;)V
    .locals 3

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissFaceWidgetFullScreen pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 834
    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setVisibility(I)V

    .line 835
    new-instance v0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$3SbVNkZ5VvWzLaxqK2ueHTpbhC8;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$3SbVNkZ5VvWzLaxqK2ueHTpbhC8;-><init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    invoke-interface {v0}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->userActivity()V

    .line 508
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dozeTimeTick()V
    .locals 1

    .line 1494
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    sget-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->DOZE_TIME_TICK:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    FaceWidgetContainer : current clock type - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mCurrentClockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1462
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    if-eqz v0, :cond_0

    .line 1463
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    if-eqz v0, :cond_1

    .line 1467
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1470
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    if-eqz v0, :cond_2

    .line 1471
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1474
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetPageAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    if-eqz p0, :cond_3

    .line 1475
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1478
    :cond_3
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getInstance()Lcom/android/systemui/keyguard/KeyguardSideMargin;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected getAODRemoteViews(Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 3

    .line 1333
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    invoke-virtual {v0, p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->getPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FaceWidgetContainer"

    if-eqz v0, :cond_0

    .line 1334
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAODRemoteViews legacy pkg: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1338
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getItem(Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    if-eqz v0, :cond_1

    .line 1340
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->isPermissionGrantedByPageId(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->getAODView(Z)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 1342
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAODRemoteViews no item: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method getCachePage(Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;
    .locals 1

    .line 1563
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;->LOCKSCREEN:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->get(Ljava/lang/String;Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    move-result-object p0

    return-object p0
.end method

.method public getClockGravity()I
    .locals 1

    .line 1075
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getClockGravity()I

    move-result p0

    return p0

    .line 1079
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getClockGravity()I

    move-result p0

    return p0
.end method

.method public getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;
    .locals 0

    .line 922
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentClockType()I
    .locals 0

    .line 1445
    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mCurrentClockType:I

    return p0
.end method

.method public getCurrentPagePkgName()Ljava/lang/String;
    .locals 0

    .line 918
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetViewPager:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->getCurrentPagePackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getCurrentPageRectExceptHolder()Landroid/graphics/Rect;
    .locals 1

    .line 1498
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetViewPager:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    if-eqz v0, :cond_1

    .line 1500
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1501
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getRectExceptHolder(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastLockClockType()I
    .locals 0

    .line 1440
    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mLastLockClockType:I

    return p0
.end method

.method public getLockscreenPageState()Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;
    .locals 0

    .line 685
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mLockscreenPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    return-object p0
.end method

.method getMinHeight()I
    .locals 2

    .line 1154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1155
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1157
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1158
    sget v0, Lcom/android/systemui/R$dimen;->facewidget_tablet_min_height:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$dimen;->facewidget_tablet_landscape_min_height:I

    .line 1156
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 1161
    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->facewidget_min_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getMinTopMargin(Z)I
    .locals 2

    .line 1396
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetAttribute:Lcom/android/systemui/facewidget/FaceWidgetAttribute;

    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mCurrentClockType:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->getTabletMinTopMargin(I)I

    move-result p0

    goto :goto_0

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetAttribute:Lcom/android/systemui/facewidget/FaceWidgetAttribute;

    iget v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mCurrentClockType:I

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isEnabledBioUnlock()Z

    move-result p0

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->getMinTopMargin(IZZ)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getNotificationCount()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1401
    iget v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mNotificationCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "FaceWidgetContainer"

    const-string v2, "getNotificationCount %d"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1402
    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mNotificationCount:I

    return p0
.end method

.method public getStatusCallback()Lcom/android/systemui/facewidget/KeyguardStatusCallback;
    .locals 0

    .line 702
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    return-object p0
.end method

.method isClockOnly()Z
    .locals 0

    .line 1550
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsClockOnly:Z

    return p0
.end method

.method public isContainerExpanded()Z
    .locals 1

    .line 681
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mLockscreenPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->EXPAND:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCovered()Z
    .locals 0

    .line 1141
    sget-boolean p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsCovered:Z

    return p0
.end method

.method public isEnabledBioUnlock()Z
    .locals 2

    .line 1449
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 1451
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1452
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1453
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1454
    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1455
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method isFaceWidgetFullScreenShowing()Z
    .locals 1

    .line 1554
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getCurrentPagePkgName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->hasWindow(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isInContentBounds(F)Z
    .locals 2

    .line 1483
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 1484
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    cmpg-float p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isKeyguardShowing()Z
    .locals 1

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    if-eqz v0, :cond_1

    .line 1166
    invoke-interface {v0}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardUnlocking()Z

    move-result p0

    if-nez p0, :cond_0

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

.method public synthetic lambda$dismissFaceWidgetFullScreen$3$FaceWidgetContainer(Ljava/lang/String;)V
    .locals 0

    .line 835
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->hideFloatingView(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$0$FaceWidgetContainer()V
    .locals 1

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->initDimens()V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAdditionalInfo:Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;->updateAdditionInfoView()V

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->reissueAllPages()V

    return-void
.end method

.method public synthetic lambda$new$1$FaceWidgetContainer()V
    .locals 1

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->initDimens()V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAdditionalInfo:Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;->updateAdditionInfoView()V

    .line 218
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    if-eqz p0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$2$FaceWidgetContainer()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAdditionalInfo:Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;->updateAdditionInfoView()V

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->reissueAllPages()V

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->shouldVisibleAfterConfigChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 229
    invoke-virtual {p0, v1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setVisibility(I)V

    .line 232
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged() : Update complete. Show contents. / "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FaceWidgetContainer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic lambda$sendRequestRemoteViewsBroadcast$7$FaceWidgetContainer(ZLjava/lang/String;)V
    .locals 0

    .line 1093
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->sendRequestRemoteViewsBroadcast(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$sendRequestRemoteViewsBroadcast$8$FaceWidgetContainer(Z)V
    .locals 2

    .line 1087
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->getMetadata()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1090
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/facewidget/-$$Lambda$Us7sH43ActqaWyacHoYyddVJOlM;->INSTANCE:Lcom/android/systemui/facewidget/-$$Lambda$Us7sH43ActqaWyacHoYyddVJOlM;

    .line 1091
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/facewidget/-$$Lambda$2QV0OZZ8U2xhf8To0enQMLbASdE;->INSTANCE:Lcom/android/systemui/facewidget/-$$Lambda$2QV0OZZ8U2xhf8To0enQMLbASdE;

    .line 1092
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$DayiA3hbVUVv9knucwzz_cMXtsU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$DayiA3hbVUVv9knucwzz_cMXtsU;-><init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;Z)V

    .line 1093
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setPageTransformer$10$FaceWidgetContainer(Landroid/view/View;F)V
    .locals 2

    .line 1570
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 1571
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsPageAlphaTransitionEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr v1, p2

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$updateAdditionalInfoView$4$FaceWidgetContainer(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Z
    .locals 0

    .line 929
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->useAdditionInfo(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .line 423
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 424
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->registerListener()V

    .line 429
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    .line 432
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 433
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 434
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.intent.action.RESPONSE_RESTORE_SETTINGS"

    .line 435
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 455
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mConfig:Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;

    invoke-static {v0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->access$2000(Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;Landroid/content/res/Configuration;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FaceWidgetContainer"

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "onConfigurationChanged()"

    .line 458
    invoke-static {v2, v3, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mConfig:Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;

    invoke-static {v0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->access$2100(Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    if-eqz v0, :cond_0

    .line 462
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->setOrientation(I)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mConfig:Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;

    invoke-static {v0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->access$2200(Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->initDimens()V

    .line 468
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onConfigurationChanged() : OrientationChanged. Hide contents before update complete."

    .line 469
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 470
    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mUpdateConfigChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 472
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mUpdateConfigChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mConfig:Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;

    invoke-static {v0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->access$2300(Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;Landroid/content/res/Configuration;)V

    :cond_2
    const-string p1, "servicebox_calendar"

    .line 479
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isPageEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 480
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->onConfigurationChanged()V

    .line 483
    :cond_3
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 484
    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mRotation:I

    if-eq v0, p1, :cond_5

    .line 485
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isKeyguardShowing()Z

    move-result v0

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged() rotation changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isKeyguardShowing - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    iput p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mRotation:I

    if-eqz v0, :cond_4

    .line 489
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getInstance()Lcom/android/systemui/keyguard/KeyguardSideMargin;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getClockSidePadding(Landroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updateInfoPadding(II)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    .line 491
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsNeedToOwnerInfoSidePaddingUpdate:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    const-string v0, "FaceWidgetContainer"

    const-string v1, "onDensityOrFontScaleChanged"

    .line 1135
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mUpdateDensityScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1137
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mUpdateDensityScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 441
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 442
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->unregisterListener()V

    .line 447
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    .line 450
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDismissFaceWidgetFullScreenStarted(Ljava/lang/String;)V
    .locals 3

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDismissFaceWidgetFullScreenStarted pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceWidgetContainer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-wide/16 v1, 0x14d

    .line 827
    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->setFullScreenMode(ZJ)V

    :cond_0
    const/4 p1, 0x4

    .line 829
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 394
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 396
    new-instance v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetPageAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    .line 397
    sget v0, Lcom/android/systemui/R$id;->keyguard_facewidget_viewpager:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetViewPager:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    .line 398
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetViewPager:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetPageAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    .line 401
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updateComponentVisibility()V

    .line 404
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->clearListeners()V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetViewPager:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mController:Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->setFaceWidgetController(Lcom/android/systemui/facewidget/FaceWidgetController;)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->loadAllMetaData(Ljava/lang/Runnable;)V

    .line 408
    sget v0, Lcom/android/systemui/R$id;->keyguard_owner_info:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfo:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    .line 409
    sget v0, Lcom/android/systemui/R$id;->keyguard_addtional_info:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAdditionalInfo:Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;

    .line 410
    sget v0, Lcom/android/systemui/R$id;->keyguard_owner_info_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    .line 412
    sget v0, Lcom/android/systemui/R$id;->keyguard_aod_ui_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAODUIContainer:Landroid/widget/LinearLayout;

    .line 414
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->update()V

    return-void
.end method

.method public onPageSelected(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 886
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updateAnalytics(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 0

    .line 952
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->onSettingsChanged(Landroid/net/Uri;)V

    return-void
.end method

.method public onSetupCompleted()V
    .locals 2

    const-string v0, "FaceWidgetContainer"

    const-string v1, "onSetupCompleted()"

    .line 1066
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->updateFaceWidgetInSettingMenu()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 891
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 893
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mHasFocus:Z

    .line 897
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isKeyguardShowing()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetViewPager:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    if-eqz v0, :cond_0

    .line 899
    instance-of v3, v0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->hasOwnBigPage()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 902
    iput-boolean v2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsShownOwnBigPage:Z

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 905
    iget-boolean v3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsShownOwnBigPage:Z

    if-eqz v3, :cond_2

    .line 907
    iput-boolean v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsShownOwnBigPage:Z

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 911
    :cond_2
    :goto_1
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_UI_BIOMETRICS:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchServiceBoxFullScreenMode(Z)V

    :cond_3
    return-void
.end method

.method protected playOwnerInfoAnimation(F)V
    .locals 6

    .line 1354
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfo:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    .line 1355
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAdditionalInfo:Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    const-string v4, "FaceWidgetContainer"

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    cmpl-float p1, p1, v5

    if-nez p1, :cond_3

    .line 1363
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetViewPager:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    .line 1364
    invoke-virtual {p1}, Lcom/android/internal/widget/ViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    if-eqz p1, :cond_3

    .line 1365
    iget-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsShowingOwnerInfoByAnim:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 1366
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsShowingOwnerInfoByAnim:Z

    const-string p1, "playOwnerInfoAnimation() show owner info"

    .line 1367
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    .line 1369
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfo:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->resetMarqueeEffect()V

    :cond_2
    move v1, v5

    goto :goto_0

    .line 1374
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsShowingOwnerInfoByAnim:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 1375
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsShowingOwnerInfoByAnim:Z

    const-string p1, "playOwnerInfoAnimation() hide owner info"

    .line 1376
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :cond_4
    :goto_0
    cmpl-float p1, v1, v2

    if-ltz p1, :cond_6

    .line 1382
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isKeyguardShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsCovered:Z

    if-nez p1, :cond_5

    .line 1383
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1384
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 1386
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    if-nez v0, :cond_6

    .line 1388
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfo:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_6
    :goto_1
    return-void
.end method

.method public reissueAllPages()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "FaceWidgetContainer"

    const-string v2, "reissueAllPages() >> START >>"

    .line 960
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 963
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getCurrentPagePkgName()Ljava/lang/String;

    move-result-object v4

    .line 964
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentPkgName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "servicebox_clock"

    .line 967
    invoke-direct {v0, v6}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getPageItem(Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 969
    iget-object v7, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 970
    iget-object v0, v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetPageAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    invoke-virtual {v0, v5}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->setPageItems(Ljava/util/List;)Z

    new-array v0, v8, [Ljava/lang/Object;

    const-string v2, "reissueAllPages() user is not unlocked in FBE << END <<"

    .line 971
    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 975
    :cond_0
    iget-object v7, v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v7

    .line 976
    iget-object v9, v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v9}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v9

    .line 977
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_1

    move v10, v11

    goto :goto_0

    :cond_1
    move v10, v8

    :goto_0
    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Object;

    .line 979
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v13, v8

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v13, v11

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    const-string v14, "e=%s, u=%s, owner=%s"

    invoke-static {v1, v14, v13}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v7, :cond_3

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    move v7, v8

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v11

    .line 981
    :goto_2
    iput-boolean v7, v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsClockOnly:Z

    .line 983
    iget-boolean v7, v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsClockOnly:Z

    if-nez v7, :cond_d

    .line 984
    iget-object v7, v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {v7}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->getPagesOrder()[Ljava/lang/String;

    move-result-object v7

    .line 985
    array-length v9, v7

    move v13, v8

    :goto_3
    if-ge v13, v9, :cond_9

    aget-object v14, v7, v13

    .line 986
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_4

    goto :goto_4

    .line 990
    :cond_4
    invoke-direct {v0, v14}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getPageItem(Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    move-result-object v12

    if-nez v12, :cond_5

    .line 992
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "reissueAllPages() page is null : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 996
    :cond_5
    invoke-virtual {v12}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->isInternalPage()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 997
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 999
    :cond_6
    iget-object v15, v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    invoke-virtual {v15, v14}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->isSystemUserOnly(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    if-eqz v10, :cond_8

    .line 1001
    :cond_7
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x3

    const/4 v15, 0x2

    goto :goto_3

    .line 1007
    :cond_9
    iget-object v7, v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v7}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getAllRemoteViewsItem()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    .line 1008
    invoke-virtual {v9}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1009
    iget-object v13, v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    invoke-virtual {v13, v12}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->isSystemUserOnly(Ljava/lang/String;)Z

    move-result v13

    .line 1010
    iget-object v14, v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    invoke-virtual {v14, v12}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->isShowingInFaceWidgetOnly(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    if-eqz v13, :cond_b

    if-eqz v10, :cond_a

    :cond_b
    if-eqz v9, :cond_c

    .line 1012
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1014
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reissueAllPages() additional remote page is null : "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1021
    :cond_d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v11, :cond_e

    const-string v7, "clone_clock"

    .line 1022
    invoke-direct {v0, v7}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getPageItem(Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    :cond_e
    iget-object v7, v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetPageAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    invoke-virtual {v7, v5}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->setPageItems(Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_f

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "reissueAllPages() item list same << END <<"

    .line 1026
    invoke-static {v1, v3, v2}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1027
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updateInfoContainer()V

    return-void

    .line 1030
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->saveCurrentPageKeyListForAOD()V

    .line 1032
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 1033
    rem-int/lit8 v9, v7, 0x2

    sub-int v9, v7, v9

    const/4 v10, 0x2

    div-int/2addr v9, v10

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v10, 0x3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1034
    iget-object v10, v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetViewPager:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-virtual {v10, v9}, Lcom/android/internal/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 1036
    iget-object v10, v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetPageAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    invoke-virtual {v10}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->getCount()I

    move-result v10

    if-lez v10, :cond_12

    .line 1037
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_11

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v10, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$lXmmzcdcvnRa27wdhCYgTz5jF5Q;

    invoke-direct {v10, v4}, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$lXmmzcdcvnRa27wdhCYgTz5jF5Q;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->count()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-gtz v5, :cond_10

    goto :goto_6

    .line 1040
    :cond_10
    invoke-virtual {v0, v4}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setCurrentPage(Ljava/lang/String;)V

    goto :goto_7

    .line 1038
    :cond_11
    :goto_6
    invoke-virtual {v0, v6}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setCurrentPage(Ljava/lang/String;)V

    .line 1044
    :cond_12
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updateInfoContainer()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1046
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v2, "reissueAllPages() pageCount %d limit %d t %d<< END <<"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public removeRemoteViews(Ljava/lang/String;Z)V
    .locals 2

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeRemoteViews() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->remove(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1180
    iget-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mMetaDataParser:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    invoke-virtual {p2, p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->useAdditionInfo(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1181
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updateAdditionalInfoView()V

    .line 1184
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetPageAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    invoke-virtual {p2, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->removePageItem(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 1186
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeRemoteViews() pagesController - no mapping for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1190
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->saveCurrentPageKeyListForAOD()V

    :cond_2
    return-void
.end method

.method public requestAODState(ZZ)V
    .locals 5

    .line 1590
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAODStateEnabled:Z

    if-eq v0, p1, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1592
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->canBeSkipOnWakeAndUnlock()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    move p2, v1

    :cond_1
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 1598
    iget-boolean v4, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAODStateEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "FaceWidgetContainer"

    const-string v4, "requestAODState() %s -> %s,  isNeedToTransition = %s"

    invoke-static {v1, v4, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1600
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAODStateEnabled:Z

    .line 1601
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsNeedToTransitionByAOD:Z

    .line 1603
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setPageTransformer(Z)V

    if-eqz v2, :cond_2

    .line 1606
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsNeedToForceUpdate:Z

    goto :goto_1

    .line 1608
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updatePageState()V

    .line 1611
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAODStateEnabled:Z

    if-eqz p1, :cond_3

    .line 1612
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->updateAODClockStyle()V

    :cond_3
    return-void
.end method

.method public sendRequestRemoteViewsBroadcast()V
    .locals 3

    const-string/jumbo v0, "top"

    .line 1084
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 1086
    const-class v1, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$74LlhRdu4lcCLLZg4EF1ExtYe58;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$74LlhRdu4lcCLLZg4EF1ExtYe58;-><init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public sendRequestRemoteViewsBroadcast(Ljava/lang/String;)V
    .locals 1

    .line 1126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "top"

    .line 1130
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->sendRequestRemoteViewsBroadcast(Ljava/lang/String;Z)V

    return-void
.end method

.method setCurrentClockType(I)V
    .locals 5

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentClockType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FaceWidgetContainer"

    invoke-static {v3, v0, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-gez p1, :cond_0

    return-void

    .line 1411
    :cond_0
    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mCurrentClockType:I

    if-eq v0, p1, :cond_1

    .line 1412
    iput p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mCurrentClockType:I

    .line 1417
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isTypoClock(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x800013

    goto :goto_0

    :cond_2
    const/16 v0, 0x11

    .line 1418
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getCurrentPageState()Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    .line 1419
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getAODFaceWidgetPageGravity()I

    move-result p1

    if-eq v0, p1, :cond_4

    .line 1420
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/SettingsHelper;->setAODFaceWidgetPageGravity(I)V

    goto :goto_1

    .line 1424
    :cond_3
    iput p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mLastLockClockType:I

    .line 1425
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getFaceWidgetPageGravity()I

    move-result p1

    if-eq v0, p1, :cond_4

    .line 1426
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/SettingsHelper;->setFaceWidgetPageGravity(I)V

    goto :goto_1

    :cond_4
    move v4, v1

    .line 1430
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->updateGravity(I)V

    .line 1432
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updateInfoContainer()V

    if-eqz v4, :cond_5

    .line 1435
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->sendRequestRemoteViewsBroadcast()V

    :cond_5
    return-void
.end method

.method public setCurrentPage(Ljava/lang/String;)V
    .locals 5

    .line 846
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetPageAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->getPageIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "FaceWidgetContainer"

    if-ltz v0, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 848
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, p1

    const-string p1, "setCurrentPage() %s %d"

    invoke-static {v1, p1, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 850
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetViewPager:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 852
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCurrentPage() wrong pageIndex: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 5

    .line 1524
    iput p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mDarkAmount:F

    .line 1525
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->setDarkAmount(F)V

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    float-to-double v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double p1, v1, v3

    if-gez p1, :cond_1

    .line 1528
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setVisibility(Landroid/view/View;I)V

    .line 1529
    iget-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsChangingDozing:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 1530
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getCurrentPagePkgName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "servicebox_clock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1531
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    invoke-interface {v2}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->isDozing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1532
    iput-boolean v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsChangingDozing:Z

    goto :goto_1

    .line 1535
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfoContainer:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setVisibility(Landroid/view/View;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setDozing(Z)V
    .locals 2

    .line 1518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDozing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceWidgetContainer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1519
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsChangingDozing:Z

    return-void
.end method

.method public setExpandState(ZI)V
    .locals 2

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExpandState() isExpand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLockscreenPageState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mLockscreenPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNotificationCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mNotificationCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 599
    sget-object p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->EXPAND:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->SMALL:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    .line 600
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mLockscreenPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mNotificationCount:I

    if-ne v0, p2, :cond_1

    return-void

    .line 603
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mLockscreenPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    .line 604
    iput p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mNotificationCount:I

    .line 606
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updatePageState()V

    return-void
.end method

.method public setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method setPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 1559
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetViewPager:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->setPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method setPageTransformer(Z)V
    .locals 3

    .line 1567
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsPageAlphaTransitionEnabled:Z

    .line 1568
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-nez v0, :cond_0

    .line 1569
    new-instance v0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$mTwTANwLxb3BJLsue6bhh8IRl-g;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$mTwTANwLxb3BJLsue6bhh8IRl-g;-><init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    .line 1574
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetViewPager:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setPageTransformer(ZLcom/android/internal/widget/ViewPager$PageTransformer;)V

    :cond_0
    if-nez p1, :cond_2

    .line 1579
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetViewPager:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-virtual {p1}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 1580
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetViewPager:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1582
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setStatusCallback(Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1509
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1510
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setVisibility "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceWidgetContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showFaceWidgetFullScreen(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 706
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->showFaceWidgetFullScreen(Ljava/lang/String;ZI)V

    return-void
.end method

.method public showFaceWidgetFullScreen(Ljava/lang/String;ZI)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    .line 711
    iget-boolean v3, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mShowFullScreenInProgress:Z

    const-string v4, "FaceWidgetContainer"

    if-nez v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->hasWindow(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v3, 0x1

    .line 716
    iput-boolean v3, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mShowFullScreenInProgress:Z

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 719
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v3

    const/4 v7, 0x2

    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isKeyguardShowing()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const-string/jumbo v7, "showFaceWidgetFullScreen p=%s, external=%s, isKeyguardShowing=%s, o=%d"

    .line 718
    invoke-static {v4, v7, v5}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 782
    iput-boolean v6, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mShowFullScreenInProgress:Z

    return-void

    .line 726
    :cond_1
    :try_start_1
    const-class v5, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v5}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenAllDisabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 727
    iget-object v2, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->launchBaseApplication(Ljava/lang/String;Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V

    .line 728
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->wakeUp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 782
    iput-boolean v6, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mShowFullScreenInProgress:Z

    return-void

    .line 732
    :cond_2
    :try_start_2
    iget-object v5, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    sget-object v7, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;->FULLSCREEN:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    invoke-virtual {v5, v0, v7}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->get(Ljava/lang/String;Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 733
    invoke-virtual {v5}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->showExternalActivity()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v0, "external activity is launched"

    .line 734
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    .line 736
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->wakeUp()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 782
    :cond_3
    iput-boolean v6, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mShowFullScreenInProgress:Z

    return-void

    .line 741
    :cond_4
    :try_start_3
    iget-object v5, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v5, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getItem(Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    move-result-object v5

    if-eqz v5, :cond_a

    if-eqz v2, :cond_5

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isKeyguardShowing()Z

    move-result v7

    if-nez v7, :cond_5

    .line 744
    iget-object v2, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->launchBaseApplication(Ljava/lang/String;Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V

    .line 745
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->wakeUp()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 782
    iput-boolean v6, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mShowFullScreenInProgress:Z

    return-void

    .line 749
    :cond_5
    :try_start_4
    iget-object v7, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v7

    const-string/jumbo v8, "showFaceWidgetFullScreen!! %s"

    new-array v9, v3, [Ljava/lang/Object;

    .line 751
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v4, v8, v9}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v15, 0x1

    .line 759
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    move-result-object v11

    if-nez v7, :cond_6

    move/from16 v16, v3

    goto :goto_0

    :cond_6
    move/from16 v16, p3

    .line 765
    :goto_0
    iget-object v4, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    invoke-interface {v4}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->isDozing()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 766
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->wakeUp()V

    .line 769
    :cond_7
    iput-object v0, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mCurrentFullScreenPkgName:Ljava/lang/String;

    .line 770
    iget-object v12, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mCurrentFullScreenPkgName:Ljava/lang/String;

    .line 771
    invoke-direct {v1, v5, v2}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getFaceWidgetFullScreenPage(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;Z)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    move-result-object v13

    if-eqz v2, :cond_8

    const-wide/16 v4, 0x1

    goto :goto_1

    :cond_8
    const-wide/16 v4, -0x1

    :goto_1
    move-wide/from16 v17, v4

    move v14, v15

    .line 770
    invoke-virtual/range {v11 .. v18}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->showFullScreen(Ljava/lang/String;Landroid/view/View;ZZIJ)V

    .line 775
    iget-object v2, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    if-eqz v2, :cond_9

    .line 776
    iget-object v2, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    const-wide/16 v4, 0x64

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->setFullScreenMode(ZJ)V

    .line 779
    :cond_9
    invoke-direct {v1, v0, v3}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updateAnalytics(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 782
    :cond_a
    iput-boolean v6, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mShowFullScreenInProgress:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v6, v1, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mShowFullScreenInProgress:Z

    throw v0

    :cond_b
    :goto_2
    const-string v0, "Ignore show service box. It is already in progress or showing"

    .line 712
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateCMAS(Z)V
    .locals 2

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCMAS() hasCmasNotification = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHasCMAS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mHasCMAS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mHasCMAS:Z

    if-eq v0, p1, :cond_0

    .line 587
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mHasCMAS:Z

    .line 589
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mOwnerInfo:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->updateOwnerInfo(Z)V

    :cond_0
    return-void
.end method

.method public updateClockPageLocation(F)V
    .locals 0

    .line 946
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    if-eqz p0, :cond_0

    .line 947
    invoke-interface {p0, p1}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->updateClockPosition(F)V

    :cond_0
    return-void
.end method

.method public updatePageState()V
    .locals 9

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 613
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    .line 614
    invoke-virtual {v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getCurrentPageState()Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mLockscreenPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mNotificationCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsScreenTurnedOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsNeedToForceUpdate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "FaceWidgetContainer"

    const-string/jumbo v4, "updatePageState() >> START >> currentState=%s, lockState=%s, mNotiCount=%d, mIsScreenTurnedOn=%b, mIsNeedToForceUpdate=%b"

    .line 613
    invoke-static {v1, v4, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mAODStateEnabled:Z

    if-eqz v0, :cond_0

    .line 620
    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    goto :goto_0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mLockscreenPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    .line 625
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v4}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getCurrentPageState()Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    move-result-object v4

    .line 627
    iget-boolean v5, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsNeedToForceUpdate:Z

    if-nez v5, :cond_1

    if-ne v4, v0, :cond_1

    const-string/jumbo p0, "updatePageState() << END << same state"

    .line 628
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v5, 0x0

    .line 633
    iget-object v6, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetViewPager:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    if-eqz v6, :cond_2

    .line 634
    invoke-virtual {v6}, Lcom/android/internal/widget/ViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    .line 637
    :cond_2
    iget-boolean v6, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsNeedToForceUpdate:Z

    if-eqz v6, :cond_3

    .line 639
    iput-boolean v2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mIsNeedToForceUpdate:Z

    .line 642
    :cond_3
    invoke-direct {p0, v4, v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isNeedToTransition(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)Z

    move-result v4

    .line 643
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePageState() needToTransition = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_5

    if-eqz v5, :cond_4

    .line 646
    iget-object v4, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v4}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getCurrentPageState()Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    move-result-object v4

    invoke-virtual {v5, v4, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->makeTransitionData(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)V

    .line 649
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/facewidget/FaceWidgetContainer$5;

    invoke-direct {v5, p0, v0, v6}, Lcom/android/systemui/facewidget/FaceWidgetContainer$5;-><init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Z)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 666
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    .line 669
    invoke-virtual {v5}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->clearTransitionData()V

    .line 672
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v4, v0, v6}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->setPageState(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Z)V

    .line 675
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer;->mFaceWidgetViewPager:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    sget-object v4, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, v4, :cond_7

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isShowFaceWidgetOnAod()Z

    move-result v4

    if-nez v4, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->setSwipeLocked(Z)V

    .line 677
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePageState() << END << toState = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
