.class public Lcom/android/keyguard/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/app/trust/TrustManager$TrustListener;
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    }
.end annotation


# static fields
.field public static final CORE_APPS_ONLY:Z

.field private static final DELAYED_LIFT_TO_WAKE_UP_TIME:I

.field private static final FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

.field private static final PARTIAL_WAKELOCK_TIMEOUT_MS:I

.field private static final WAKELOCK_TIMEOUT_MS:I

.field private static sBiometricsManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

.field private static sCurrentUser:I

.field private static sDisableHandlerCheckForTesting:Z

.field private static sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private static sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private static sIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;


# instance fields
.field private mActivePasswordQuality:I

.field private mActiveRemoteLockIndex:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAssistantVisible:Z

.field private mAuthInterruptActive:Z

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

.field private mBiometricEnabledCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

.field private mBiometricFailedAttempts:Landroid/util/SparseIntArray;

.field private mBiometricLockoutResetRunnable:Ljava/lang/Runnable;

.field private mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field private mBiometricType:I

.field private mBiometricsFace:Z

.field private mBiometricsFingerprint:Z

.field private mBiometricsIB:Z

.field private mBiometricsIris:Z

.field private mBootCompleted:Z

.field private mBouncer:Z

.field protected final mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCarrierLock:Z

.field private mCocktailBarStateChangedListener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

.field private mCocktailBarWindowType:I

.field private final mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mDebugLogStore:Lcom/android/systemui/util/DebugLogStore;

.field private mDeviceInteractive:Z

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDirectionLock:Z

.field private mDisableCamera:Z

.field private mDisabledBiometricBySecurityDialog:Z

.field private mDisplay:Landroid/view/Display;

.field private mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

.field private mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field mESimSkipped:[Z

.field private mEmergencyStateChangedReason:I

.field private mFMMLock:Z

.field mFaceAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mFaceCancelSignal:Landroid/os/CancellationSignal;

.field private final mFaceLockoutResetCallback:Landroid/hardware/face/FaceManager$LockoutResetCallback;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mFaceRunningState:I

.field private mFaceSettingEnabledForUser:Z

.field private mFailedAttempts:Landroid/util/SparseIntArray;

.field private mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

.field private mFingerPrintFailedAttempts:Landroid/util/SparseIntArray;

.field private mFingerprintAuthenticationSequence:I

.field private mFingerprintCancelSignal:Landroid/os/CancellationSignal;

.field private final mFingerprintLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field private mFingerprintRunningState:I

.field private mFpAuthHandler:Landroid/os/Handler;

.field private mFpInDisplayState:I

.field private mFpMaskToken:Landroid/os/IBinder;

.field private final mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;",
            ">;"
        }
    .end annotation
.end field

.field private final mFpMsgConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;",
            ">;"
        }
    .end annotation
.end field

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGoingToSleep:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHardwareFaceUnavailableRetryCount:I

.field private mHardwareFingerprintUnavailableRetryCount:I

.field private mHasFocus:Z

.field private mHasLockscreenWallpaper:Z

.field private mIBAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

.field private mIBCancelSignal:Landroid/os/CancellationSignal;

.field private mIBRunningState:I

.field private mIrisAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

.field private mIrisCancelSignal:Landroid/os/CancellationSignal;

.field private mIrisTimeoutErrorCount:I

.field private mIrisView:Landroid/view/View;

.field private mIsDialogShowing:Z

.field private mIsDismissActionExist:Z

.field private mIsDreaming:Z

.field private mIsDynamicLockViewMode:Z

.field private mIsFaceReady:Z

.field public mIsForceCancelIris:Z

.field private mIsGuidePopupShowing:Z

.field public mIsIrisReady:Z

.field public mIsIrisRunningState:I

.field public mIsIrisUnlockFailed:Z

.field private mIsKidsModeRunning:Z

.field public mIsLocksTaskModeLocked:Z

.field private mIsNeedToUpdateFpInDisplayState:Z

.field private mIsNotiStarShown:Z

.field private mIsPanelExpandingStarted:Z

.field private mIsPickedUp:Z

.field private final mIsPrimaryUser:Z

.field private mIsRunningBlackMemo:Z

.field private mIsScreenOffInDexMode:Z

.field private mIsScreenSaverRunning:Z

.field private mIsSecured:Z

.field private mIsServiceBoxFullScreen:Z

.field private mIsShadeLockedState:Z

.field private mIsShortcutPreviewShowing:Z

.field private mIsSkipFPResponse:Z

.field private mIsUserUnlocked:Z

.field private mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

.field private mKeyguardGoingAway:Z

.field private mKeyguardIsVisible:Z

.field private mKeyguardOccluded:Z

.field private mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mKeyguardShowing:Z

.field private mKeyguardUnlocking:Z

.field private mLiftToWakeRunnable:Ljava/lang/Runnable;

.field private mLockIconPressed:Z

.field private mLockNotificationClicked:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mLockoutAttemptDeadline:J

.field private mLockoutAttemptTimeout:J

.field private mLockoutBiometricAttemptDeadline:J

.field private mLockoutBiometricAttemptTimeout:J

.field private mLockoutReason:Ljava/lang/String;

.field private mLogoutEnabled:Z

.field private mMaximumFailedPasswordsForWipe:I

.field private mNeedsSlowUnlockTransition:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOneHandModeSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mPasswordLock:Z

.field private mPatternLock:Z

.field private mPhoneState:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mPreCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mReleaseWakeLockRunnable:Ljava/lang/Runnable;

.field private mRemoteLockInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RemoteLockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryFaceAuthentication:Ljava/lang/Runnable;

.field private mRetryFingerprintAuthentication:Ljava/lang/Runnable;

.field private mRingMode:I

.field private mSIPShown:Z

.field private mScreenOn:Z

.field private mSecureLockChangedCallback:Landroid/os/IRemoteCallback;

.field private mSemCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

.field private mSemDvfsCoreMin:Lcom/samsung/android/os/SemDvfsManager;

.field private mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

.field private mSemFaceAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

.field private mSemFaceCancelSignal:Landroid/os/CancellationSignal;

.field private mSemFaceRunningState:I

.field private mSensorListener:Lcom/android/systemui/sensor/SensorController$SensorListener;

.field mServiceStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field mServiceStatesScopeInvalid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsCallbackForUPSM:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSettingsValueListForPSM:[Landroid/net/Uri;

.field private mShellCommandCallback:Landroid/os/IRemoteCallback;

.field private final mShowAlwaysOnNotification:Ljava/lang/Runnable;

.field mSimDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;",
            ">;"
        }
    .end annotation
.end field

.field private mSimDisabledPermanently:Z

.field mSimPinPassed:[Z

.field private mStoredPasswordQuality:I

.field protected mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSubscriptionInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSupportedCPUCoreTable:[I

.field private mSupportedCPUFreqTable:[I

.field private mSwipeLockShowingBeforeTimeout:Z

.field private mSwitchingUser:Z

.field private mSystemReady:Z

.field private final mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field protected mTelephonyCapable:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mTimeoutSkipFPResponse:Ljava/lang/Runnable;

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field private mUpdateBiometricListeningState:Ljava/lang/Runnable;

.field private mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

.field private mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

.field private mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

.field private mUserHasTrust:Landroid/util/SparseBooleanArray;

.field private mUserIBAuthenticated:Landroid/util/SparseBooleanArray;

.field private mUserIrisAuthenticated:Landroid/util/SparseBooleanArray;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserSemFaceAuthenticated:Landroid/util/SparseBooleanArray;

.field private mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 365
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.FallbackHome"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

    :try_start_0
    const-string v0, "package"

    .line 381
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 380
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 381
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->CORE_APPS_ONLY:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x9c4

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    :goto_0
    sput v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->PARTIAL_WAKELOCK_TIMEOUT_MS:I

    .line 591
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_ENG_BUILD:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x7d0

    goto :goto_1

    :cond_1
    const/16 v0, 0x2bc

    :goto_1
    sput v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DELAYED_LIFT_TO_WAKE_UP_TIME:I

    .line 592
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_ENG_BUILD:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xfa0

    goto :goto_2

    :cond_2
    const/16 v0, 0xce4

    :goto_2
    sput v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->WAKELOCK_TIMEOUT_MS:I

    return-void

    :catch_0
    move-exception v0

    .line 383
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsLocksTaskModeLocked:Z

    .line 391
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    .line 392
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 404
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    const/4 v2, 0x0

    .line 421
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 425
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 431
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPreCallbacks:Ljava/util/ArrayList;

    .line 435
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 447
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 448
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    .line 452
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenSaverRunning:Z

    .line 459
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsKidsModeRunning:Z

    .line 470
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    .line 471
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    .line 480
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDismissActionExist:Z

    .line 481
    sget-object v3, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_ACTIVE:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    iput-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    .line 485
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    .line 486
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSupportedCPUFreqTable:[I

    .line 487
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemDvfsCoreMin:Lcom/samsung/android/os/SemDvfsManager;

    .line 492
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    const/4 v3, -0x1

    .line 493
    iput v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveRemoteLockIndex:I

    .line 497
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsRunningBlackMemo:Z

    .line 506
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsUserUnlocked:Z

    .line 520
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 521
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisabledBiometricBySecurityDialog:Z

    .line 522
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    .line 523
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerPrintFailedAttempts:Landroid/util/SparseIntArray;

    .line 524
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    .line 528
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutReason:Ljava/lang/String;

    .line 529
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    .line 530
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 531
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpAuthHandler:Landroid/os/Handler;

    .line 536
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpInDisplayState:I

    .line 538
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    .line 539
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShortcutPreviewShowing:Z

    .line 540
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPanelExpandingStarted:Z

    .line 541
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasFocus:Z

    .line 542
    new-instance v3, Lcom/android/keyguard/KeyguardUpdateMonitor$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mOneHandModeSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 562
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    .line 576
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceRunningState:I

    .line 577
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserSemFaceAuthenticated:Landroid/util/SparseBooleanArray;

    .line 579
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    .line 580
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCocktailBarWindowType:I

    .line 589
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPickedUp:Z

    .line 596
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenOffInDexMode:Z

    const/4 v3, 0x2

    new-array v4, v3, [Z

    .line 601
    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimPinPassed:[Z

    new-array v4, v3, [Z

    .line 606
    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mESimSkipped:[Z

    .line 608
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$2;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$2;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 669
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIrisAuthenticated:Landroid/util/SparseBooleanArray;

    .line 685
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIBRunningState:I

    .line 686
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIBAuthenticated:Landroid/util/SparseBooleanArray;

    .line 698
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsGuidePopupShowing:Z

    .line 703
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    .line 707
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEmergencyStateChangedReason:I

    .line 714
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor$3;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 956
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$4;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    .line 967
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$5;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$5;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 975
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 976
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    .line 977
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    .line 978
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    .line 979
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    .line 982
    new-instance v4, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$w3Onnt26KGuFqBxQaSJgQd6Y_G4;

    invoke-direct {v4, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$w3Onnt26KGuFqBxQaSJgQd6Y_G4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUpdateBiometricListeningState:Ljava/lang/Runnable;

    .line 1430
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$6;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$6;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowAlwaysOnNotification:Ljava/lang/Runnable;

    .line 1452
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$7;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$7;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutSkipFPResponse:Ljava/lang/Runnable;

    .line 1460
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$8;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$8;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    .line 1624
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$9;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$9;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFaceAuthentication:Ljava/lang/Runnable;

    .line 1875
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    invoke-direct {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    .line 1877
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$10;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$10;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2093
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$11;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    .line 2121
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$12;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$12;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    .line 2129
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$13;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$13;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockoutResetCallback:Landroid/hardware/face/FaceManager$LockoutResetCallback;

    .line 2221
    new-instance v4, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$uz4FyIc1Vb51GqJkoKv0JdEaCfs;

    invoke-direct {v4, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$uz4FyIc1Vb51GqJkoKv0JdEaCfs;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpMsgConsumer:Ljava/util/function/Consumer;

    .line 2339
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$14;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$14;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    .line 3096
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 5203
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$18;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$18;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 5459
    new-instance v4, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$FVxd9FqXugtdXEl3EX_49XpWpmw;

    invoke-direct {v4, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$FVxd9FqXugtdXEl3EX_49XpWpmw;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCocktailBarStateChangedListener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    .line 5575
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$19;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$19;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricLockoutResetRunnable:Ljava/lang/Runnable;

    .line 5876
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$20;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$20;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 6321
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$21;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$21;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    .line 6961
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$22;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$22;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIBAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    .line 7231
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStatesScopeInvalid:Ljava/util/HashMap;

    .line 7616
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 7662
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 7663
    new-instance v4, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$yeGX56dAFUb5fE1bcun2LfS3RF8;

    invoke-direct {v4, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$yeGX56dAFUb5fE1bcun2LfS3RF8;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsCallbackForUPSM:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v3, v3, [Landroid/net/Uri;

    const-string/jumbo v4, "ultra_powersaving_mode"

    .line 7668
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "emergency_mode"

    .line 7669
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v3, v1

    iput-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsValueListForPSM:[Landroid/net/Uri;

    const-wide/16 v3, 0x0

    .line 7689
    iput-wide v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutAttemptDeadline:J

    .line 7690
    iput-wide v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutAttemptTimeout:J

    .line 7691
    iput-wide v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutBiometricAttemptDeadline:J

    .line 7692
    iput-wide v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutBiometricAttemptTimeout:J

    .line 7928
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$23;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$23;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureLockChangedCallback:Landroid/os/IRemoteCallback;

    .line 8026
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$aYDopy1yV4EGkXVLGIHYW_-0cE0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$aYDopy1yV4EGkXVLGIHYW_-0cE0;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLiftToWakeRunnable:Ljava/lang/Runnable;

    .line 8034
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$I0ci_Iiyeh4ZtK8C0iiXdVi9tBA;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$I0ci_Iiyeh4ZtK8C0iiXdVi9tBA;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mReleaseWakeLockRunnable:Ljava/lang/Runnable;

    .line 8214
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$24;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$24;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShellCommandCallback:Landroid/os/IRemoteCallback;

    .line 3158
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 3159
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 3160
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 3161
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$-GZaxeQabrHzh5b8rORPTQGQVD8;

    invoke-direct {v3, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$-GZaxeQabrHzh5b8rORPTQGQVD8;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-direct {v0, p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 3162
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 3166
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v0, :cond_0

    .line 3167
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V

    .line 3170
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const-string v4, "KeyguardUpdateMonitor"

    if-eq v0, v3, :cond_1

    .line 3171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentUser "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCurrentUser(I)V

    .line 3176
    :cond_1
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    const/4 v6, 0x1

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIIIIIZ)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 3179
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.TIME_TICK"

    .line 3182
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.TIME_SET"

    .line 3183
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    .line 3184
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    .line 3185
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    .line 3186
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    .line 3187
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SERVICE_STATE"

    .line 3188
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PHONE_STATE"

    .line 3189
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    .line 3190
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 3191
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3193
    sget-boolean v5, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_FACE_WIDGET:Z

    if-eqz v5, :cond_2

    const-string v5, "com.samsung.android.intent.action.RESPONSE_SERVICEBOX_REMOTEVIEWS"

    .line 3194
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.samsung.android.intent.action.RESPONSE_SERVICEBOX_INTERNAL_REMOTEVIEWS"

    .line 3195
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    const-string v5, "com.sec.android.intent.action.BLACK_MEMO"

    .line 3198
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    .line 3199
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.LOCALE_CHANGED"

    .line 3206
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3209
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5, v0, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3211
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_FACE_WIDGET:Z

    if-eqz v0, :cond_3

    .line 3212
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    .line 3213
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    .line 3214
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    .line 3215
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "package"

    .line 3216
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3217
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5, v0, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3221
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "com.samsung.android.theme.themecenter.THEME_APPLY"

    .line 3222
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.samsung.android.theme.themecenter.THEME_APPLY_START"

    .line 3223
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.samsung.android.theme.themecenter.THEME_REAPPLY"

    .line 3224
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3225
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5, v0, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3230
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "com.samsung.android.action.LOCK_TASK_MODE"

    .line 3231
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3232
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5, v0, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3234
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"

    .line 3235
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3236
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const-string v7, "com.samsung.kidshome.broadcast.DEFAULT_HOME_CHANGE_PERMISSION"

    invoke-virtual {p1, v5, v0, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3242
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 3243
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3244
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5, v0, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3248
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v5, 0x3e8

    .line 3249
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    .line 3250
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3251
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5, v0, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3253
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    .line 3254
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 3255
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.facelock.FACE_UNLOCK_STARTED"

    .line 3256
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.facelock.FACE_UNLOCK_STOPPED"

    .line 3257
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3258
    invoke-virtual {v10, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 3259
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3260
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3263
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 3265
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v3, Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$15;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {v0, v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3284
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3287
    :goto_0
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_UI_BIOMETRICS:Z

    if-eqz v0, :cond_4

    .line 3288
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    .line 3289
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    if-eqz v0, :cond_4

    .line 3290
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCocktailBarStateChangedListener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->registerStateListener(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V

    :cond_4
    const-string/jumbo v0, "trust"

    .line 3295
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    const-string v0, "dreams"

    .line 3298
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3297
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 3300
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.fingerprint"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "fingerprint"

    .line 3301
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 3303
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.biometrics.face"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "face"

    .line 3304
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 3306
    :cond_6
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3307
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0, p0}, Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V

    .line 3308
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    .line 3310
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 3312
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_8

    .line 3313
    :cond_7
    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 3314
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    invoke-virtual {v0, v3}, Landroid/hardware/biometrics/BiometricManager;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V

    :cond_8
    const-string v0, "power"

    .line 3329
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    const-string v0, "alarm"

    .line 3330
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3333
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    .line 3334
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isPrimaryUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPrimaryUser:Z

    .line 3337
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceType;->isFbeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v1

    :cond_9
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsUserUnlocked:Z

    .line 3340
    sget-boolean v0, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_BATTERY_CHARGING_ESTIMATE_TIME:Z

    if-eqz v0, :cond_a

    const-string v0, "batterystats"

    .line 3341
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 3345
    :cond_a
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->prepareBooster()V

    .line 3348
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 3349
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    .line 3351
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisableCamera:Z

    .line 3352
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMaximumFailedPasswordsForWipe:I

    .line 3354
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAirplaneModeState()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/IBinder;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardUpdateMonitor;ILandroid/os/IRemoteCallback;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitching(ILandroid/os/IRemoteCallback;)V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleIrisAuthenticationSucceeded()V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/CharSequence;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleIBAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$10200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleIBAuthenticationSucceeded()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitchComplete(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardReset()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardBouncerChanged(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserInfoChanged(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleOpenThemeChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleOpenThemeChangeStarted()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    .line 203
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenOffInDexMode:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleOpenThemeReApply()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenOffInDexMode:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceUnlockStateChanged(ZI)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimSubscriptionInfoChanged()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDreamingStateChanged(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserUnlocked()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateLogoutEnabled()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceWidgetRemoteViews(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;Z)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePackageRemoved(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleLockModeChanged()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUpdateAllBiometricsListeningState()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUpdateSecureLockCallback()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleRemoteLockInfoChanged()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Bundle;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardStateUpdated(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleLocaleChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeZoneUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDlsBiometricMode(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDlsViewMode(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStatusBarState(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSystemDialogShowing()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSecurityModeChanged(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleServiceBoxFullScreenMode(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleEmergencyStateChanged(I)V

    return-void
.end method

.method static synthetic access$4800()I
    .locals 1

    .line 203
    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    return v0
.end method

.method static synthetic access$4900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleNotifyLockout()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUnlockSimulation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleLockSimulation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleNotiStarState(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuth(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)V

    return-void
.end method

.method static synthetic access$5402(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceSettingEnabledForUser:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5702(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 0

    .line 203
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    return p0
.end method

.method static synthetic access$5900(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 0

    .line 203
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleRingerModeChange(I)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/keyguard/KeyguardUpdateMonitor;I)Z
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isESimSkipped(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6100(Lcom/android/keyguard/KeyguardUpdateMonitor;IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifySimStateInfo(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLockTaskModeLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    .line 203
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsKidsModeRunning:Z

    return p0
.end method

.method static synthetic access$6302(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsKidsModeRunning:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    .line 203
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsRunningBlackMemo:Z

    return p0
.end method

.method static synthetic access$6402(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsRunningBlackMemo:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricLockoutResetRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintLockoutReset()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceLockoutReset()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAuthFailed()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAuthenticated(I)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceHelp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAcquired(I)V

    return-void
.end method

.method static synthetic access$7902(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsUserUnlocked:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDeviceProvisioned()V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/UserManager;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLiftToWakeAndUnlockEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8202(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPickedUp:Z

    return p1
.end method

.method static synthetic access$8300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/PowerManager;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$8400()I
    .locals 1

    .line 203
    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->PARTIAL_WAKELOCK_TIMEOUT_MS:I

    return v0
.end method

.method static synthetic access$8500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLiftToWakeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$8600()I
    .locals 1

    .line 203
    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DELAYED_LIFT_TO_WAKE_UP_TIME:I

    return v0
.end method

.method static synthetic access$8700(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    .line 203
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p0
.end method

.method static synthetic access$8702(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDevicePolicyManagerStateChanged()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/function/Consumer;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/CharSequence;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceRecognitionAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/CharSequence;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceRecognitionAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceRecognitionAuthenticationSucceeded()V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    .line 203
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceReady:Z

    return p0
.end method

.method static synthetic access$9402(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceReady:Z

    return p1
.end method

.method static synthetic access$9500(Lcom/android/keyguard/KeyguardUpdateMonitor;I)Z
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isReadyBackgroundAuthentication(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$9600(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleShowBackgroundAuthToast(I)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceRecognitionAcquired(I)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 0

    .line 203
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisTimeoutErrorCount:I

    return p0
.end method

.method static synthetic access$9808(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 2

    .line 203
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisTimeoutErrorCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisTimeoutErrorCount:I

    return v0
.end method

.method static synthetic access$9900(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/CharSequence;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleIrisAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private applyFPBooster(I)V
    .locals 1

    .line 2949
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSupportedCPUFreqTable:[I

    if-eqz v0, :cond_0

    .line 2950
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 2952
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSupportedCPUCoreTable:[I

    if-eqz v0, :cond_1

    .line 2953
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemDvfsCoreMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_1
    return-void
.end method

.method private checkIsHandlerThread()V
    .locals 2

    .line 5392
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sDisableHandlerCheckForTesting:Z

    if-eqz v0, :cond_0

    return-void

    .line 5395
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "must call on mHandler\'s thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 5397
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", not "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardUpdateMonitor"

    .line 5396
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5400
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private checkSimState(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 1

    .line 5757
    sget-object p0, Lcom/android/keyguard/KeyguardUpdateMonitor$27;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method private clearESimSkipped()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "clearESimSkipped"

    .line 5032
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5033
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mESimSkipped:[Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    .line 5034
    aput-boolean v0, p0, v0

    return-void
.end method

.method public static disableHandlerCheckForTesting(Landroid/app/Instrumentation;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "Must only call this method in tests!"

    .line 7307
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 7311
    sput-boolean p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sDisableHandlerCheckForTesting:Z

    return-void
.end method

.method private dispatchCallback(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 8272
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPreCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 8273
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPreCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 8275
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8280
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 8281
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_2

    .line 8283
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private dispatchErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1857
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$eyfv2OlXhsCMnCzy45QluqlTot0;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$eyfv2OlXhsCMnCzy45QluqlTot0;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static declared-synchronized getCurrentUser()I
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    .line 990
    :try_start_0
    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    .line 2688
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v0, :cond_0

    .line 2689
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2691
    :cond_0
    sget-object p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .line 7945
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    .line 7947
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 7946
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 7948
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 7950
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object p0
.end method

.method private getLockTypeSummary(I)Ljava/lang/String;
    .locals 8

    .line 7444
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7445
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "none"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "swipe"

    :goto_0
    return-object p0

    .line 7448
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7449
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    const v2, 0x10001

    if-eq v1, v2, :cond_4

    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_3

    const/high16 v2, 0x30000

    if-eq v1, v2, :cond_3

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_2

    const/high16 v2, 0x50000

    if-eq v1, v2, :cond_2

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 7471
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "0x%x"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "password"

    .line 7467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v1, "pin"

    .line 7461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v1, "direction lock"

    .line 7453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v1, "pattern"

    .line 7457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 7475
    fill-array-data v1, :array_0

    const-string v2, "fingerprints"

    const-string v4, "iris"

    const-string v5, "face"

    const-string v6, "intelligent scan"

    .line 7478
    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    .line 7481
    array-length v4, v1

    move v5, v3

    :goto_2
    if-ge v3, v4, :cond_7

    aget v6, v1, v3

    .line 7482
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, ", "

    .line 7483
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 7488
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x1
        0x10
        0x100
        0x1000
    .end array-data
.end method

.method private getSecFailedAttemptsBeforeWipe()I
    .locals 1

    .line 7541
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v0

    .line 7542
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMaximumFailedPasswordsForWipe:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/16 p0, 0xf

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static declared-synchronized getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    .line 5791
    :try_start_0
    sget-object v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v1, :cond_0

    .line 5792
    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p0

    sput-object p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 5794
    :cond_0
    sget-object p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getSemBiometricsManager(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    .line 6659
    :try_start_0
    sget-object v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sBiometricsManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

    if-nez v1, :cond_0

    .line 6660
    invoke-static {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;

    move-result-object p0

    sput-object p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sBiometricsManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

    .line 6662
    :cond_0
    sget-object p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sBiometricsManager:Lcom/samsung/android/biometrics/SemBiometricsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    .line 6016
    :try_start_0
    sget-object v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v1, :cond_0

    .line 6017
    invoke-static {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object p0

    sput-object p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 6019
    :cond_0
    sget-object p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private handleAirplaneModeChanged()V
    .locals 1

    .line 1095
    sget-object v0, Lcom/android/keyguard/-$$Lambda$m7rx9L3O-cMAbxCJ4DCUKdNbllg;->INSTANCE:Lcom/android/keyguard/-$$Lambda$m7rx9L3O-cMAbxCJ4DCUKdNbllg;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleBatteryUpdate"

    .line 4511
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4514
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_0

    .line 4515
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->remaining:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4521
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 4522
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    if-eqz v0, :cond_1

    .line 4525
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$JYmcqhTYNjPwX_r-Pn_cyLQNimk;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$JYmcqhTYNjPwX_r-Pn_cyLQNimk;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method private handleBootCompleted()V
    .locals 2

    .line 4396
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4397
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    .line 4399
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/16 v1, 0x100

    .line 4401
    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricLockEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4402
    monitor-enter p0

    .line 4403
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 4404
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4423
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/keyguard/-$$Lambda$ocjmQB6CaN4SPkKU4zNCy2Fer0Q;->INSTANCE:Lcom/android/keyguard/-$$Lambda$ocjmQB6CaN4SPkKU4zNCy2Fer0Q;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleDevicePolicyManagerStateChanged()V
    .locals 2

    .line 4322
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 4324
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4325
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisableCamera:Z

    .line 4326
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMaximumFailedPasswordsForWipe:I

    .line 4331
    :cond_0
    sget-object v0, Lcom/android/keyguard/-$$Lambda$MaabuV1IAeJXOpm7cnA-ccRtAsw;->INSTANCE:Lcom/android/keyguard/-$$Lambda$MaabuV1IAeJXOpm7cnA-ccRtAsw;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleDeviceProvisioned()V
    .locals 2

    .line 4440
    sget-object v0, Lcom/android/keyguard/-$$Lambda$d1bq6V5ku4vF7OMbdd5D988qRLE;->INSTANCE:Lcom/android/keyguard/-$$Lambda$d1bq6V5ku4vF7OMbdd5D988qRLE;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 4443
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 4445
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 4446
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 4448
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method private handleDlsBiometricMode(Z)V
    .locals 2

    .line 2997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDlsBiometricMode(), enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDynamicLockViewMode:Z

    if-eq v0, p1, :cond_1

    .line 2999
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDynamicLockViewMode:Z

    .line 3001
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3002
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 3004
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3005
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    :cond_1
    return-void
.end method

.method private handleDlsViewMode(I)V
    .locals 2

    .line 2989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDlsViewMode(), mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$vb6H9TKyMsbBptVyxm-7rino-8U;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$vb6H9TKyMsbBptVyxm-7rino-8U;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleDreamingStateChanged(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 2812
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    .line 2813
    :goto_1
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eq v3, p1, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    .line 2814
    :goto_2
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenSaverRunning:Z

    if-eq v4, v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    if-nez v3, :cond_4

    if-nez v0, :cond_4

    return-void

    .line 2818
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDreamingStateChanged() dreaming : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", screen saver : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenSaverRunning:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardUpdateMonitor"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 2822
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenSaverRunning:Z

    .line 2825
    new-instance p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$i7KNRB9qZcO6kf1MtS4KJeQAa7E;

    invoke-direct {p1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$i7KNRB9qZcO6kf1MtS4KJeQAa7E;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    if-eqz v2, :cond_5

    .line 2828
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 2829
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSemFaceAuthenticated(Z)V

    .line 2830
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisAuthenticated(Z)V

    .line 2831
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIBAuthenticated(Z)V

    .line 2834
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    if-eqz v0, :cond_6

    .line 2836
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    :cond_6
    return-void
.end method

.method private handleEmergencyStateChanged(I)V
    .locals 2

    .line 3031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEmergencyStateChange reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEmergencyStateChangedReason:I

    return-void
.end method

.method private handleFaceAcquired(I)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 1589
    :cond_0
    sget-object p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$HzxDzYxIvAD-Gbq-hmP8tMFf-ng;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$HzxDzYxIvAD-Gbq-hmP8tMFf-ng;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleFaceAuthFailed()V
    .locals 2

    const/4 v0, 0x0

    .line 1577
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 1579
    sget-object v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$NT7q0HyuSt21yIpoJ8vD7PwK2a0;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$NT7q0HyuSt21yIpoJ8vD7PwK2a0;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 1581
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_face_not_recognized:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceHelp(ILjava/lang/String;)V

    return-void
.end method

.method private handleFaceAuthenticated(I)V
    .locals 4

    const-string v0, "KeyguardFace"

    const-string v1, "KeyGuardUpdateMonitor#handlerFaceAuthenticated"

    .line 1594
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1598
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, p1, :cond_0

    .line 1604
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Face authenticated for wrong user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1613
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    return-void

    .line 1607
    :cond_0
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1608
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Face authentication disabled by DPM for userId: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1613
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    return-void

    .line 1611
    :cond_1
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFaceAuthenticated(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1613
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 1615
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    const-string v2, "Failed to get current user id: "

    .line 1600
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1613
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    return-void

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    throw p1
.end method

.method private handleFaceError(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    .line 1634
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    if-ne v2, v0, :cond_0

    .line 1636
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 1637
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    goto :goto_0

    .line 1639
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    :goto_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1643
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    if-ge v2, v0, :cond_1

    add-int/2addr v2, v1

    .line 1644
    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    .line 1645
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFaceAuthentication:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1646
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFaceAuthentication:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 1651
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v1, 0x8

    .line 1653
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 1651
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 1657
    :cond_2
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$3gSfue4JsH3F0LqV4ZMMaJAqUok;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$3gSfue4JsH3F0LqV4ZMMaJAqUok;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleFaceHelp(ILjava/lang/String;)V
    .locals 1

    .line 1620
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$Png0CoNWV7Vtlta75NCKMYmGG4k;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$Png0CoNWV7Vtlta75NCKMYmGG4k;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleFaceLockoutReset()V
    .locals 0

    .line 1662
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method private handleFaceRecognitionAcquired(I)V
    .locals 0

    .line 6009
    sget-object p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SYP5M9nasTcl8Hs0tG3FaaSZEWU;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SYP5M9nasTcl8Hs0tG3FaaSZEWU;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleFaceRecognitionAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 5957
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$-HsmAnVFXxXONAlSB7x0_pX1WZg;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$-HsmAnVFXxXONAlSB7x0_pX1WZg;-><init>(ILjava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 5961
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->notifyFaceAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private handleFaceRecognitionAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 5967
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5969
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$snpvxhZ_mltKWUPl9jpmyDTgh6o;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$snpvxhZ_mltKWUPl9jpmyDTgh6o;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleFaceRecognitionAuthenticationSucceeded()V
    .locals 2

    const-string v0, "KeyGuardUpdateMonitor#handleFaceRecognitionAuthenticationSucceeded"

    .line 5974
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 5975
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 5977
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "KeyguardFingerPrint"

    const-string v1, "Face onAuthenticationSucceeded. FP will be stop!"

    .line 5979
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5980
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    .line 5984
    :cond_0
    sget-object v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$HSqCB_VhuJ_fqNnlCCE77VIZyE4;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$HSqCB_VhuJ_fqNnlCCE77VIZyE4;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 5986
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private handleFaceUnlockStateChanged(ZI)V
    .locals 1

    .line 1698
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 1699
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1701
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$BLf0DyxOjKLS3jm5A2XRIgbqOVY;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$BLf0DyxOjKLS3jm5A2XRIgbqOVY;-><init>(ZI)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleFaceWidgetRemoteViews(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V
    .locals 1

    .line 2865
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$asH2_qg3nXdMjtiWkB0R35Tw4nM;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$asH2_qg3nXdMjtiWkB0R35Tw4nM;-><init>(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleFingerprintAcquired(I)V
    .locals 7

    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFingerprintAcquired( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFingerPrint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    const/16 v2, 0x2712

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutSkipFPResponse:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "FP Capture started. Therefore, the FP response will be skipped."

    .line 1262
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v5}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 1268
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsNeedToUpdateFpInDisplayState:Z

    if-eqz v0, :cond_5

    .line 1269
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 1270
    :goto_1
    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpInDisplayState:I

    if-eq v4, v0, :cond_3

    .line 1271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFpInDisplayState is : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpInDisplayState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpInDisplayState:I

    .line 1274
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpInDisplayState:I

    invoke-virtual {v1, v4}, Landroid/hardware/fingerprint/FingerprintManager;->semSetScreenStatus(I)I

    if-ne v0, v3, :cond_4

    .line 1276
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMaxFailedBiometricUnlockAttemptsShort(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1278
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semStartFingerprintIconAnimation()I

    .line 1280
    :cond_4
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsNeedToUpdateFpInDisplayState:Z

    .line 1286
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisabledBiometricBySecurityDialog:Z

    if-nez v0, :cond_6

    if-ne p1, v2, :cond_8

    .line 1289
    sget-object p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$FuuVqypwgwlHGhNHxbT_cS-xY2E;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$FuuVqypwgwlHGhNHxbT_cS-xY2E;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    return-void

    .line 1297
    :cond_7
    sget-object p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$Tc2SDaivrHsllnQN5XeK9hTPKt0;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$Tc2SDaivrHsllnQN5XeK9hTPKt0;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_8
    :goto_2
    return-void
.end method

.method private handleFingerprintAuth(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)V
    .locals 7

    const/4 v0, -0x1

    .line 2229
    invoke-static {v0}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 2232
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;

    const-string v4, "KeyguardFingerPrint"

    if-eqz v3, :cond_6

    if-ne v3, p1, :cond_0

    .line 2234
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleFingerprintAuth fpMsg index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$6800(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    :cond_0
    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$6800(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 2259
    :cond_1
    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$6900(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)I

    move-result v4

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$7000(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)I

    move-result v3

    invoke-direct {p0, v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFpAuthenticationAcquired(II)V

    goto :goto_1

    .line 2254
    :cond_2
    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$6900(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFpAuthenticationFailed(I)V

    goto :goto_1

    .line 2249
    :cond_3
    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$6900(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)I

    move-result v4

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$7200(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFpAuthenticationSucceeded(ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    goto :goto_1

    .line 2244
    :cond_4
    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$6900(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)I

    move-result v4

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$7000(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)I

    move-result v5

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$7100(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v4, v5, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFpAuthenticationHelp(IILjava/lang/CharSequence;)V

    goto :goto_1

    .line 2239
    :cond_5
    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$6900(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)I

    move-result v4

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$7000(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)I

    move-result v5

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$7100(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v4, v5, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFpAuthenticationError(IILjava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2268
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "handleFingerprintAuth dispatchCount = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, p0, p1}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private handleFingerprintAuthFailed()V
    .locals 2

    .line 1235
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    const-string v1, "KeyguardFingerPrint"

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1236
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    const-string p0, "handleFingerprintAuthFailed( skipped FP response )"

    .line 1237
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1240
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "handleFingerprintAuthFailed( unlock is not allowed. )"

    .line 1241
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1244
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "fingerprint"

    .line 1245
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedBiometricUnlockAttempt(ILjava/lang/String;)V

    .line 1246
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_fingerprint_no_match:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1251
    sget-object v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$A3cZ-YtdLWGxbRL38MmCdbNn44Q;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$A3cZ-YtdLWGxbRL38MmCdbNn44Q;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    const/4 v1, -0x1

    .line 1253
    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintHelp(ILjava/lang/String;)V

    .line 1254
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->notifyFingerprintAuthFailed()V

    return-void
.end method

.method private handleFingerprintAuthenticated(II)V
    .locals 4

    const-string v0, "KeyGuardUpdateMonitor#handlerFingerPrintAuthenticated"

    .line 1311
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1313
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    const-string v1, "KeyguardFingerPrint"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1314
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    const-string p1, "handleFingerprintAuthenticated( skipped FP response )"

    .line 1315
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    const/4 p1, 0x0

    .line 1318
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 1319
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1320
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 1323
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "handleFingerprintAuthenticated( unlock is not allowed. )"

    .line 1324
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    .line 1326
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 1334
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_2

    .line 1340
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fingerprint authenticated for wrong user: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1349
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    .line 1343
    :cond_2
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1344
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fingerprint disabled by DPM for userId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1349
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    .line 1347
    :cond_3
    :try_start_3
    invoke-virtual {p0, v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFingerprintAuthenticated(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1349
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 1351
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->notifyFingerprintAuthenticated(II)V

    .line 1352
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    const-string p2, "Failed to get current user id: "

    .line 1336
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1349
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    throw p1
.end method

.method private handleFingerprintError(ILjava/lang/String;)V
    .locals 5

    const-string v0, "KeyguardFingerPrint"

    const/16 v1, 0x1388

    if-ne v1, p1, :cond_1

    .line 1472
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "handleFingerprintError( restart FingerPrint by FINGERPRINT_ERROR_NEED_TO_RETRY !! )"

    .line 1473
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFingerprint()V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x3ec

    if-ne v1, p1, :cond_2

    .line 1481
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_finger_print_database_error_message:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/16 v1, 0x3ea

    if-eq v1, p1, :cond_5

    const/16 v1, 0x3eb

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x3e9

    if-ne v1, p1, :cond_4

    .line 1487
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_finger_print_sensor_with_recalibration_error_message:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_4
    const/16 v1, 0x3ed

    if-ne v1, p1, :cond_6

    .line 1490
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_finger_print_sensor_changed_error_message:I

    .line 1491
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 1484
    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_finger_print_not_responding_error_message:I

    .line 1485
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1494
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 1497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFingerprintError( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    const/4 v1, 0x3

    if-ne p1, v0, :cond_7

    .line 1499
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne v0, v1, :cond_7

    .line 1501
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 1502
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    goto :goto_2

    .line 1504
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    :goto_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 1508
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    if-ge v2, v1, :cond_8

    add-int/2addr v2, v0

    .line 1509
    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    .line 1510
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1511
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    const/16 v0, 0x9

    if-ne p1, v0, :cond_9

    .line 1516
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v1, 0x8

    .line 1518
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 1516
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 1523
    :cond_9
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ONRspd5WA1DagGQypseYyiuHkzg;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ONRspd5WA1DagGQypseYyiuHkzg;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 1526
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->notifyFingerprintError(ILjava/lang/String;)V

    return-void
.end method

.method private handleFingerprintHelp(ILjava/lang/String;)V
    .locals 8

    .line 1358
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    const/4 v1, 0x0

    const-string v2, "KeyguardFingerPrint"

    if-eqz v0, :cond_0

    .line 1359
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    const-string p0, "handleFingerprintHelp( skipped FP response )"

    .line 1360
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 1363
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "handleFingerprintHelp( unlock is not allowed. )"

    .line 1364
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    return-void

    .line 1369
    :cond_1
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    const-wide/16 v4, 0x2710

    if-eqz v3, :cond_2

    .line 1370
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    goto/16 :goto_2

    :cond_2
    if-eq p1, v0, :cond_6

    .line 1374
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerPrintBadQualityCounts()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 1375
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1376
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleFingerprintHelp( Update Bad Quality Count = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " )"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x32

    const/4 v0, 0x2

    if-lt p1, p2, :cond_4

    .line 1379
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isFingerprintSensorPopupShowAgain()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1381
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->showFingerprintBlockPopup()V

    goto :goto_0

    :cond_3
    const-string p1, "Skip to show fingerprint sensor block popup"

    .line 1383
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1386
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_5

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 1387
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v2, 0x3f7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    goto :goto_1

    :cond_4
    const/16 p2, 0x1e

    if-ne p1, p2, :cond_5

    .line 1390
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_5

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 1391
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v2, 0x3f7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    :cond_5
    :goto_1
    return-void

    .line 1396
    :cond_6
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1397
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result v1

    .line 1398
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v3

    .line 1399
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleFingerprintHelp( Failed count when screen off = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ) - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", t = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 1402
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    .line 1403
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->getChargingType()I

    move-result v6

    .line 1404
    sget-boolean v7, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SENSOR_LIMITATION_WIRELESS_CHARGER:Z

    if-eqz v7, :cond_8

    const/16 v7, 0xd

    if-eq v6, v7, :cond_7

    const/16 v7, 0xc

    if-ne v6, v7, :cond_8

    .line 1407
    :cond_7
    new-instance v2, Lcom/samsung/android/aod/AODToast$Builder;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 1408
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$string;->kg_fingerprint_wireless_charger_warning:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/samsung/android/aod/AODToast$Builder;-><init>(Ljava/lang/String;)V

    .line 1411
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMaxFailedBiometricUnlockAttemptsShort(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1412
    new-instance v2, Lcom/samsung/android/aod/AODToast$Builder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v1, v6, v3}, Lcom/android/systemui/KeyguardTextBuilder;->getFPFailedAttemptionGuideMessageWhenScreenOff(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/samsung/android/aod/AODToast$Builder;-><init>(Ljava/lang/String;)V

    :cond_9
    if-eqz v2, :cond_a

    .line 1416
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/aod/AODToast$Builder;->setDurationInMillis(J)Lcom/samsung/android/aod/AODToast$Builder;

    .line 1417
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/aod/AODManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;

    move-result-object v0

    invoke-virtual {v2}, Lcom/samsung/android/aod/AODToast$Builder;->build()Lcom/samsung/android/aod/AODToast;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/aod/AODManager;->requestAODToast(Lcom/samsung/android/aod/AODToast;)V

    goto :goto_3

    :cond_a
    :goto_2
    const-wide/16 v4, 0x0

    .line 1424
    :goto_3
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$HQnU3RvSP8ssuxQZbHU_MK_NIfA;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$HQnU3RvSP8ssuxQZbHU_MK_NIfA;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 1426
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/doze/PluginAODManager;->hideChargingInfoByFinger(J)V

    .line 1427
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->notifyFingerprintHelp(ILjava/lang/String;)V

    return-void
.end method

.method private handleFingerprintLockoutReset()V
    .locals 0

    .line 1530
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method private handleIBAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 4

    .line 7038
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 7041
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SxZ_Xkg0zTHrCwF7tGOi-9SXeGc;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SxZ_Xkg0zTHrCwF7tGOi-9SXeGc;-><init>(ILjava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleIBAuthenticationSucceeded()V
    .locals 5

    const-string v0, "KeyGuardUpdateMonitor#handleIBAuthenticationSucceeded"

    .line 7045
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 7046
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIBAuthenticated(Z)V

    .line 7047
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 7048
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 7050
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne v1, v0, :cond_0

    const-string v0, "KeyguardFingerPrint"

    const-string v1, "IB onAuthenticationSucceeded. FP will be stop!"

    .line 7052
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7053
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    .line 7056
    :cond_0
    sget-object v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$En3NOWzomGazynjRYYSOsXRrGBc;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$En3NOWzomGazynjRYYSOsXRrGBc;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 7057
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private handleIrisAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 4

    .line 6404
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 6406
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6408
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$CXjgu8RIweSPH3UBXoq0HuR9zy0;

    invoke-direct {v1, p1, v0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$CXjgu8RIweSPH3UBXoq0HuR9zy0;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 6413
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->notifyIrisAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private handleIrisAuthenticationSucceeded()V
    .locals 5

    const-string v0, "KeyGuardUpdateMonitor#handleIrisAuthenticationSucceeded"

    .line 6429
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6430
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 6432
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 6434
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 6436
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "KeyguardFingerPrint"

    const-string v2, "Iris onAuthenticationSucceeded. FP will be stop!"

    .line 6438
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6439
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    .line 6443
    :cond_0
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$asgTAs2Gw44kdQoMA4YvBnNJvc8;

    invoke-direct {v1, v0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$asgTAs2Gw44kdQoMA4YvBnNJvc8;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 6446
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    .line 6448
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KeyguardIris"

    const-string v1, "handleIrisAuthenticationSucceeded ( stop all biometrics )"

    .line 6449
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6450
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    .line 6452
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private handleKeyguardBouncerChanged(I)V
    .locals 4

    .line 4725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleKeyguardBouncerChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4727
    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    .line 4729
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 4730
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_3

    .line 4732
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemFaceAuthenticated(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4733
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 4734
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSemFaceAuthenticated(Z)V

    .line 4736
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIrisAuthenticated(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4737
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisRunningState(I)V

    .line 4738
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisAuthenticated(Z)V

    .line 4740
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIBAuthenticated(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4741
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIBRunningState(I)V

    .line 4742
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIBAuthenticated(Z)V

    :cond_3
    if-eqz v0, :cond_4

    .line 4746
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    if-eqz p1, :cond_4

    .line 4748
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    .line 4751
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4752
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    .line 4754
    :cond_5
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4755
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->resetAuthenticationTimeout()Z

    .line 4779
    :cond_6
    new-instance p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$uNuKkDs4aF1tSp9ECbtx67OoZqQ;

    invoke-direct {p1, v0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$uNuKkDs4aF1tSp9ECbtx67OoZqQ;-><init>(Z)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 4782
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez p1, :cond_7

    .line 4783
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setUnlockingKeyguard(Z)V

    .line 4786
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setShortcutPreviewShowing(Z)V

    .line 4787
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    if-eqz v0, :cond_8

    .line 4790
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "1001"

    const-string v0, "1"

    invoke-static {p0, p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private handleKeyguardReset()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleKeyguardReset"

    .line 4688
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4689
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 4692
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4693
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4694
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    .line 4696
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4697
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    .line 4699
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4700
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    .line 4705
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resolveNeedsSlowUnlockTransition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    return-void
.end method

.method private handleKeyguardStateUpdated(Landroid/os/Bundle;)V
    .locals 2

    .line 5437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleKeyguardStateUpdated("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5439
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    if-nez v0, :cond_0

    const-string/jumbo p0, "uiOffloadThread returns null"

    .line 5442
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5445
    :cond_0
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$875QdOyI5iyjlgyUaUr53ruZvjs;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$875QdOyI5iyjlgyUaUr53ruZvjs;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private handleLocaleChanged()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleLocaleChanged()"

    .line 2960
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceType;->isFbeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2962
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->createChannels()V

    .line 2966
    :cond_0
    sget-object v0, Lcom/android/keyguard/-$$Lambda$FkKFfD5Lv4bGUtUk0h4oqQly9h8;->INSTANCE:Lcom/android/keyguard/-$$Lambda$FkKFfD5Lv4bGUtUk0h4oqQly9h8;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 2970
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateCarrierTextInfo()V

    return-void
.end method

.method private handleLockModeChanged()V
    .locals 1

    .line 2889
    sget-object v0, Lcom/android/keyguard/-$$Lambda$uj0768bjVl0I5Cuhp_74KD8-sXI;->INSTANCE:Lcom/android/keyguard/-$$Lambda$uj0768bjVl0I5Cuhp_74KD8-sXI;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleLockSimulation(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_7

    const/4 p0, -0x1

    .line 8188
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x586034f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x5a5b64d

    if-eq v0, v1, :cond_1

    const v1, 0x9f08441

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "license"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p0, v3

    goto :goto_0

    :cond_1
    const-string v0, "clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p0, v2

    goto :goto_0

    :cond_2
    const-string v0, "admin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p0, v4

    :cond_3
    :goto_0
    if-eqz p0, :cond_6

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    goto :goto_1

    .line 8203
    :cond_4
    const-class p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p0, v4, v4}, Lcom/android/systemui/KnoxStateMonitor;->setAdminLock(ZZ)V

    goto :goto_1

    .line 8197
    :cond_5
    const-class p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/KnoxStateMonitor;->setAdminLock(ZZ)V

    goto :goto_1

    .line 8191
    :cond_6
    const-class p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/KnoxStateMonitor;->setAdminLock(ZZ)V

    :cond_7
    :goto_1
    return-void
.end method

.method private handleNotiStarState(Z)V
    .locals 2

    .line 1021
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsNotiStarShown:Z

    if-eq v0, p1, :cond_2

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNotiStarState( prev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsNotiStarShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "-> next:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsNotiStarShown:Z

    .line 1025
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1028
    :cond_0
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1029
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1031
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1032
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method private handleNotifyLockout()V
    .locals 1

    .line 8139
    sget-object v0, Lcom/android/keyguard/-$$Lambda$ciDCC-rW8mi0CunQsAADoIr82Wk;->INSTANCE:Lcom/android/keyguard/-$$Lambda$ciDCC-rW8mi0CunQsAADoIr82Wk;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleOpenThemeChangeStarted()V
    .locals 1

    .line 7503
    sget-object v0, Lcom/android/keyguard/-$$Lambda$A1Qrr5GDvQH9bOO8JSciit0iDc8;->INSTANCE:Lcom/android/keyguard/-$$Lambda$A1Qrr5GDvQH9bOO8JSciit0iDc8;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleOpenThemeChanged(Ljava/lang/String;)V
    .locals 2

    .line 7494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentTheme:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, "default"

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardUpdateMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7497
    sget-object p1, Lcom/android/keyguard/-$$Lambda$HZ8rGM2LkDjfyZ0M2WewQsGGYH4;->INSTANCE:Lcom/android/keyguard/-$$Lambda$HZ8rGM2LkDjfyZ0M2WewQsGGYH4;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleOpenThemeReApply()V
    .locals 1

    .line 7509
    sget-object v0, Lcom/android/keyguard/-$$Lambda$gP8oAGZQtwl5lhUKuux_zYc1dIM;->INSTANCE:Lcom/android/keyguard/-$$Lambda$gP8oAGZQtwl5lhUKuux_zYc1dIM;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handlePackageAdded(Ljava/lang/String;)V
    .locals 1

    .line 2871
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$jwSozCBCIGs0Bfg-2lF5TM8f1dk;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$jwSozCBCIGs0Bfg-2lF5TM8f1dk;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handlePackageChanged(Ljava/lang/String;)V
    .locals 1

    .line 2877
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$0OpyoJ1t-htSibd1NSTk0prvsrk;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$0OpyoJ1t-htSibd1NSTk0prvsrk;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handlePackageRemoved(Ljava/lang/String;Z)V
    .locals 1

    .line 2883
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ED_80lChhj--k4tllSiv67nAdy8;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ED_80lChhj--k4tllSiv67nAdy8;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 2

    .line 4455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePhoneStateChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 4457
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 4458
    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 4459
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 4460
    :cond_1
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 4461
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 4465
    :cond_2
    :goto_0
    new-instance p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$BTB63jlearVsgq0jLb11TxJKEvM;

    invoke-direct {p1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$BTB63jlearVsgq0jLb11TxJKEvM;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleRemoteLockInfoChanged()V
    .locals 1

    .line 7562
    sget-object v0, Lcom/android/keyguard/-$$Lambda$HWNdM2PcUAt5mvmOxwuSJdxFS_A;->INSTANCE:Lcom/android/keyguard/-$$Lambda$HWNdM2PcUAt5mvmOxwuSJdxFS_A;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleReportEmergencyCallAction()V
    .locals 1

    .line 4800
    sget-object v0, Lcom/android/keyguard/-$$Lambda$CHie3P_26onfXpjSG9uFAp0KZgA;->INSTANCE:Lcom/android/keyguard/-$$Lambda$CHie3P_26onfXpjSG9uFAp0KZgA;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleRingerModeChange(I)V
    .locals 2

    .line 4473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRingerModeChange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4474
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    .line 4477
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$M7Iv1F2Olj7cHDZPbccIrukQEPg;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$M7Iv1F2Olj7cHDZPbccIrukQEPg;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleScreenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    .line 2801
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockIconPressed:Z

    .line 2802
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    .line 2803
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    .line 2806
    sget-object v0, Lcom/android/keyguard/-$$Lambda$0dBQEnLXewbQ9sSs4gWZ3qNJDCA;->INSTANCE:Lcom/android/keyguard/-$$Lambda$0dBQEnLXewbQ9sSs4gWZ3qNJDCA;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleScreenTurnedOn()V
    .locals 1

    .line 2796
    sget-object v0, Lcom/android/keyguard/-$$Lambda$uADrwc9sxejHmDxIiSfCXgV_PRE;->INSTANCE:Lcom/android/keyguard/-$$Lambda$uADrwc9sxejHmDxIiSfCXgV_PRE;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleSecurityModeChanged(Z)V
    .locals 2

    .line 7642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSecurityModeChanged: isSecure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->addLogInDebugLogStore(Ljava/lang/String;)V

    .line 7646
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$4V5rqLoMT_nkQPsbxOQqTd5SWn0;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$4V5rqLoMT_nkQPsbxOQqTd5SWn0;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2

    .line 7652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSecurityViewChanged: securityMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->addLogInDebugLogStore(Ljava/lang/String;)V

    .line 7656
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$v7dC-Xfb0DUlZflCRjkVEaJTVNU;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$v7dC-Xfb0DUlZflCRjkVEaJTVNU;-><init>(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleServiceBoxFullScreenMode(Z)V
    .locals 2

    .line 5504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleServiceBoxFullScreenMode(), enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5505
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsServiceBoxFullScreen:Z

    if-eq v0, p1, :cond_2

    .line 5506
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsServiceBoxFullScreen:Z

    .line 5507
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5510
    :cond_0
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5511
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 5513
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5514
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method private handleShowBackgroundAuthToast(I)V
    .locals 1

    .line 7210
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$lp6ox7TunhWKfi44pZVW2kLXxJk;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$lp6ox7TunhWKfi44pZVW2kLXxJk;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleSimSubscriptionInfoChanged()V
    .locals 7

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "onSubscriptionInfoChanged()"

    .line 1058
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1061
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 1062
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "onSubscriptionInfoChanged: list is null"

    .line 1065
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    .line 1068
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v0

    .line 1073
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 1074
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1075
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 1076
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->refreshSimState(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1078
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1081
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 1082
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 1084
    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$9kvOwVpn3XMSrrv08q5br-peHlw;

    invoke-direct {v3, v0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$9kvOwVpn3XMSrrv08q5br-peHlw;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;)V

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1089
    :cond_4
    sget-object v0, Lcom/android/keyguard/-$$Lambda$m7rx9L3O-cMAbxCJ4DCUKdNbllg;->INSTANCE:Lcom/android/keyguard/-$$Lambda$m7rx9L3O-cMAbxCJ4DCUKdNbllg;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleStatusBarState(Z)V
    .locals 2

    .line 5480
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    if-eq v0, p1, :cond_2

    .line 5481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStatusBarState( prev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "-> next:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5482
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    .line 5483
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5486
    :cond_0
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5487
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 5489
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5490
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method private handleSystemDialogShowing()V
    .locals 1

    .line 7215
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7216
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    .line 7218
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7219
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    .line 7221
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7222
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    .line 7225
    :cond_2
    sget-object v0, Lcom/android/keyguard/-$$Lambda$902CN7p692eY61Qw3L6NlwsaH-8;->INSTANCE:Lcom/android/keyguard/-$$Lambda$902CN7p692eY61Qw3L6NlwsaH-8;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleTimeUpdate()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleTimeUpdate"

    .line 4485
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4488
    sget-object v0, Lcom/android/keyguard/-$$Lambda$E_8sh613j7Ok4O_9EtyWtzvn9rU;->INSTANCE:Lcom/android/keyguard/-$$Lambda$E_8sh613j7Ok4O_9EtyWtzvn9rU;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleTimeZoneUpdate(Ljava/lang/String;)V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleTimeZoneUpdate"

    .line 4496
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4499
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$pjQuvhfcN52vRfHnrai_MX1fXro;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$pjQuvhfcN52vRfHnrai_MX1fXro;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleUnlockSimulation(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_6

    .line 8149
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    .line 8150
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->applyFPBooster(I)V

    .line 8155
    :cond_0
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SHELL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    const/4 v0, -0x1

    .line 8158
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4bf67c97

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x2fd65d

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "face"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v4

    goto :goto_0

    :cond_2
    const-string v1, "finger"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v3

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    .line 8177
    sget-object p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$6Qm6lfuQdBn4v7MO1j_6UezY6qo;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$6Qm6lfuQdBn4v7MO1j_6UezY6qo;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 8169
    :cond_4
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->startBioUnlockTracing()V

    .line 8171
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSemFaceAuthenticated(Z)V

    .line 8172
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceRecognitionAuthenticationSucceeded()V

    goto :goto_1

    .line 8161
    :cond_5
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->startBioUnlockTracing()V

    .line 8164
    invoke-direct {p0, v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthenticated(II)V

    :cond_6
    :goto_1
    return-void
.end method

.method private handleUpdateAllBiometricsListeningState()V
    .locals 4

    .line 5620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5621
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    .line 5622
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateAllBiometricsListeningState() : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardUpdateMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    .line 3107
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$kvOIheuchWKr0apaGNktWweZw2c;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$kvOIheuchWKr0apaGNktWweZw2c;-><init>(Lcom/samsung/android/cover/CoverState;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 3111
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 3115
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method private handleUpdateSecureLockCallback()V
    .locals 4

    .line 7915
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 7916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process.myUserHandle().getIdentifier() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardUpdateMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 7919
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureLockChangedCallback:Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Lcom/android/internal/widget/ILockSettings;->setLockModeChangedCallback(Landroid/os/IRemoteCallback;Z)V

    .line 7920
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLockModeChangedCallback, userID = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private handleUserInfoChanged(I)V
    .locals 1

    .line 2842
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$8iPU0q6pje3oEpxekE9eVX4dSLk;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$8iPU0q6pje3oEpxekE9eVX4dSLk;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleUserSwitchComplete(I)V
    .locals 2

    .line 4353
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    if-eqz v0, :cond_0

    .line 4354
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->onUserSwitched()V

    .line 4357
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSecureLockState(I)V

    .line 4358
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricsOptionState(I)V

    .line 4361
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4362
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisableCamera:Z

    .line 4363
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMaximumFailedPasswordsForWipe:I

    .line 4368
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSecureLockState(I)V

    .line 4369
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricsOptionState(I)V

    .line 4371
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    .line 4374
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ahoZ__fI02tr_aCqz_BylGHj8Sg;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ahoZ__fI02tr_aCqz_BylGHj8Sg;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 4378
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/sensor/PickupController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/sensor/PickupController;->restart()V

    return-void
.end method

.method private handleUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 1

    .line 4340
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$khHbwvqmQKvuC0GmqqInz1KVLQU;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$khHbwvqmQKvuC0GmqqInz1KVLQU;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    .line 4344
    :try_start_0
    invoke-interface {p2, p0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private handleUserUnlocked()V
    .locals 2

    .line 2847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUserUnlocked#CurrentUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resolveNeedsSlowUnlockTransition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    .line 2849
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsUserUnlocked:Z

    if-nez v0, :cond_0

    .line 2850
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsUserUnlocked:Z

    .line 2851
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateUserUnlockNotification()V

    .line 2852
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2853
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSecureLockState(I)V

    .line 2858
    :cond_0
    sget-object v0, Lcom/android/keyguard/-$$Lambda$UKKPKbuzzqpJAPz1TahoNQygg8s;->INSTANCE:Lcom/android/keyguard/-$$Lambda$UKKPKbuzzqpJAPz1TahoNQygg8s;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 7

    .line 4805
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result p0

    .line 4806
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 4807
    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v4, p2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v3, v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-ne v0, p0, :cond_9

    if-eqz v3, :cond_1

    goto :goto_1

    .line 4816
    :cond_1
    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v3, p2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-eq v0, v3, :cond_2

    return v2

    :cond_2
    if-eqz p0, :cond_3

    .line 4821
    iget v0, p2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-eq v0, v3, :cond_3

    return v2

    :cond_3
    if-eqz p0, :cond_4

    .line 4827
    iget-boolean v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->highVoltage:Z

    iget-boolean v3, p2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->highVoltage:Z

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    if-eqz p0, :cond_5

    .line 4831
    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->online:I

    iget v3, p2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->online:I

    if-eq v0, v3, :cond_5

    return v2

    :cond_5
    if-eqz p0, :cond_6

    .line 4835
    iget v0, p2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->swellingMode:I

    if-lez v0, :cond_6

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->swellingMode:I

    if-eq v3, v0, :cond_6

    return v2

    :cond_6
    if-eqz p0, :cond_7

    .line 4840
    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    iget v3, p2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    if-eq v0, v3, :cond_7

    return v2

    :cond_7
    if-eqz p0, :cond_8

    .line 4846
    iget-wide v3, p2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->remaining:J

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-lez p0, :cond_8

    iget-wide p0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->remaining:J

    cmp-long p0, p0, v3

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v1

    :cond_9
    :goto_1
    return v2
.end method

.method private isBiometricLockEnabled(II)Z
    .locals 0

    .line 5528
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    .line 5530
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result p0

    if-nez p0, :cond_0

    .line 5531
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 2

    .line 4264
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "device_provisioned"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isESimSkipped(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 5028
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mESimSkipped:[Z

    aget-boolean p0, p0, p1

    return p0

    .line 5025
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mESimSkipped  Slot Boundary Exception SlotNum: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardUpdateMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isLiftToWakeAndUnlockEnabled()Z
    .locals 1

    .line 8018
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLiftToWakeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz v0, :cond_2

    .line 8019
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 8020
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8021
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 8022
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 8023
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIntelligentScanStayOnLock()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLockTaskModeLocked()Z
    .locals 1

    .line 3147
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    .line 3148
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3149
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isReadyBackgroundAuthentication(I)Z
    .locals 2

    .line 7183
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BACKGROUND_AUTHENTICATION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenSaverRunning:Z

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    if-nez p0, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    return v1

    :cond_0
    return p0

    :cond_1
    return v1
.end method

.method private isSimPinPassed(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 5746
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimPinPassed:[Z

    aget-boolean p0, p0, p1

    return p0

    .line 5743
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSimPinPassed  Slot Boundary Exception SlotNum: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardUpdateMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 1

    .line 5264
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIM_PERSO_LOCK:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_1

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

.method private isTrustDisabled(I)Z
    .locals 0

    .line 1721
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    return p0
.end method

.method private isUnlockWithFingerprintPossible(I)Z
    .locals 2

    .line 4113
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4114
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 4115
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static synthetic lambda$-GZaxeQabrHzh5b8rORPTQGQVD8(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyStrongAuthStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$dispatchErrorMessage$19(Ljava/lang/CharSequence;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1857
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$handleBatteryUpdate$39(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4525
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic lambda$handleDlsViewMode$30(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 2992
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDlsViewModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$handleFaceAcquired$13(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1589
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleFaceAuthFailed$12(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1579
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleFaceError$15(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1657
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleFaceHelp$14(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1620
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleFaceRecognitionAcquired$55(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 6009
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleFaceRecognitionAuthenticationError$51(ILjava/lang/CharSequence;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 5957
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleFaceRecognitionAuthenticationFailed$54(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 5999
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleFaceRecognitionAuthenticationHelp$52(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 5969
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleFaceRecognitionAuthenticationSucceeded$53(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 2

    .line 5984
    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleFaceUnlockStateChanged$17(ZILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1701
    invoke-virtual {p2, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceUnlockStateChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$handleFaceWidgetRemoteViews$26(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 2865
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUpdateFaceWidgetRemoteViews(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V

    return-void
.end method

.method static synthetic lambda$handleFingerprintAcquired$5(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1289
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleFingerprintAcquired$6(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1297
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleFingerprintAuthFailed$4(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1251
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleFingerprintError$9(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1523
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleFingerprintHelp$8(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1424
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleFinishedGoingToSleep$23(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 2786
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    return-void
.end method

.method static synthetic lambda$handleIBAuthenticationError$64(ILjava/lang/CharSequence;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 7028
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->INTELLIGENT_SCAN:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleIBAuthenticationFailed$67(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 7070
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->INTELLIGENT_SCAN:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleIBAuthenticationHelp$65(ILjava/lang/CharSequence;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 7041
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->INTELLIGENT_SCAN:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleIBAuthenticationSucceeded$66(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 2

    .line 7056
    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->INTELLIGENT_SCAN:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleIrisAuthenticationError$56(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 6408
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleIrisAuthenticationFailed$59(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 6473
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleIrisAuthenticationHelp$57(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 6424
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleIrisAuthenticationSucceeded$58(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 6443
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$handleKeyguardBouncerChanged$44(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4779
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardBouncerChanged(Z)V

    return-void
.end method

.method static synthetic lambda$handlePackageAdded$27(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 2871
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$handlePackageChanged$28(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 2877
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$handlePackageRemoved$29(Ljava/lang/String;ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 2883
    invoke-virtual {p2, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPackageRemoved(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$handleRingerModeChange$37(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4477
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$handleSecurityModeChanged$73(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 7646
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSecurityModeChanged(Z)V

    return-void
.end method

.method static synthetic lambda$handleSecurityViewChanged$74(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 7656
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method static synthetic lambda$handleShowBackgroundAuthToast$71(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 7210
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->showBackgroundAuthToast(I)V

    return-void
.end method

.method static synthetic lambda$handleSimStateChange$41(IILcom/android/internal/telephony/IccCardConstants$State;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4564
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static synthetic lambda$handleSimStateChange$42(IILcom/android/internal/telephony/IccCardConstants$State;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4607
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static synthetic lambda$handleSimSubscriptionInfoChanged$1(Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 2

    .line 1084
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static synthetic lambda$handleStartedGoingToSleep$22(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 2742
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    return-void
.end method

.method static synthetic lambda$handleStartedWakingUp$21(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 2730
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    return-void
.end method

.method static synthetic lambda$handleTimeZoneUpdate$38(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4500
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    .line 4502
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    return-void
.end method

.method static synthetic lambda$handleUnlockSimulation$78(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 8177
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimulationUnlock(I)V

    return-void
.end method

.method static synthetic lambda$handleUpdateBackgroundAuthToast$70(ZILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 7204
    invoke-virtual {p2, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->updateBackgroundAuthToast(ZI)V

    return-void
.end method

.method static synthetic lambda$handleUpdateCoverState$32(Lcom/samsung/android/cover/CoverState;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 3107
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic lambda$handleUserInfoChanged$25(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 2842
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserInfoChanged(I)V

    return-void
.end method

.method static synthetic lambda$handleUserSwitchComplete$35(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4374
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    return-void
.end method

.method static synthetic lambda$handleUserSwitching$34(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4340
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    return-void
.end method

.method static synthetic lambda$notifyFolderStateChanged$31(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 3025
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFolderStateChanged(Z)V

    return-void
.end method

.method static synthetic lambda$notifyIrisRunningStateChanged$60(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 6520
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$notifyStrongAuthStateChanged$18(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1824
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onFaceAuthenticated$11(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1564
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$onFingerprintAuthenticated$3(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1208
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic lambda$onKeyguardVisibilityChanged$43(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4661
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChangedRaw(Z)V

    return-void
.end method

.method static synthetic lambda$onTrustChanged$0(IZILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1001
    invoke-virtual {p3, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1003
    invoke-virtual {p3, p2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustGrantedWithFlags(II)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onTrustManagedChanged$2(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1122
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustManagedChanged(I)V

    return-void
.end method

.method static synthetic lambda$reportFailedBiometricUnlockAttempt$48(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 5721
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricLockoutChanged(Z)V

    return-void
.end method

.method static synthetic lambda$setHasLockscreenWallpaper$33(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4306
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onHasLockscreenWallpaperChanged(Z)V

    return-void
.end method

.method static synthetic lambda$setIBAuthenticated$62(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 6898
    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    return-void
.end method

.method static synthetic lambda$setIrisAuthenticated$61(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 6638
    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    return-void
.end method

.method static synthetic lambda$setSemFaceAuthenticated$50(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 5866
    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    return-void
.end method

.method public static synthetic lambda$w3Onnt26KGuFqBxQaSJgQd6Y_G4(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method private launchSecureFolderIfNeeded(II)V
    .locals 2

    .line 8001
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.user_handle"

    .line 8002
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "knox.container.proxy.EXTRA_FINGERPRINT_ID"

    .line 8003
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8004
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockNotificationClicked:Z

    const-string p1, "knox.container.proxy.EXTRA_FLAG_NOTIFICATION_CLICKED"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "knox.container.proxy.COMMAND_DEDICATED_FINGERPRINT"

    .line 8005
    invoke-static {p0, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "android.intent.extra.RETURN_RESULT"

    .line 8009
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x63

    .line 8012
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "launch SecureFolder by dedicated fingerprint res = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardUpdateMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyFaceStateChanged()V
    .locals 2

    const-string v0, "KeyguardFace"

    const-string v1, "notifyFaceStateChanged()"

    .line 5798
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5799
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    if-eqz v0, :cond_0

    return-void

    .line 5804
    :cond_0
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$Vcnwcj323iJUKwfUzipLgM1Ssl8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$Vcnwcj323iJUKwfUzipLgM1Ssl8;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 5809
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceRunningState:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/DesktopManager;->notifyFaceAuthenticationRunningStateChange(I)V

    return-void
.end method

.method private notifyFingerprintRunningStateChanged()V
    .locals 1

    .line 1548
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$gdlDrB2gBPg7L09KxBBmtC2o4mI;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$gdlDrB2gBPg7L09KxBBmtC2o4mI;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private notifyIBRunningStateChanged()V
    .locals 1

    .line 6921
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    if-eqz v0, :cond_0

    return-void

    .line 6925
    :cond_0
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$asMj1CTf3yL6RsrhvkXRUavRSxU;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$asMj1CTf3yL6RsrhvkXRUavRSxU;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 6929
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIBRunningState:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/DesktopManager;->notifyIBRunningStateChange(I)V

    return-void
.end method

.method private notifyIrisRunningStateChanged()V
    .locals 2

    .line 6515
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    if-eqz v0, :cond_0

    return-void

    .line 6518
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    .line 6520
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$k5hYsRoQ8yKwOH42l1s2c19xwl8;

    invoke-direct {v1, v0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$k5hYsRoQ8yKwOH42l1s2c19xwl8;-><init>(Z)V

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 6525
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6526
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/DesktopManager;->notifyIrisRunningStateChange(I)V

    goto :goto_0

    .line 6529
    :cond_1
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/DesktopManager;->notifyIrisRunningStateChange(I)V

    :goto_0
    return-void
.end method

.method private notifyLockModeChanged()V
    .locals 2

    .line 1837
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x158

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1838
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1840
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private notifySimStateInfo(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    .line 8093
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8094
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p3}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/util/DesktopManager;->notifySimStateInfo(III)V

    :cond_0
    return-void
.end method

.method private notifyStrongAuthStateChanged(I)V
    .locals 1

    .line 1821
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 1822
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    .line 1824
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$R4OHSiJI_8rUk6wNU7Xs7sMJKpw;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$R4OHSiJI_8rUk6wNU7Xs7sMJKpw;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 1827
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 1828
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1829
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    const/4 p1, 0x0

    .line 1830
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisAuthenticated(Z)V

    .line 1831
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSemFaceAuthenticated(Z)V

    .line 1832
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIBAuthenticated(Z)V

    :cond_0
    return-void
.end method

.method private onFpAuthenticationAcquired(II)V
    .locals 2

    .line 2209
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    const-string v1, "KeyguardFingerPrint"

    if-eq v0, p1, :cond_0

    .line 2210
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAuthenticationAcquired() - return, sequence error ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2214
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAuthenticationAcquired( "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  )"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x3e8

    .line 2216
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->applyFPBooster(I)V

    .line 2218
    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAcquired(I)V

    return-void
.end method

.method private onFpAuthenticationError(IILjava/lang/CharSequence;)V
    .locals 2

    .line 2195
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    const-string v1, "KeyguardFingerPrint"

    if-eq v0, p1, :cond_0

    .line 2196
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onAuthenticationError() - return, sequence error ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2200
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTimerRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "onAuthenticationError() - return, isTimerRunning is true"

    .line 2201
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "onAuthenticationError()"

    .line 2204
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintError(ILjava/lang/String;)V

    return-void
.end method

.method private onFpAuthenticationFailed(I)V
    .locals 3

    .line 2139
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    const-string v1, "KeyguardFingerPrint"

    if-eq v0, p1, :cond_0

    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationFailed() - return, sequence error ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2144
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTimerRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "onAuthenticationFailed() - return, isTimerRunning is true"

    .line 2145
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "onAuthenticationFailed()"

    .line 2148
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthFailed()V

    return-void
.end method

.method private onFpAuthenticationHelp(IILjava/lang/CharSequence;)V
    .locals 2

    .line 2181
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    const-string v1, "KeyguardFingerPrint"

    if-eq v0, p1, :cond_0

    .line 2182
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onAuthenticationHelp() - return, sequence error ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2186
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTimerRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "onAuthenticationHelp() - return, isTimerRunning is true"

    .line 2187
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2190
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAuthenticationHelp( helpMsgId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , helpString = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " )"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintHelp(ILjava/lang/String;)V

    return-void
.end method

.method private onFpAuthenticationSucceeded(ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 3

    .line 2153
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    const-string v1, "KeyguardFingerPrint"

    if-eq v0, p1, :cond_0

    .line 2154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAuthenticationSucceeded() - return, sequence error ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2158
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTimerRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "onAuthenticationSucceeded() - return, isTimerRunning is true"

    .line 2159
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2164
    :cond_1
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->startBioUnlockTracing()V

    const-string p1, "KeyguardUpdateMonitor#onAuthenticationSucceeded"

    .line 2167
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string p1, "onAuthenticationSucceeded()"

    .line 2170
    invoke-static {v1, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    invoke-virtual {p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    .line 2175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fingerprint id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    invoke-virtual {p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getUserId()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthenticated(II)V

    .line 2177
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private prepareBooster()V
    .locals 3

    .line 2924
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_0

    .line 2925
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const/16 v1, 0xc

    const-string v2, "BIO_UNLOCKSCREEN_CPU_BOOSTER"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    .line 2927
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    .line 2928
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSupportedCPUFreqTable:[I

    .line 2929
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSupportedCPUFreqTable:[I

    if-eqz v0, :cond_0

    const-string v0, "1200000"

    .line 2930
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2931
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 2936
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemDvfsCoreMin:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_1

    .line 2937
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const/16 v1, 0xe

    const-string v2, "BIO_UNLOCKSCREEN_CORE_BOOSTER"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemDvfsCoreMin:Lcom/samsung/android/os/SemDvfsManager;

    .line 2939
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemDvfsCoreMin:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_1

    .line 2940
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSupportedCPUCoreTable:[I

    .line 2941
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSupportedCPUCoreTable:[I

    if-eqz v0, :cond_1

    .line 2942
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemDvfsCoreMin:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_1
    return-void
.end method

.method private refreshSimState(II)Z
    .locals 4

    const-string v0, "KeyguardUpdateMonitor"

    .line 5230
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 5231
    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 5234
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5236
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sim state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5237
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 5241
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkSimState(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinPassed(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5242
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "refreshSimState isSimPinPassed slotId"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 5247
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 5250
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    invoke-direct {v0, v1, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    .line 5251
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 5254
    :cond_1
    iget-object p0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 5255
    :goto_1
    iput-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_2
    return v2
.end method

.method private releaseWakeLock()V
    .locals 2

    const-string v0, "release biometrics-wake-and-unlock"

    .line 8040
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8041
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 8042
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mReleaseWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "releasing biometrics wakelock"

    .line 8043
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8044
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 8045
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 8047
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private requestSessionOpen()V
    .locals 2

    .line 7137
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ZF4K7Kk_JfZFJYkqV0NtDwZ3rwo;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ZF4K7Kk_JfZFJYkqV0NtDwZ3rwo;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private resolveNeedsSlowUnlockTransition()Z
    .locals 3

    .line 4709
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4712
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 4713
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4714
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    .line 4716
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 4

    .line 4945
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 4946
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 4947
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 4948
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 4949
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 4950
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 4951
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChangedRaw(Z)V

    .line 4952
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyCapable:Z

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTelephonyCapable(Z)V

    .line 4953
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4954
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    if-eqz v1, :cond_0

    .line 4956
    iget-object v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkSimState(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinPassed(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4957
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "sendUpdates isSimPinPassed state.slotId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardUpdateMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4961
    :cond_0
    iget v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, v2, v3, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized setCurrentUser(I)V
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    .line 986
    :try_start_0
    sput p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setFaceRunningState(I)V
    .locals 3

    .line 1667
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceRunningState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v2, :cond_1

    move v1, v2

    .line 1669
    :cond_1
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceRunningState:I

    .line 1670
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "faceRunningState: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceRunningState:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KeyguardFace"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v1, :cond_2

    .line 1675
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFaceStateChanged()V

    :cond_2
    return-void
.end method

.method private setFingerprintRunningState(I)V
    .locals 3

    .line 1534
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v2, :cond_1

    move v1, v2

    .line 1536
    :cond_1
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 1537
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fingerprintRunningState: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KeyguardFingerPrint"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v1, :cond_2

    .line 1542
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFingerprintRunningStateChanged()V

    :cond_2
    return-void
.end method

.method private setIBRunningState(I)V
    .locals 3

    .line 6909
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIBRunningState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v2, :cond_1

    move v1, v2

    .line 6911
    :cond_1
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIBRunningState:I

    if-eq v0, v1, :cond_2

    .line 6916
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyIBRunningStateChanged()V

    :cond_2
    return-void
.end method

.method private setIrisRunningState(I)V
    .locals 3

    .line 6503
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisRunningState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v2, :cond_1

    move v1, v2

    .line 6505
    :cond_1
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisRunningState:I

    if-eq v0, v1, :cond_2

    .line 6510
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyIrisRunningStateChanged()V

    :cond_2
    return-void
.end method

.method private setWakeLockTimeout()V
    .locals 3

    .line 8051
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string v2, "biometrics-wake-and-unlock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v0, "acquiring biometrics wake-and-unlock"

    .line 8053
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8054
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 8055
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "grabbing biometrics wakelock"

    .line 8056
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8057
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mReleaseWakeLockRunnable:Ljava/lang/Runnable;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->WAKELOCK_TIMEOUT_MS:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private shouldListenForFace()Z
    .locals 11

    .line 3807
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 3808
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 3811
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 3816
    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    const/4 v3, 0x1

    const-string v4, "KeyguardFace"

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v1, :cond_2

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isReadyBackgroundAuthentication(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-nez v1, :cond_5

    .line 3818
    invoke-virtual {p0, v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedByWOF(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenSaverRunning:Z

    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPickedUp:Z

    if-eqz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemReady:Z

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_0

    :cond_5
    move v1, v2

    .line 3823
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shouldListenForFace ( isFaceDefaultCondition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mKeyguardIsVisible = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mDeviceInteractive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mBouncer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mSwitchingUser = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mGoingToSleep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mKeyguardGoingAway = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mKeyguardUnlocking = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mIsPickedUp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPickedUp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mIsScreenSaverRunning = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenSaverRunning:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mSystemReady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_6

    const-string/jumbo p0, "shouldListenForFace ( return false, Face is not default condition)"

    .line 3837
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3841
    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_7

    const-string/jumbo p0, "shouldListenForFace ( return false, because of Biometric lockoutAttemptDeadline)"

    .line 3842
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3847
    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v7

    cmp-long v1, v7, v9

    if-lez v1, :cond_8

    const-string/jumbo p0, "shouldListenForFace ( return false, because of lockoutAttemptDeadline)"

    .line 3848
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3853
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo p0, "shouldListenForFace (return false, because face is disabled by dpm)"

    .line 3854
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3859
    :cond_9
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo p0, "shouldListenForFace ( return false, because security policy)"

    .line 3860
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3865
    :cond_a
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isScreenOffMemoEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOffMemoRunning()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo p0, "shouldListenForFace ( return false, because Screen off Memo is running)"

    .line 3866
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3871
    :cond_b
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCocktailBarWindowType:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_c

    const-string/jumbo p0, "shouldListenForFace ( return false, the cocktail bar is expanded)"

    .line 3872
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3877
    :cond_c
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo p0, "shouldListenForFace ( return false, the camera is block by policy)"

    .line 3878
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3883
    :cond_d
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_COVER:Z

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string/jumbo p0, "shouldListenForFace ( return false as cover is closed. )"

    .line 3884
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3889
    :cond_e
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsServiceBoxFullScreen:Z

    if-eqz v1, :cond_10

    .line 3890
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldListenForFace ( return false, because mIsShadeLockedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", or mIsServiceBoxFullScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsServiceBoxFullScreen:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3897
    :cond_10
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo p0, "shouldListenForFace ( return false, unlocking never happened )"

    .line 3898
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3903
    :cond_11
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    if-nez v1, :cond_12

    const-string/jumbo p0, "shouldListenForFace ( return false, Boot did not complete )"

    .line 3904
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3909
    :cond_12
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-nez v1, :cond_13

    .line 3910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldListenForFace ( return false, because isUnlockingWithBiometricAllowed() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3911
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3910
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3916
    :cond_13
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v1, :cond_14

    .line 3917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldListenForFace ( return false, because mSwipeLockShowingBeforeTimeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3923
    :cond_14
    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo p0, "shouldListenForFace ( return false, device is locked by administrator )"

    .line 3924
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3929
    :cond_15
    const-class v1, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v1}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenOffInDexMode:Z

    if-eqz v1, :cond_16

    const-string/jumbo p0, "shouldListenForFace ( return false, device is off in dex mode )"

    .line 3930
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3935
    :cond_16
    invoke-static {}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getInstance()Lcom/android/systemui/noticenter/NotiCenterPlugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsNotiStarShown:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v1, :cond_17

    const-string/jumbo p0, "shouldListenForFace ( return false, NotiStar is shown )"

    .line 3937
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3942
    :cond_17
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo p0, "shouldListenForFace ( return false, LockStay is true and getUserHasTrust() is true)"

    .line 3943
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3949
    :cond_18
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v0, :cond_19

    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDynamicLockViewMode:Z

    if-eqz v0, :cond_19

    const-string/jumbo p0, "shouldListenForFace ( return false, DynamicLockViewMode"

    .line 3950
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3956
    :cond_19
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    if-eqz v0, :cond_1a

    const-string/jumbo p0, "shouldListenForFace ( return false, dialog is showing )"

    .line 3957
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3962
    :cond_1a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceType;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const-class p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result p0

    if-nez p0, :cond_1b

    const-string/jumbo p0, "shouldListenForFace ( return false, Dual LCD folder is closed )"

    .line 3963
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1b
    return v3
.end method

.method private shouldListenForFingerprint()Z
    .locals 11

    .line 3568
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 3571
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 3574
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_WOF:Z

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    .line 3575
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3576
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez v1, :cond_0

    .line 3577
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isReadyBackgroundAuthentication(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-nez v1, :cond_1

    .line 3581
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintAuthenticated(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemReady:Z

    if-eqz v1, :cond_1

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    .line 3584
    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v1, :cond_3

    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isReadyBackgroundAuthentication(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemReady:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3591
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shouldListenForFingerprint ( isFingerprintEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mKeyguardIsVisible = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mDeviceInteractive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mBouncer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mGoingToSleep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mSwitchingUser = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mKeyguardUnlocking = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mKeyguardGoingAway = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mKeyguardShowing = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mKeyguardOccluded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mSystemReady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mHasFocus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasFocus:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KeyguardFingerPrint"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1e

    .line 3611
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_4

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, because of Biometric lockoutAttemptDeadline )"

    .line 3612
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3619
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v7

    cmp-long v1, v7, v9

    if-lez v1, :cond_5

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, because of lockoutAttemptDeadline )"

    .line 3620
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3626
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, because fingerprint is disabled by dpm )"

    .line 3627
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3633
    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, because lock to force a lockscreen )"

    .line 3634
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3640
    :cond_7
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isScreenOffMemoEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOffMemoRunning()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, because Screen off Memo is running. )"

    .line 3641
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3646
    :cond_8
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_COVER:Z

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_REAR:Z

    if-eqz v1, :cond_9

    const-class v1, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v1}, Lcom/android/systemui/util/DesktopManager;->isDualView()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    const-string/jumbo p0, "shouldListenForFingerprint ( return false as cover is closed. )"

    .line 3647
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3663
    :cond_a
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_WOF:Z

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3664
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v1, :cond_b

    .line 3665
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabledWithBadQuality()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo p0, "shouldListenForFingerprint ( bad quality count is maximum. )"

    .line 3666
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3672
    :cond_b
    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    .line 3674
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3675
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, authenticated with biometric)"

    .line 3676
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3681
    :cond_c
    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, device is locked by administrator )"

    .line 3682
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3687
    :cond_d
    const-class v1, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_e

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, dependency class destroy)"

    .line 3688
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3693
    :cond_e
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v1, :cond_1d

    .line 3696
    invoke-static {}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getInstance()Lcom/android/systemui/noticenter/NotiCenterPlugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterConnected()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsNotiStarShown:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v1, :cond_f

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, NotiStar is shown )"

    .line 3698
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3703
    :cond_f
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    const-string v5, " )"

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsServiceBoxFullScreen:Z

    if-eqz v1, :cond_11

    .line 3704
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldListenForFingerprint ( return false, because mIsShadeLockedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", or mIsServiceBoxFullScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsServiceBoxFullScreen:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3711
    :cond_11
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-nez v1, :cond_12

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, strong auth with in-display fingerprint)"

    .line 3712
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3718
    :cond_12
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShortcutPreviewShowing:Z

    if-eqz v1, :cond_13

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, shortcut preview is showing )"

    .line 3719
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3724
    :cond_13
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPanelExpandingStarted:Z

    if-eqz v1, :cond_14

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, quick panel is showing )"

    .line 3725
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3730
    :cond_14
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, one hand mode is running)"

    .line 3731
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3736
    :cond_15
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCocktailBarWindowType:I

    if-ne v1, v4, :cond_16

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, the cocktail bar is expanded)"

    .line 3737
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3742
    :cond_16
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-eqz v1, :cond_17

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, getUserHasTrust() is true)"

    .line 3743
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3748
    :cond_17
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, this process is for the sub-user)"

    .line 3749
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3754
    :cond_18
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v0, :cond_19

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    if-eqz v0, :cond_19

    .line 3755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldListenForFingerprint ( return false, Calling state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3761
    :cond_19
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDynamicLockViewMode:Z

    if-eqz v0, :cond_1a

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, DynamicLockViewMode"

    .line 3762
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3768
    :cond_1a
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    if-eqz v0, :cond_1b

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, dialog is showing )"

    .line 3769
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3774
    :cond_1b
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSIPShown:Z

    if-eqz v0, :cond_1c

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, SIP is showing )"

    .line 3775
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3780
    :cond_1c
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasFocus:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result p0

    if-nez p0, :cond_1d

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, Not focus on statusbar )"

    .line 3781
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1d
    return v3

    :cond_1e
    return v2
.end method

.method private shouldListenForIB()Z
    .locals 11

    .line 6674
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 6676
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 6681
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    const/4 v3, 0x1

    const-string v4, "Keyguard_IB"

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 6682
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isReadyBackgroundAuthentication(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-nez v1, :cond_4

    .line 6683
    invoke-virtual {p0, v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedByWOF(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPickedUp:Z

    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemReady:Z

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v2

    .line 6686
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shouldListenForIB ( isIBDefaultCondition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mKeyguardIsVisible = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mDeviceInteractive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mBouncer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mSwitchingUser = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mGoingToSleep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mKeyguardGoingAway = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mKeyguardUnlocking = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mIsPickedUp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPickedUp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mSystemReady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6698
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v5

    if-nez v1, :cond_5

    const-string/jumbo p0, "shouldListenForIB ( return false, Intelligence Biometrics is not default condition. ) "

    .line 6701
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6705
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_6

    const-string/jumbo p0, "shouldListenForIB ( return false, because of Biometric lockoutAttemptDeadline)"

    .line 6706
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6711
    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v7

    cmp-long v1, v7, v9

    if-lez v1, :cond_7

    const-string/jumbo p0, "shouldListenForIB ( return false, because of lockoutAttemptDeadline)"

    .line 6712
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6717
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_1

    :cond_8
    const-string v1, " )"

    if-nez v5, :cond_9

    .line 6723
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v7, :cond_9

    const-class v7, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v7}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v7

    if-nez v7, :cond_9

    .line 6724
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "shouldListenForIB ( IB recognition on 1st screen = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6730
    :cond_9
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v7

    if-eqz v7, :cond_a

    const-string/jumbo p0, "shouldListenForIB ( return false, because security policy)"

    .line 6731
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6736
    :cond_a
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isScreenOffMemoEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOffMemoRunning()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string/jumbo p0, "shouldListenForIB ( return false, because Screen off Memo is running)"

    .line 6737
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6742
    :cond_b
    iget v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCocktailBarWindowType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_c

    const-string/jumbo p0, "shouldListenForIB ( return false, the cocktail bar is expanded)"

    .line 6743
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6748
    :cond_c
    sget-boolean v7, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_COVER:Z

    if-eqz v7, :cond_d

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCoverClosed()Z

    move-result v7

    if-eqz v7, :cond_d

    const-string/jumbo p0, "shouldListenForIB ( return false as cover is closed. )"

    .line 6749
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_d
    if-eqz v5, :cond_f

    .line 6754
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v7, :cond_f

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    if-nez v7, :cond_e

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsServiceBoxFullScreen:Z

    if-eqz v7, :cond_f

    .line 6755
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldListenForIB ( return false, because mIsShadeLockedState = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", or mIsServiceBoxFullScreen="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsServiceBoxFullScreen:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6762
    :cond_f
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo p0, "shouldListenForIB ( return false, unlocking never happened )"

    .line 6763
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6768
    :cond_10
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    if-nez v1, :cond_11

    const-string/jumbo p0, "shouldListenForIB ( return false, Boot did not complete )"

    .line 6769
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6774
    :cond_11
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-nez v1, :cond_12

    .line 6775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldListenForIB ( return false, because isUnlockingWithBiometricAllowed() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6776
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6775
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6781
    :cond_12
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v1, :cond_13

    .line 6782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldListenForIB ( return false, because mSwipeLockShowingBeforeTimeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6788
    :cond_13
    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string/jumbo p0, "shouldListenForIB ( return false, device is locked by administrator )"

    .line 6789
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6794
    :cond_14
    const-class v1, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v1}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenOffInDexMode:Z

    if-eqz v1, :cond_15

    const-string/jumbo p0, "shouldListenForIB ( return false, device is off in dex mode )"

    .line 6795
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6800
    :cond_15
    invoke-static {}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getInstance()Lcom/android/systemui/noticenter/NotiCenterPlugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterConnected()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsNotiStarShown:Z

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v1, :cond_16

    const-string/jumbo p0, "shouldListenForIB ( return false, NotiStar is shown )"

    .line 6802
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_16
    if-eqz v5, :cond_17

    .line 6807
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIntelligentScanStayOnLock()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo p0, "shouldListenForIB ( return false, LockStay is true and getUserHasTrust() is true)"

    .line 6808
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6814
    :cond_17
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v0, :cond_18

    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDynamicLockViewMode:Z

    if-eqz v0, :cond_18

    const-string/jumbo p0, "shouldListenForIB ( return false, DynamicLockViewMode"

    .line 6815
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6821
    :cond_18
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplay:Landroid/view/Display;

    .line 6822
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p0

    if-ne p0, v8, :cond_19

    const-string/jumbo p0, "shouldListenForIB ( return false, because Surface.ROTATION_180 )"

    .line 6823
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_19
    return v3

    :cond_1a
    :goto_1
    const-string/jumbo p0, "shouldListenForIB (return false, because biometrics are disabled by dpm)"

    .line 6718
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private shouldListenForIris()Z
    .locals 9

    .line 6035
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 6037
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 6041
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    const/4 v3, 0x1

    const-string v4, "KeyguardIris"

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 6043
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isReadyBackgroundAuthentication(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-nez v1, :cond_2

    .line 6044
    invoke-virtual {p0, v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedByWOF(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemReady:Z

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 6047
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shouldListenForIris ( isIrisDefaultCondition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mKeyguardIsVisible = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mBouncer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mDeviceInteractive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mSwitchingUser = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mGoingToSleep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mKeyguardGoingAway = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mKeyguardUnlocking = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mSystemReady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3

    const-string/jumbo p0, "shouldListenForIris ( return false, Iris is not default condition. ) "

    .line 6059
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6063
    :cond_3
    const-class v1, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v1}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo p0, "shouldListenForIris ( return false, because of Dex Standalone )"

    .line 6064
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6069
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_5

    const-string/jumbo p0, "shouldListenForIris ( return false, because of Biometric lockoutAttemptDeadline )"

    .line 6070
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6076
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v5

    cmp-long v1, v5, v7

    if-lez v1, :cond_6

    const-string/jumbo p0, "shouldListenForIris ( return false, because of lockoutAttemptDeadline )"

    .line 6077
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6083
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo p0, "shouldListenForIris (return false, because iris is disabled by dpm)"

    .line 6084
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6089
    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo p0, "shouldListenForIris ( return false, because lock to force a lockscreen )"

    .line 6090
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6095
    :cond_8
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isScreenOffMemoEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOffMemoRunning()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo p0, "shouldListenForIris ( return false, because Screen off Memo is running. )"

    .line 6096
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6101
    :cond_9
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisTimeoutErrorCount:I

    const/16 v5, 0xa

    if-lt v1, v5, :cond_a

    const-string/jumbo v0, "shouldListenForIris ( return false, because of too many timeout error )"

    .line 6102
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6103
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->kg_iris_too_many_timeout_error_toast_text:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 6105
    invoke-virtual {p0}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 6106
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    .line 6111
    :cond_a
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisUnlockFailed:Z

    if-eqz v1, :cond_b

    const-string/jumbo p0, "shouldListenForIris ( return false, mIsIrisUnlockFailed )"

    .line 6112
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6117
    :cond_b
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_COVER:Z

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo p0, "shouldListenForIris ( return false as cover is closed. )"

    .line 6118
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6123
    :cond_c
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v1

    if-nez v1, :cond_d

    .line 6124
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v5, :cond_d

    const-string/jumbo p0, "shouldListenForIris (return false, disabled iris on 1st screen"

    .line 6125
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_d
    if-eqz v1, :cond_f

    .line 6130
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v5, :cond_f

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    if-nez v5, :cond_e

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsServiceBoxFullScreen:Z

    if-eqz v5, :cond_f

    .line 6131
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldListenForIris ( return false, mIsShadeLockedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", or mIsServiceBoxFullScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsServiceBoxFullScreen:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6138
    :cond_f
    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCocktailBarWindowType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_10

    const-string/jumbo p0, "shouldListenForIris ( return false, the cocktail bar is expanded)"

    .line 6139
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6144
    :cond_10
    const-class v5, Lcom/android/systemui/KnoxStateMonitor;

    .line 6146
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v5}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 6147
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string/jumbo p0, "shouldListenForIris ( return false, authenticated with biometric)"

    .line 6148
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6153
    :cond_11
    const-class v5, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v5}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v5

    if-eqz v5, :cond_12

    const-string/jumbo p0, "shouldListenForIris ( return false, device is locked by administrator )"

    .line 6154
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6159
    :cond_12
    const-class v5, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v5}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v5

    if-eqz v5, :cond_13

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenOffInDexMode:Z

    if-eqz v5, :cond_13

    const-string/jumbo p0, "shouldListenForIris ( return false, device is off in dex mode )"

    .line 6160
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6165
    :cond_13
    invoke-static {}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getInstance()Lcom/android/systemui/noticenter/NotiCenterPlugin;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterConnected()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsNotiStarShown:Z

    if-eqz v5, :cond_14

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v5, :cond_14

    const-string/jumbo p0, "shouldListenForIris ( return false, NotiStar is shown )"

    .line 6167
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_14
    if-eqz v1, :cond_15

    .line 6172
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisStayOnLock()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo p0, "shouldListenForIris ( return false, LockStay is true and getUserHasTrust() is true)"

    .line 6173
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6179
    :cond_15
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v0, :cond_16

    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDynamicLockViewMode:Z

    if-eqz v0, :cond_16

    const-string/jumbo p0, "shouldListenForIris ( return false, DynamicLockViewMode"

    .line 6180
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6186
    :cond_16
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplay:Landroid/view/Display;

    .line 6187
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    if-ne v0, v6, :cond_17

    const-string/jumbo p0, "shouldListenForIris ( return false, because Surface.ROTATION_180 )"

    .line 6188
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6192
    :cond_17
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceType;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_18

    const-class p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result p0

    if-nez p0, :cond_18

    const-string/jumbo p0, "shouldListenForIris ( return false, Dual LCD folder is closed )"

    .line 6193
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_18
    return v3
.end method

.method private showFingerprintBlockPopup()V
    .locals 9

    .line 8306
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8307
    new-instance v7, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v7, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 8308
    sget v1, Lcom/android/systemui/R$string;->kg_fingerprint_bad_quality_popup_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 8309
    sget v1, Lcom/android/systemui/R$string;->kg_fingerprint_bad_quality_popup_message:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 8310
    sget v1, Lcom/android/systemui/R$string;->kg_keycode_ok:I

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$25;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$25;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v7, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 8317
    new-instance v2, Landroid/widget/CheckBox;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v1, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 8318
    sget v1, Lcom/android/systemui/R$string;->kg_fingerprint_bad_quality_popup_checkbox:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 8319
    sget v1, Lcom/android/systemui/R$dimen;->qs_checkbox_text_side_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8, v8, v8}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 8320
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$26;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$26;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 8327
    sget p0, Lcom/android/systemui/R$dimen;->checkbox_popup_text_margin:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget p0, Lcom/android/systemui/R$dimen;->checkbox_popup_text_margin:I

    .line 8328
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    .line 8327
    invoke-virtual/range {v1 .. v6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 8329
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 8330
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startListeningForFace()V
    .locals 12

    .line 4041
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceRunningState:I

    const-string v1, "KeyguardFace"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "startListeningForFace()"

    .line 4050
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 4051
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSemFaceAuthenticated(Z)V

    .line 4052
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v3, :cond_1

    .line 4054
    invoke-virtual {v3}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v3, 0x0

    .line 4055
    iput-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 4057
    :cond_1
    new-instance v3, Landroid/os/CancellationSignal;

    invoke-direct {v3}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 4058
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isReadyBackgroundAuthentication(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4059
    invoke-virtual {p0, v2, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUpdateBackgroundAuthToast(ZI)V

    .line 4061
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 4063
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPickedUp:Z

    if-eqz v3, :cond_3

    const-string v3, "Call start face auth with BUNDLE_SKIP_WAKELOCK"

    .line 4064
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3e8

    .line 4066
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->applyFPBooster(I)V

    .line 4069
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "skip_wakelock"

    .line 4070
    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4071
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    const/4 v8, 0x0

    sget v9, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    .line 4073
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPickedUp:Z

    goto :goto_0

    .line 4075
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    const/4 v6, 0x0

    sget v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    :goto_0
    return-void

    .line 4042
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t start startListeningForFace(), mSemFaceRunningState = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceRunningState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4044
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isReadyBackgroundAuthentication(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4045
    invoke-virtual {p0, v2, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUpdateBackgroundAuthToast(ZI)V

    .line 4046
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleShowBackgroundAuthToast(I)V

    :cond_5
    return-void
.end method

.method private startListeningForFingerprint()V
    .locals 11

    .line 3990
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 3991
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    :cond_0
    if-ne v0, v1, :cond_1

    return-void

    .line 3998
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 3999
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    const-string v1, "KeyguardFingerPrint"

    if-eqz v0, :cond_6

    .line 4000
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    .line 4001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startListeningForFingerprint() "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", callers: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4002
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_2

    .line 4004
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 4005
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 4007
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.fingerprint"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4008
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 4009
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpAuthHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 4010
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v4, 0xa

    const-string v5, "FpAuthHandler"

    invoke-direct {v0, v5, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4012
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4013
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpAuthHandler:Landroid/os/Handler;

    .line 4015
    :cond_3
    new-instance v4, Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v5, "fingerprint"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/hardware/fingerprint/FingerprintManager;-><init>(Landroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V

    const/4 v5, 0x0

    .line 4016
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    const/4 v7, 0x0

    new-instance v8, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpMsgConsumer:Ljava/util/function/Consumer;

    invoke-direct {v8, v0, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;-><init>(ILjava/util/function/Consumer;)V

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpAuthHandler:Landroid/os/Handler;

    sget v10, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual/range {v4 .. v10}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 4023
    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 4024
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsNeedToUpdateFpInDisplayState:Z

    .line 4026
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 4028
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    if-eqz v0, :cond_7

    .line 4029
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutSkipFPResponse:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4030
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutSkipFPResponse:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "FP started by the power key. If it receives a response within 500ms, it will skip."

    .line 4031
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string/jumbo p0, "startListeningForFingerprint() return - fingerprint service is not supported"

    .line 4020
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const-string p0, "Can\'t start startListeningForFingerprint()"

    .line 4035
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    return-void
.end method

.method private startListeningForIB()V
    .locals 12

    .line 6832
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemBiometricsManager(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;

    move-result-object v0

    const-string v1, "Keyguard_IB"

    if-nez v0, :cond_0

    .line 6833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start startListeningForIB(), sBiometricsManager = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 6835
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemBiometricsManager(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6833
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6838
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIBRunningState:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 6839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t start startListeningForIB(), already running = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIBRunningState:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6841
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isReadyBackgroundAuthentication(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6842
    invoke-virtual {p0, v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUpdateBackgroundAuthToast(ZI)V

    .line 6843
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleShowBackgroundAuthToast(I)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "startListeningForIB()"

    .line 6847
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 6848
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIBAuthenticated(Z)V

    .line 6849
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIBCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v4, :cond_3

    const-string v5, "mIBCancelSignal is not null"

    .line 6851
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6852
    invoke-virtual {v4}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v4, 0x0

    .line 6853
    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIBCancelSignal:Landroid/os/CancellationSignal;

    .line 6855
    :cond_3
    new-instance v4, Landroid/os/CancellationSignal;

    invoke-direct {v4}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIBCancelSignal:Landroid/os/CancellationSignal;

    .line 6856
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isReadyBackgroundAuthentication(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6857
    invoke-virtual {p0, v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUpdateBackgroundAuthToast(ZI)V

    .line 6860
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIBRunningState(I)V

    .line 6861
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPickedUp:Z

    if-eqz v2, :cond_5

    const-string v2, "Call start intelligent scan auth with BUNDLE_SKIP_WAKELOCK"

    .line 6862
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6863
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "skip_wakelock"

    .line 6864
    invoke-virtual {v11, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6865
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemBiometricsManager(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIBCancelSignal:Landroid/os/CancellationSignal;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIBAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    const/4 v9, 0x0

    sget v10, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual/range {v4 .. v11}, Lcom/samsung/android/biometrics/SemBiometricsManager;->authenticate(ILcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 6867
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPickedUp:Z

    goto :goto_0

    .line 6869
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemBiometricsManager(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIBCancelSignal:Landroid/os/CancellationSignal;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIBAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    const/4 v6, 0x0

    sget v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/biometrics/SemBiometricsManager;->authenticate(ILcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private startListeningForIris(Z)V
    .locals 9

    const/4 p1, 0x0

    .line 6202
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisAuthenticated(Z)V

    .line 6203
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    const-string v2, "KeyguardIris"

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez p1, :cond_7

    .line 6204
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisUnlockFailed:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6218
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisView:Landroid/view/View;

    if-nez p1, :cond_1

    const-string p1, "IrisView is null"

    .line 6219
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6222
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisCancelSignal:Landroid/os/CancellationSignal;

    if-eqz p1, :cond_2

    const-string v3, "mIrisCancelSignal is not null"

    .line 6224
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6225
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    const/4 p1, 0x0

    .line 6226
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisCancelSignal:Landroid/os/CancellationSignal;

    .line 6228
    :cond_2
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisCancelSignal:Landroid/os/CancellationSignal;

    .line 6229
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisRunningState(I)V

    .line 6231
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string/jumbo p1, "startListeningForIris()"

    .line 6232
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6233
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isReadyBackgroundAuthentication(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6234
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUpdateBackgroundAuthToast(ZI)V

    .line 6236
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisCancelSignal:Landroid/os/CancellationSignal;

    if-nez p1, :cond_4

    const-string p0, "Already canceled"

    .line 6237
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6243
    :cond_4
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez p1, :cond_5

    const/4 p1, 0x4

    .line 6244
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    .line 6247
    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updatePreviewAttribute()V

    .line 6248
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisCancelSignal:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    const/4 v5, 0x0

    sget v6, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisView:Landroid/view/View;

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    :cond_6
    return-void

    .line 6206
    :cond_7
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not start Iris ( already running = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6207
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , !isUnlockingWithBiometricAllowed() = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6208
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6206
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6209
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 6210
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isReadyBackgroundAuthentication(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 6211
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUpdateBackgroundAuthToast(ZI)V

    .line 6212
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleShowBackgroundAuthToast(I)V

    :cond_8
    return-void
.end method

.method private updateActiveRemoteLockIndex()V
    .locals 3

    const/4 v0, -0x1

    .line 7605
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveRemoteLockIndex:I

    const/4 v1, 0x0

    .line 7606
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7607
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RemoteLockInfo;

    iget v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    if-ge v0, v2, :cond_0

    .line 7608
    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveRemoteLockIndex:I

    .line 7609
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RemoteLockInfo;

    iget v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAirplaneModeState()V
    .locals 2

    .line 3448
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x149

    .line 3449
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3452
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateBiometricListeningState()V
    .locals 0

    .line 3456
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 3457
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method private updateLogoutEnabled()V
    .locals 2

    .line 5380
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 5381
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    move-result v0

    .line 5382
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    if-eq v1, v0, :cond_0

    .line 5383
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    .line 5386
    sget-object v0, Lcom/android/keyguard/-$$Lambda$sjlNqlscxCb9H-VAvuW9iOnoeW8;->INSTANCE:Lcom/android/keyguard/-$$Lambda$sjlNqlscxCb9H-VAvuW9iOnoeW8;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private updatePreviewAttribute()V
    .locals 11

    .line 6272
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6273
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 6274
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 6275
    :goto_0
    sget-boolean v5, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    const-string v6, "KeyguardIris"

    if-eqz v5, :cond_4

    if-eqz v2, :cond_1

    goto :goto_2

    .line 6284
    :cond_1
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    sget v5, Lcom/android/systemui/R$dimen;->kg_iris_preview_height:I

    .line 6285
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    .line 6286
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v7, v5

    const-wide v9, 0x4040c00000000000L    # 33.5

    mul-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v5, v7

    .line 6288
    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v8, v8, 0x2

    sget v9, Lcom/android/systemui/R$dimen;->kg_iris_preview_height:I

    .line 6289
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v8, v0

    .line 6290
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 6291
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    goto :goto_1

    .line 6296
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisView:Landroid/view/View;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v5, v2, v1, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 6293
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisView:Landroid/view/View;

    invoke-virtual {v0, v4, v2, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 6300
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TABLET] re-arrange layout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 6276
    :cond_4
    :goto_2
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v1, :cond_5

    move v1, v2

    .line 6277
    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisView:Landroid/view/View;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eq v2, v1, :cond_6

    .line 6278
    sget v2, Lcom/android/systemui/R$dimen;->kg_iris_preview_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 6280
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisView:Landroid/view/View;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 6281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "re-arrange layout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method private watchForDeviceProvisioning()V
    .locals 4

    .line 4269
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$17;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 4281
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    .line 4282
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 4281
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4287
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    .line 4288
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_0

    .line 4289
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 4290
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v0, :cond_0

    .line 4291
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x134

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addFailedFMMUnlockAttempt(I)I
    .locals 0

    .line 5083
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p0, :cond_0

    .line 5084
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->addFailedFMMUnlockAttempt(I)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addLogInDebugLogStore(Ljava/lang/String;)V
    .locals 1

    .line 8291
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDebugLogStore:Lcom/android/systemui/util/DebugLogStore;

    if-eqz p0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    .line 8292
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/util/DebugLogStore;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public awakenFromDream()V
    .locals 1

    .line 1188
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz p0, :cond_0

    .line 1190
    :try_start_0
    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "KeyguardUpdateMonitor"

    const-string v0, "Unable to awaken from dream"

    .line 1192
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public clearBiometricRecognized()V
    .locals 2

    .line 5118
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5120
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v1}, Landroid/app/trust/TrustManager;->clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 5121
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Landroid/app/trust/TrustManager;->clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method public clearFailedUnlockAttempts()V
    .locals 3

    .line 5064
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 5066
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5068
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5069
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerPrintFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5070
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    const/4 v1, 0x0

    .line 5071
    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutReason:Ljava/lang/String;

    .line 5074
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$X8q7wS43SRKy7leOxW0ROXOOZ3Q;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$X8q7wS43SRKy7leOxW0ROXOOZ3Q;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public clearFingerBadQualityCounts()V
    .locals 8

    .line 5646
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5647
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5648
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v3, 0x3f7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    :cond_0
    return-void
.end method

.method public createChannels()V
    .locals 4

    .line 3072
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 3073
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNotificationManager:Landroid/app/NotificationManager;

    .line 3076
    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 3077
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->kg_fbe_notification_header:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "fbe_channel_id"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    .line 3079
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/4 v1, 0x0

    .line 3080
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 3081
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public dispatchBootCompleted()V
    .locals 1

    .line 4389
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x139

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    .line 3099
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 3100
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x15b

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 3101
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3102
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dispatchDlsBiometricMode(Z)V
    .locals 2

    .line 2975
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x171

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2976
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2978
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchDlsViewMode(I)V
    .locals 2

    .line 2982
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x176

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2983
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2985
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchDreamingStarted()V
    .locals 3

    .line 5319
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14d

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchDreamingStopped()V
    .locals 2

    .line 5323
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const/16 v1, 0x14d

    invoke-virtual {p0, v1, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchFinishedGoingToSleep(I)V
    .locals 2

    .line 5298
    monitor-enter p0

    const/4 v0, 0x0

    .line 5299
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 5300
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5301
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x140

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 5300
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dispatchNotiStarState(Z)V
    .locals 2

    .line 1049
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1052
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchScreenTurnedOff()V
    .locals 1

    .line 5312
    monitor-enter p0

    const/4 v0, 0x0

    .line 5313
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    .line 5314
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5315
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    .line 5314
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchScreenTurnedOn()V
    .locals 1

    .line 5305
    monitor-enter p0

    const/4 v0, 0x1

    .line 5306
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    .line 5307
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5308
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14b

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    .line 5307
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchServiceBoxFullScreenMode(Z)V
    .locals 1

    .line 7284
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x16a

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchStartedGoingToSleep(I)V
    .locals 2

    .line 5294
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x141

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchStartedWakingUp()V
    .locals 1

    .line 5277
    monitor-enter p0

    const/4 v0, 0x1

    .line 5278
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 5279
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5280
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x13f

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    .line 5279
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchStartedWakingUp(I)V
    .locals 2

    .line 5285
    monitor-enter p0

    const/4 v0, 0x1

    .line 5286
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 5287
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenSaverRunning:Z

    .line 5288
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5289
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x159

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 5288
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dispatchStatusBarState(Z)V
    .locals 2

    .line 7277
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7278
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7280
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "KeyguardUpdateMonitor state:"

    .line 7316
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  CurrentUserId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7318
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 7319
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 7321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  UserId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  SIM States:"

    .line 7322
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7323
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "    "

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 7324
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v4, "  Subs:"

    .line 7326
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7327
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 7328
    :goto_2
    iget-object v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 7329
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    const-string v4, "  Service states:"

    .line 7332
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7333
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "="

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 7334
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 7337
    :cond_2
    sget-boolean v4, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    if-eqz v4, :cond_4

    .line 7338
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStatesScopeInvalid:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 7339
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 7340
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "        "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStatesScopeInvalid:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 7345
    :cond_4
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const-string v6, "    trustManaged="

    const-string v7, "    strongAuthFlags="

    const-string v8, "    possible="

    const-string v9, "    disabled(DPM)="

    const-string v10, "    authSinceBoot="

    const-string v11, "    auth\'d="

    const-string v12, "    allowed="

    const-string v13, ")"

    const/4 v14, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7346
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v4

    .line 7347
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Fingerprint state (user="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7350
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7351
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7350
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7354
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    listening: actual="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " expected="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7355
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint()Z

    move-result v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7354
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    SEC_BIOMETRIC_TYPE_FINGERPRINT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v14, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7360
    :cond_5
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7361
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v4

    .line 7362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Face authentication state (user="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7363
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7364
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7365
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7366
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7365
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    enabledByUser="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceSettingEnabledForUser:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7374
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Security state (user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") - cached state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    getBiometricType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7376
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    isFingerprintOptionEnabled="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v14, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    if-ne v6, v14, :cond_7

    move v6, v14

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    isIrisOptionEnabled="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v7, 0x10

    invoke-virtual {v6, v7, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    if-ne v6, v14, :cond_8

    move v6, v14

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsIris:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    isFaceOptionEnabled="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v7, 0x100

    invoke-virtual {v6, v7, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    if-ne v6, v14, :cond_9

    move v6, v14

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    isIBOptionEnabled="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v7, 0x1000

    invoke-virtual {v6, v7, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    if-ne v6, v14, :cond_a

    goto :goto_8

    :cond_a
    const/4 v14, 0x0

    :goto_8
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsIB:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    getFailedUnlockAttempt="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/LockPatternUtils;->getFailedUnlockAttempt(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mDisableCamera="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisableCamera:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mMaximumFailedPasswordsForWipe="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMaximumFailedPasswordsForWipe:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7383
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    isSecure="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSecured:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    storedPasswordQuality="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStoredPasswordQuality:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7385
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    activePasswordQuality="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActivePasswordQuality:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7386
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    getUserCanSkipBouncer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7387
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    getUserHasTrust="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    lockTypeSummary="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockTypeSummary(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7438
    :cond_b
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/sensor/PickupController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/sensor/PickupController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getBatteryStatus()Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    .locals 0

    .line 1157
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    return-object p0
.end method

.method public getBiometricType()I
    .locals 1

    .line 8298
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez p0, :cond_0

    const-string p0, "KeyguardUpdateMonitor"

    const-string v0, "mLockPatternUtils is null"

    .line 8299
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 8302
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result p0

    return p0
.end method

.method public getBiometricsAuthenticated(I)I
    .locals 1

    .line 1772
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1773
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemFaceAuthenticated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x100

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 0

    .line 3126
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p0
.end method

.method public getDismissActionType()Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;
    .locals 0

    .line 2910
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    return-object p0
.end method

.method public getEmergencyStateChangedReason()I
    .locals 0

    .line 3036
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEmergencyStateChangedReason:I

    return p0
.end method

.method public getFailedBiometricUnlockAttempts()I
    .locals 1

    .line 5670
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result p0

    return p0
.end method

.method public getFailedBiometricUnlockAttempts(I)I
    .locals 1

    .line 5674
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getFailedFMMUnlockAttempt(I)I
    .locals 0

    .line 5090
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p0, :cond_0

    .line 5091
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getFailedFMMUnlockAttempt(I)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getFailedUnlockAttempts(I)I
    .locals 1

    .line 5102
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_0

    .line 5103
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getFailedUnlockAttempt(I)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    .line 5105
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getFingerPrintBadQualityCounts()I
    .locals 2

    .line 5657
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getFingerprintAuthenticated(I)Z
    .locals 0

    .line 5737
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public getIBAuthenticated(I)Z
    .locals 0

    .line 6905
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIBAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public getIrisAuthenticated(I)Z
    .locals 0

    .line 6645
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIrisAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public getIrisTimeoutErrorCount()I
    .locals 0

    .line 6653
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisTimeoutErrorCount:I

    return p0
.end method

.method public getLockTaskMode()Z
    .locals 0

    .line 3141
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsLocksTaskModeLocked:Z

    return p0
.end method

.method public getLockoutAttemptDeadline()J
    .locals 6

    .line 7776
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 7777
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutAttemptDeadline:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutAttemptTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 7778
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    return-wide v0

    .line 7781
    :cond_0
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutAttemptDeadline:J

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutAttemptTimeout:J

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 7782
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v2
.end method

.method public getLockoutBiometricAttemptDeadline()J
    .locals 6

    .line 7789
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 7790
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutBiometricAttemptDeadline:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutBiometricAttemptTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 7791
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v0

    return-wide v0

    .line 7794
    :cond_0
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutBiometricAttemptDeadline:J

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutBiometricAttemptTimeout:J

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 7795
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v2
.end method

.method public getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I
    .locals 8

    const/4 v0, 0x0

    .line 5341
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v1

    const/4 v2, -0x1

    const v3, 0x7fffffff

    .line 5344
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 5345
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 5346
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 5347
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v5

    .line 5348
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v6

    if-ne p1, v6, :cond_2

    if-le v3, v5, :cond_2

    .line 5349
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkSimState(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v6

    const-string v7, "KeyguardUpdateMonitor"

    if-eqz v6, :cond_0

    .line 5350
    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinPassed(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v4, "getNextSubIdForState() PIN_REQUIRED happen on isSimPinPassed slot "

    .line 5351
    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5352
    :cond_0
    sget-boolean v6, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_ESIM:Z

    if-eqz v6, :cond_1

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isESimSkipped(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNextSubIdForState() "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " happen on isSimPinSkipped slotId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v2, v4

    move v3, v5

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public getPhoneState()I
    .locals 0

    .line 6565
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    return p0
.end method

.method public getProximityGuidePopupState()Z
    .locals 0

    .line 7975
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsGuidePopupShowing:Z

    return p0
.end method

.method public getRemainingAttempt(I)I
    .locals 4

    .line 5171
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    .line 5172
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttemptsBeforeWipe()I

    move-result v1

    .line 5173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemainingAttempt type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", failedAttempts : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remainingAttempts : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5174
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x5

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    if-lt v0, p0, :cond_3

    const/16 p0, 0x9

    if-gt v0, p0, :cond_3

    return v1

    :cond_1
    if-ge v1, p0, :cond_3

    return v1

    :cond_2
    if-gt v1, p0, :cond_3

    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getRemainingAttemptsBeforeWipe()I
    .locals 2

    .line 7529
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 7530
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    .line 7531
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v1

    .line 7532
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMaximumFailedPasswordsForWipe:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/16 p0, 0xf

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-lez p0, :cond_2

    sub-int/2addr p0, v0

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public getRemoteLockInfo()Lcom/android/internal/widget/RemoteLockInfo;
    .locals 1

    .line 7580
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveRemoteLockIndex:I

    if-ltz v0, :cond_0

    .line 7581
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/RemoteLockInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRemoteLockType()I
    .locals 1

    .line 7596
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveRemoteLockIndex:I

    if-ltz v0, :cond_0

    .line 7597
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/RemoteLockInfo;

    iget p0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getSemFaceAuthenticated(I)Z
    .locals 0

    .line 5873
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserSemFaceAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public getServiceState(I)Landroid/telephony/ServiceState;
    .locals 0

    .line 5098
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ServiceState;

    return-object p0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2

    .line 5146
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5147
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object p0

    .line 5149
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object p0
.end method

.method public getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    .locals 0

    .line 1817
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    return-object p0
.end method

.method public getSubscriptionInfo(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 1103
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 1105
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 1109
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    goto :goto_0

    .line 1111
    :cond_2
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    .line 1113
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    return-object p0
.end method

.method public getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;
    .locals 3

    const/4 v0, 0x0

    .line 5364
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object p0

    .line 5365
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5366
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 5367
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-ne p1, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserCanSkipBouncer(I)Z
    .locals 2

    .line 1745
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1750
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1751
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1752
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p0

    if-eqz p0, :cond_1

    const-class p0, Lcom/android/systemui/KnoxStateMonitor;

    .line 1755
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const-class p0, Lcom/android/systemui/KnoxStateMonitor;

    .line 1757
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor;->isSetToSwipeLock()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public getUserHasTrust(I)Z
    .locals 1

    .line 1761
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1762
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getUserTrustIsManaged(I)Z
    .locals 1

    .line 1796
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getUserUnlockedWithBiometric(I)Z
    .locals 3

    .line 1790
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    .line 1791
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_2

    .line 1792
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public handleFaceRecognitionAuthenticationFailed(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 5991
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    return-void

    .line 5994
    :cond_0
    sget p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    const-string v0, "face"

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedBiometricUnlockAttempt(ILjava/lang/String;)V

    .line 5995
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    .line 5999
    sget-object p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$njMkkJgbjCq8bRcvP3wo1DLD31Y;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$njMkkJgbjCq8bRcvP3wo1DLD31Y;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 6003
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->notifyFaceAuthenticationFailed()V

    return-void
.end method

.method protected handleFinishedGoingToSleep(I)V
    .locals 2

    const/4 v0, 0x0

    .line 2784
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 2786
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$kvol2JRb2_gzwsvYlMD0Kc8yiXQ;

    invoke-direct {v1, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$kvol2JRb2_gzwsvYlMD0Kc8yiXQ;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 2789
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setShortcutPreviewShowing(Z)V

    .line 2790
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestSessionOpen()V

    .line 2791
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method public handleIBAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 4

    .line 7026
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 7028
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$w36g5kGHtdmkvBbS-87mlTjSSyk;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$w36g5kGHtdmkvBbS-87mlTjSSyk;-><init>(ILjava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 7032
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->notifyIBAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public handleIBAuthenticationFailed(Z)V
    .locals 1

    .line 7061
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eqz p1, :cond_0

    .line 7063
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    return-void

    :cond_0
    const-string p1, "ib"

    .line 7066
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedBiometricUnlockAttempt(ILjava/lang/String;)V

    .line 7067
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    .line 7070
    sget-object p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$btRrodLhbvs2TaFD4SDgNmUEc_E;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$btRrodLhbvs2TaFD4SDgNmUEc_E;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public handleIrisAuthenticationFailed(Z)V
    .locals 3

    .line 6456
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 6458
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisForceCancel(Z)V

    .line 6459
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    .line 6460
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    .line 6461
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    return-void

    :cond_0
    const-string p1, "iris"

    .line 6464
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedBiometricUnlockAttempt(ILjava/lang/String;)V

    .line 6465
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisForceCancel(Z)V

    .line 6466
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    .line 6467
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    .line 6468
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    const/16 p1, -0x9

    .line 6469
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_iris_no_match:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleIrisAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 6473
    sget-object p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$V_ayr0LR_HC6hyEZR-Bj85VZP-Q;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$V_ayr0LR_HC6hyEZR-Bj85VZP-Q;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public handleIrisAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 4

    .line 6419
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 6422
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6424
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$7h-04Rxo12h7FAd6rIPiSLacN0Y;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$7h-04Rxo12h7FAd6rIPiSLacN0Y;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method handleServiceStateChange(ILandroid/telephony/ServiceState;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleServiceStateChange(subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4622
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    if-eqz v0, :cond_0

    .line 4623
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStatesScopeInvalid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4626
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "invalid subId in handleServiceStateChange()"

    .line 4627
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4630
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTelephonyCapable(Z)V

    .line 4633
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4636
    sget-object p1, Lcom/android/keyguard/-$$Lambda$m7rx9L3O-cMAbxCJ4DCUKdNbllg;->INSTANCE:Lcom/android/keyguard/-$$Lambda$m7rx9L3O-cMAbxCJ4DCUKdNbllg;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4549
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 4551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSimStateChange(subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4556
    invoke-direct {p0, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkSimState(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinPassed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "handleSimStateChange isSimPinPassed"

    .line 4557
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4561
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_ESIM:Z

    if-eqz v0, :cond_1

    .line 4562
    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isESimSkipped(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4564
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$n9G2Q6NRAQahv4cDts5XBii31ps;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$n9G2Q6NRAQahv4cDts5XBii31ps;-><init>(IILcom/android/internal/telephony/IccCardConstants$State;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void

    .line 4570
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_6

    const-string v0, "invalid subId in handleSimStateChange()"

    .line 4571
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4574
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v0, :cond_4

    .line 4575
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTelephonyCapable(Z)V

    .line 4579
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 4582
    iget v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    if-ne v4, p2, :cond_2

    .line 4583
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2

    .line 4586
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v0, :cond_5

    .line 4587
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTelephonyCapable(Z)V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_1
    move v0, v2

    .line 4593
    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    if-nez v1, :cond_7

    .line 4596
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    invoke-direct {v1, p3, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    .line 4597
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 4600
    :cond_7
    iget-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, p3, :cond_9

    iget v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    if-ne v4, p1, :cond_9

    iget v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    if-eq v4, p2, :cond_8

    goto :goto_3

    :cond_8
    move v3, v2

    .line 4601
    :cond_9
    :goto_3
    iput-object p3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 4602
    iput p1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 4603
    iput p2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    :goto_4
    if-nez v3, :cond_a

    if-eqz v0, :cond_b

    .line 4605
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p3, v0, :cond_b

    .line 4607
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$IeajXDqqb9BzDLFPwHLioz2TRuw;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$IeajXDqqb9BzDLFPwHLioz2TRuw;-><init>(IILcom/android/internal/telephony/IccCardConstants$State;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_b
    return-void
.end method

.method protected handleStartedGoingToSleep(I)V
    .locals 4

    .line 2739
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 2742
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$Lsx4gJ0eNkgzyxVsvbnju8lYJ2I;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$Lsx4gJ0eNkgzyxVsvbnju8lYJ2I;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2745
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_SIDE:Z

    if-eqz p1, :cond_0

    .line 2746
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2748
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutSkipFPResponse:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2749
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    .line 2750
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutSkipFPResponse:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "KeyguardFingerPrint"

    const-string v1, "ScreenOff by the powerKey. If it receives a response within 500ms, it will skip."

    .line 2751
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    :cond_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    const/4 p1, 0x0

    .line 2754
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setUnlockingKeyguard(Z)V

    .line 2755
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    .line 2759
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSemFaceAuthenticated(Z)V

    .line 2760
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisAuthenticated(Z)V

    .line 2761
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIBAuthenticated(Z)V

    .line 2764
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 2767
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2768
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p1

    sput-object p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 2770
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method protected handleStartedWakingUp()V
    .locals 1

    const-string v0, "KeyguardUpdateMonitor#handleStartedWakingUp"

    .line 2695
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2696
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 2698
    sget-object v0, Lcom/android/keyguard/-$$Lambda$xIhMye88jIGcS-bqz-hmZsvNo7g;->INSTANCE:Lcom/android/keyguard/-$$Lambda$xIhMye88jIGcS-bqz-hmZsvNo7g;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 2701
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected handleStartedWakingUp(I)V
    .locals 4

    .line 2706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyguardUpdateMonitor#handleStartedWakingUp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartedWakingUp start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    const/4 v0, 0x0

    const/16 v2, 0x68

    if-eq v2, p1, :cond_0

    .line 2711
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenSaverRunning:Z

    .line 2713
    :cond_0
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_SIDE:Z

    if-eqz v2, :cond_1

    .line 2714
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutSkipFPResponse:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2715
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    .line 2716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip FP response canceled by handleStartedWakingUp : wakeup reason = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardFingerPrint"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2719
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPossibleWakeup(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2720
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    .line 2730
    :cond_2
    sget-object p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ZEWY1erKQsIboEnhmnTQAWdljuA;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ZEWY1erKQsIboEnhmnTQAWdljuA;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    const-string p0, "handleStartedWakingUp end"

    .line 2733
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public handleUpdateBackgroundAuthToast(ZI)V
    .locals 1

    .line 7204
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$tOjoJzL1D0orlm7d-B97Zgt8lNY;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$tOjoJzL1D0orlm7d-B97Zgt8lNY;-><init>(ZI)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public hasLockscreenWallpaper()Z
    .locals 0

    .line 4315
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    return p0
.end method

.method public isAdminLock()Z
    .locals 0

    .line 7889
    const-class p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor;->isAdminLockEnabled()Z

    move-result p0

    return p0
.end method

.method public isAuthenticatedByWOF(Ljava/lang/String;I)Z
    .locals 2

    .line 5548
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_WOF:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5549
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5550
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintAuthenticated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "isAuthenticatedByWOF is true : already authenticated by fingerprint!"

    .line 5551
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5555
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLiftToWakeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5557
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5558
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemFaceAuthenticated(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "isAuthenticatedByWOF is true : already authenticated by face!"

    .line 5559
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string p0, "isAuthenticatedByWOF is false!"

    .line 5570
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isAuthenticatedWithBiometric(I)Z
    .locals 2

    .line 5535
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintAuthenticated(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5541
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemFaceAuthenticated(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isAutoWipe()Z
    .locals 2

    .line 7518
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFMMLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 7522
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMaximumFailedPasswordsForWipe:I

    if-lez v0, :cond_1

    goto :goto_0

    .line 7524
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAutoWipeEnable()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public isBiometricsOptionEnabledforMultiFactor()Z
    .locals 1

    .line 7894
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsIris:Z

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

.method public isCameraDisabledByPolicy()Z
    .locals 1

    .line 5838
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isFaceRecognitionDisabledByMdm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 5841
    :cond_0
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisableCamera:Z

    return p0
.end method

.method public isCoverClosed()Z
    .locals 1

    .line 3132
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_0

    .line 3133
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDeviceInteractive()Z
    .locals 0

    .line 5327
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    return p0
.end method

.method public isDeviceProvisioned()Z
    .locals 0

    .line 5060
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p0
.end method

.method public isDexMode()Z
    .locals 0

    .line 7631
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p0

    return p0
.end method

.method public isDismissActionExist()Z
    .locals 0

    .line 2918
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDismissActionExist:Z

    return p0
.end method

.method public isDreaming()Z
    .locals 0

    .line 1181
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    return p0
.end method

.method public isDynamicLockViewMode()Z
    .locals 0

    .line 3019
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDynamicLockViewMode:Z

    return p0
.end method

.method public isFMMLock()Z
    .locals 0

    .line 7881
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFMMLock:Z

    return p0
.end method

.method public isFaceDetectionRunning()Z
    .locals 1

    .line 1714
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFaceDisabled(I)Z
    .locals 2

    .line 1732
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    .line 1734
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFaceOptionEnabled()Z
    .locals 0

    .line 7906
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Z

    return p0
.end method

.method public isFaceRecognitionRunning()Z
    .locals 1

    .line 5815
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceRunningState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFingerprintDetectionRunning()Z
    .locals 1

    .line 1710
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFingerprintDisabled(I)Z
    .locals 2

    .line 1726
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_1

    .line 1728
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFingerprintDisabledWithBadQuality()Z
    .locals 1

    .line 5666
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerPrintBadQualityCounts()I

    move-result p0

    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFingerprintOptionEnabled()Z
    .locals 0

    .line 7898
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Z

    return p0
.end method

.method public isForcedLock()Z
    .locals 2

    .line 7809
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfDisabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "KeyguardUpdateMonitor"

    const-string v0, "Prevent the Biometric from unlocking because CC mode is disabled."

    .line 7810
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 7816
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFMMLock:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCarrierLock:Z

    if-nez v0, :cond_2

    .line 7819
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLockEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7820
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAdminLock()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isFullscreenBouncer()Z
    .locals 0

    .line 8250
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->checkFullscreenBouncerMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p0

    return p0
.end method

.method public isGoingToSleep()Z
    .locals 0

    .line 5331
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    return p0
.end method

.method public isIBOptionEnabled()Z
    .locals 0

    .line 7910
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsIB:Z

    return p0
.end method

.method public isIBRunning()Z
    .locals 1

    .line 6935
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIBRunningState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIccBlockedPermanently()Z
    .locals 1

    .line 7959
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 7960
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    .line 7959
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDisabledPermanently:Z

    .line 7961
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDisabledPermanently:Z

    return p0
.end method

.method public isInDisplayFingerprintMarginAccepted()Z
    .locals 2

    .line 5770
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_0

    .line 5772
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 5774
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->checkFullscreenBouncerMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 5775
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->semIsSmartViewDisplay(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIrisDisabled(I)Z
    .locals 2

    .line 1738
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p1

    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_1

    .line 1740
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIrisOptionEnabled()Z
    .locals 0

    .line 7902
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsIris:Z

    return p0
.end method

.method public isIrisRunning()Z
    .locals 1

    .line 6536
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisRunningState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIrisUnlockState()Z
    .locals 1

    .line 6318
    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIrisPossible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isKeyguardUnlocking()Z
    .locals 1

    .line 1142
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

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

.method public isKeyguardVisible()Z
    .locals 0

    .line 4641
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    return p0
.end method

.method public isKidsMode()Z
    .locals 0

    .line 1161
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsKidsModeRunning:Z

    return p0
.end method

.method public isKidsModeRunning()Z
    .locals 3

    .line 1146
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.kidshome"

    const-string v2, "com.sec.android.app.kidshome.apps.ui.AppsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1149
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 1150
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    .line 1151
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    .line 1152
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isLogoutEnabled()Z
    .locals 0

    .line 5376
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    return p0
.end method

.method public isMaxFailedBiometricUnlockAttempts(I)Z
    .locals 0

    .line 5693
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result p0

    const/16 p1, 0x32

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMaxFailedBiometricUnlockAttemptsShort()Z
    .locals 1

    .line 5689
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMaxFailedBiometricUnlockAttemptsShort(I)Z

    move-result p0

    return p0
.end method

.method public isMaxFailedBiometricUnlockAttemptsShort(I)Z
    .locals 0

    .line 5681
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 5685
    :cond_0
    rem-int/lit8 p0, p0, 0x5

    if-nez p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public isOutOfService()Z
    .locals 8

    .line 7235
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    .line 7241
    :goto_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v3, v5, :cond_5

    const/4 v5, 0x0

    .line 7243
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    if-eqz v6, :cond_1

    .line 7244
    array-length v7, v6

    if-lez v7, :cond_1

    .line 7245
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStatesScopeInvalid:Ljava/util/HashMap;

    aget v5, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/telephony/ServiceState;

    move v4, v2

    :cond_1
    if-eqz v5, :cond_4

    .line 7249
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v6

    if-eq v6, v1, :cond_2

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 7250
    :cond_2
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v6

    if-ne v6, v1, :cond_4

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move p0, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move p0, v1

    :goto_1
    if-eqz p0, :cond_7

    const-string v3, "ril.servicestate"

    .line 7258
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "0"

    .line 7259
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move p0, v2

    :cond_7
    if-eqz p0, :cond_8

    if-eqz v4, :cond_8

    .line 7266
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 7267
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    if-ne v2, v1, :cond_8

    .line 7268
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p0

    xor-int/2addr p0, v1

    :cond_8
    return p0
.end method

.method public isPerformingWipeOut()Z
    .locals 2

    .line 7549
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 7550
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    .line 7551
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSecFailedAttemptsBeforeWipe()I

    move-result p0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isPossibleToForceCancelIris()Z
    .locals 2

    .line 6557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPossibleToForceCancelIris ( mIsIrisReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mIsForceCancelIris = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsForceCancelIris:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mKeyguardUnlocking = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardIris"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6561
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisReady:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsForceCancelIris:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

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

.method isPossibleWakeup(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/16 v0, 0x67

    if-eq p1, v0, :cond_0

    const/16 v0, 0x70

    if-eq p1, v0, :cond_0

    const/16 v0, 0x71

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public isRemoteLock()Z
    .locals 1

    .line 7840
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFMMLock:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCarrierLock:Z

    if-nez v0, :cond_1

    .line 7841
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLockEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAdminLock()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isRemoteLockEnabled()Z
    .locals 0

    .line 7588
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveRemoteLockIndex:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isScreenOffMemoRunning()Z
    .locals 0

    .line 7290
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsRunningBlackMemo:Z

    return p0
.end method

.method public isScreenOn()Z
    .locals 0

    .line 1852
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    return p0
.end method

.method public isSecure()Z
    .locals 1

    .line 7851
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public isSecure(I)Z
    .locals 1

    .line 7855
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 7856
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    return p0

    .line 7861
    :cond_0
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPatternLock:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPasswordLock:Z

    if-nez p1, :cond_2

    .line 7863
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFMMLock:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDirectionLock:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCarrierLock:Z

    if-nez p1, :cond_2

    .line 7867
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLockEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7868
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAdminLock()Z

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

.method public isShowIrisErrorMsg(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    :cond_0
    :pswitch_0
    return p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isShowingFaceRetry()Z
    .locals 2

    .line 5819
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 5820
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTimerRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5821
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5822
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5823
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isShowingIBRetryButton()Z
    .locals 0

    .line 6939
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    const/4 p0, 0x0

    return p0
.end method

.method public isShowingIrisRetryButton()Z
    .locals 0

    .line 6540
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    const/4 p0, 0x0

    return p0
.end method

.method public isSimDisabledPermanently()Z
    .locals 0

    .line 7965
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDisabledPermanently:Z

    return p0
.end method

.method public isSimPinSecure()Z
    .locals 4

    const/4 v0, 0x0

    .line 5135
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 5136
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    .line 5137
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    return v0

    .line 5140
    :cond_1
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public isSimState(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 3

    const/4 v0, 0x0

    .line 5154
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 5155
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isSimpinSkip(I)Z
    .locals 0

    .line 5020
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mESimSkipped:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public isSwitchingUser()Z
    .locals 0

    .line 4930
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    return p0
.end method

.method public isTimerRunning()Z
    .locals 4

    .line 5831
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 5832
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 5833
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnlockCompleted()Z
    .locals 1

    .line 6569
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    .line 6571
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 6574
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result p0

    return p0
.end method

.method public isUnlockWithFacePossible(I)Z
    .locals 0

    .line 4129
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4130
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUnlockWithIBPossible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnlockWithIrisPossible(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnlockingWithBiometricAllowed()Z
    .locals 4

    .line 1800
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisabledBiometricBySecurityDialog:Z

    if-nez v0, :cond_0

    .line 1802
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    .line 1803
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1804
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnlockingWithBiometricsPossible(I)Z
    .locals 1

    .line 4105
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4106
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4107
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIrisPossible(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4108
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

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

.method public isUpdateSecurityMessage()Z
    .locals 4

    .line 5197
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 5199
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserInLockdown(I)Z
    .locals 0

    .line 1808
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserUnlocked()Z
    .locals 0

    .line 3042
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsUserUnlocked:Z

    return p0
.end method

.method public synthetic lambda$clearFailedUnlockAttempts$45$KeyguardUpdateMonitor(I)V
    .locals 1

    .line 5075
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearFailedUnlockAttempt(I)V

    .line 5076
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 5077
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearFailedFMMUnlockAttempt(I)V

    return-void
.end method

.method public synthetic lambda$handleDreamingStateChanged$24$KeyguardUpdateMonitor(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 2825
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDreamingStateChanged(Z)V

    return-void
.end method

.method public synthetic lambda$handleKeyguardStateUpdated$46$KeyguardUpdateMonitor(Landroid/os/Bundle;)V
    .locals 4

    .line 5446
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "showing"

    .line 5447
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "occluded"

    .line 5448
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "bouncerShowing"

    .line 5449
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "timeStamp"

    .line 5450
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcast intent= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$handlePhoneStateChanged$36$KeyguardUpdateMonitor(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4465
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    return-void
.end method

.method public synthetic lambda$new$20$KeyguardUpdateMonitor(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)V
    .locals 2

    .line 2222
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 2223
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x179

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 2224
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2225
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public synthetic lambda$new$47$KeyguardUpdateMonitor(Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;)V
    .locals 1

    .line 5460
    iget p1, p1, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->windowType:I

    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCocktailBarWindowType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 5463
    :cond_0
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5464
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 5467
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$75$KeyguardUpdateMonitor(Landroid/net/Uri;)V
    .locals 0

    .line 7664
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricsOptionState(I)V

    return-void
.end method

.method public synthetic lambda$new$76$KeyguardUpdateMonitor()V
    .locals 5

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Set wakelock : biometrics recognition is failed"

    .line 8027
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 8028
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPickedUp:Z

    .line 8029
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x7

    const-string v4, "LiftToWakeForBiometrics"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 8030
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->releaseWakeLock()V

    .line 8031
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setWakeLockTimeout()V

    return-void
.end method

.method public synthetic lambda$new$77$KeyguardUpdateMonitor()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "biometrics wakelock: TIMEOUT!!"

    .line 8035
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8036
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->releaseWakeLock()V

    return-void
.end method

.method public synthetic lambda$notifyFaceStateChanged$49$KeyguardUpdateMonitor(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 5804
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result p0

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method public synthetic lambda$notifyFingerprintRunningStateChanged$10$KeyguardUpdateMonitor(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1548
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result p0

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method public synthetic lambda$notifyIBRunningStateChanged$63$KeyguardUpdateMonitor(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 6925
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result p0

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->INTELLIGENT_SCAN:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method public synthetic lambda$requestSessionClose$68$KeyguardUpdateMonitor()V
    .locals 2

    .line 7078
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSessionClose() - isFingerprintDetectionRunning : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7080
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFingerPrint"

    .line 7079
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7081
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7082
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    goto :goto_0

    .line 7084
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    .line 7086
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 7087
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 7102
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7103
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7104
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    :cond_2
    const/4 v0, 0x0

    .line 7106
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSemFaceAuthenticated(Z)V

    .line 7107
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "KeyguardFace"

    const-string v1, "requestSessionClose()"

    .line 7109
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7110
    invoke-virtual {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->requestSessionClose()V

    :cond_3
    return-void
.end method

.method public synthetic lambda$requestSessionOpen$69$KeyguardUpdateMonitor()V
    .locals 2

    .line 7138
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_WOF:Z

    const-string v1, "requestSessionOpen()"

    if-eqz v0, :cond_0

    .line 7139
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v0, :cond_1

    .line 7141
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7142
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    const-string v0, "KeyguardFingerPrint"

    .line 7143
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7144
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->requestSessionOpen()Z

    .line 7148
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7149
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v0, :cond_2

    .line 7150
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7151
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "KeyguardFace"

    .line 7153
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7154
    invoke-virtual {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->requestSessionOpen()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$updateTelephonyCapable$40$KeyguardUpdateMonitor(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4540
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyCapable:Z

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTelephonyCapable(Z)V

    return-void
.end method

.method public needsSlowUnlockTransition()Z
    .locals 0

    .line 1813
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    return p0
.end method

.method public notifyFailedUnlockAttemptChanged()V
    .locals 1

    .line 1846
    sget-object v0, Lcom/android/keyguard/-$$Lambda$OP23z2cgfQNeldPxhIhtpJomXDs;->INSTANCE:Lcom/android/keyguard/-$$Lambda$OP23z2cgfQNeldPxhIhtpJomXDs;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifyFolderStateChanged(Z)V
    .locals 1

    .line 3025
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$bTIASLaZlwB8R1keWrDVFLXWk6g;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$bTIASLaZlwB8R1keWrDVFLXWk6g;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifyRemoteLockState()V
    .locals 1

    .line 8089
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLock()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/DesktopManager;->notifyRemoteLockState(Z)V

    return-void
.end method

.method public notifySimStateInitInfo()V
    .locals 6

    .line 8082
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8083
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 8084
    const-class v2, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/DesktopManager;

    iget v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v5, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v5

    iget v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinPassed(I)Z

    move-result v1

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/systemui/util/DesktopManager;->notifySimStateInitInfo(IIIZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAuthInterruptDetected(Z)V
    .locals 2

    .line 3514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthInterruptDetected("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3515
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthInterruptActive:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3518
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthInterruptActive:Z

    .line 3519
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method protected onFaceAuthenticated(I)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "KeyGuardUpdateMonitor#onFaceAuthenticated"

    .line 1555
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1556
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1558
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, p1, v1}, Landroid/app/trust/TrustManager;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    :cond_0
    const/4 v0, 0x0

    .line 1562
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 1564
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$DQL6NlNVFqwx31UnJx9cEFyyXD0;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$DQL6NlNVFqwx31UnJx9cEFyyXD0;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 1567
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x150

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p1, 0x0

    .line 1571
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    .line 1573
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onFaceRunningStateChanged(Z)V
    .locals 1

    const-string v0, "KeyguardFace"

    if-eqz p1, :cond_0

    const-string/jumbo p1, "updateFaceListeningState"

    .line 8129
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8130
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "stopListeningForFace"

    .line 8132
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 8133
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceRecognitionAuthenticationFailed(Z)V

    :goto_0
    return-void
.end method

.method protected onFingerprintAuthenticated(II)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "KeyGuardUpdateMonitor#onFingerPrintAuthenticated"

    .line 1199
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1200
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1202
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, p1, v1}, Landroid/app/trust/TrustManager;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    :cond_0
    const/4 v0, 0x0

    .line 1206
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 1208
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$nfSqWsPDHGA3N4qEAC6ZAouBsLU;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$nfSqWsPDHGA3N4qEAC6ZAouBsLU;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 1211
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x150

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x0

    .line 1215
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    .line 1219
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->launchSecureFolderIfNeeded(II)V

    .line 1223
    const-class p1, Lcom/android/systemui/KnoxStateMonitor;

    .line 1225
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p1}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "KeyguardFingerPrint"

    const-string p2, "onFingerprintAuthenticated ( stop all biometrics )"

    .line 1226
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    .line 1229
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onIBRunningStateChanged(Z)V
    .locals 1

    const-string v0, "Keyguard_IB"

    if-eqz p1, :cond_0

    const-string/jumbo p1, "updateIBListeningState"

    .line 8107
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8108
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIBListeningState()V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "stopListeningForIB"

    .line 8110
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 8111
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleIBAuthenticationFailed(Z)V

    :goto_0
    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 1

    const-string v0, "KeyguardIris"

    if-eqz p1, :cond_0

    const-string/jumbo p1, "updateIrisListeningState"

    .line 8118
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8119
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "stopIrisCamera"

    .line 8121
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 8122
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleIrisAuthenticationFailed(Z)V

    :goto_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(ZZZ)V
    .locals 3

    .line 4650
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 4652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardVisibilityChanged(v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", s="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", o="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    .line 4656
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 4657
    iput-boolean p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 4661
    new-instance p2, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$9WYUmz_q9dRMYhRNAyM1VM1pWVo;

    invoke-direct {p2, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$9WYUmz_q9dRMYhRNAyM1VM1pWVo;-><init>(Z)V

    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 4664
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez p1, :cond_0

    .line 4665
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setUnlockingKeyguard(Z)V

    .line 4668
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setShortcutPreviewShowing(Z)V

    .line 4669
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 4671
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    if-nez p1, :cond_1

    .line 4673
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    :cond_1
    return-void
.end method

.method public onLockIconPressed()V
    .locals 3

    const/4 v0, 0x1

    .line 3984
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockIconPressed:Z

    .line 3985
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3986
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method public onLockout()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "onLockout()"

    .line 8100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8101
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x16d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTrustChanged(ZII)V
    .locals 2

    .line 995
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 996
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 997
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1000
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$N498b3QvVGvC7wROo8xIMQeX8C8;

    invoke-direct {v1, p2, p1, p3}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$N498b3QvVGvC7wROo8xIMQeX8C8;-><init>(IZI)V

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    if-eq v0, p1, :cond_0

    .line 1009
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onTrustChanged() "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " to  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardUpdateMonitor"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    :cond_0
    return-void
.end method

.method public onTrustError(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1016
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchErrorMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .locals 1

    .line 1118
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 1119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1122
    new-instance p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$v3gOK9EDrWPafohHqT9ib-8L3QY;

    invoke-direct {p1, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$v3gOK9EDrWPafohHqT9ib-8L3QY;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 3

    .line 4895
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 4896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** register callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 4898
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4899
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 4900
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Called by"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p1, "Object tried to add another callback"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4905
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4906
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 4907
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public registerDesktopCallback()V
    .locals 1

    .line 8069
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    .line 8070
    invoke-virtual {v0, p0}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    return-void
.end method

.method public registerPreCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 3

    .line 4912
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 4913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** register pre-callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 4915
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPreCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4916
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPreCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 4917
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Called by"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p1, "Object tried to add another callback"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4922
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPreCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4923
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 4924
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 4

    .line 4860
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 4861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** unregister callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4865
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 4866
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 4867
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_3

    .line 4873
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPreCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_3

    .line 4874
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPreCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 4875
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPreCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public removeLiftToWakeRunnable()V
    .locals 2

    .line 8061
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLiftToWakeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 8062
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPickedUp:Z

    return-void
.end method

.method public reportEmergencyCallAction(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 5048
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x13e

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 5050
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 5051
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    :goto_0
    return-void
.end method

.method public reportFailedBiometricUnlockAttempt(ILjava/lang/String;)V
    .locals 9

    .line 5701
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 5702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportFailedBiometricUnlockAttempt ( failedBiometricUnlockAttempts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5703
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 5704
    iput-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutReason:Ljava/lang/String;

    const/4 p2, 0x2

    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    const-string v1, "reportFailedBiometricUnlockAttempt ( too many failed. )"

    .line 5706
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5707
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5708
    rem-int/lit8 v2, v0, 0x5

    if-nez v2, :cond_1

    .line 5709
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x7530

    invoke-virtual {v2, p1, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutBiometricAttemptDeadline(II)J

    .line 5711
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    .line 5712
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSecureLockState(I)V

    .line 5713
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    .line 5714
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10000000

    .line 5715
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5716
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v8, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v6, "KeyguardFingerPrint"

    const-string/jumbo v7, "setting Biometric lockout alarm !!"

    .line 5718
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5719
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v6, p2, v4, v5, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 5721
    sget-object v2, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$htNzRQUbVlz9fpo63avs50NKB_8;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$htNzRQUbVlz9fpo63avs50NKB_8;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 5724
    const-class v2, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/util/DesktopManager;->notifyBiometricLockoutChanged(ZI)V

    .line 5729
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    const-string v0, "MDF : reportFailedBiometricUnlockAttempt ( too many failures. )"

    .line 5730
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5731
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    :cond_2
    return-void
.end method

.method public reportFailedStrongAuthUnlockAttempt(I)V
    .locals 2

    .line 5110
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_0

    .line 5111
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->addFailedUnlockAttempt(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 5113
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    return-void
.end method

.method public reportSimSkipped(I)V
    .locals 3

    .line 5001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportSimSkipped(subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5002
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 5004
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mESimSkipped:[Z

    aput-boolean v1, v2, v0

    .line 5006
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method public reportSimUnlocked(I)V
    .locals 3

    .line 4989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportSimUnlocked(subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4990
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 4993
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimPinPassed:[Z

    aput-boolean v1, v2, v0

    .line 4996
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method public requestFaceAuth()V
    .locals 2

    const-string v0, "KeyguardFace"

    const-string v1, "requestFaceAuth()"

    .line 3527
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method public requestSessionClose()V
    .locals 2

    .line 7077
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$_I3stqEGrfKppUb6rP-48_jBXYY;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$_I3stqEGrfKppUb6rP-48_jBXYY;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public sendKeyguardBouncerChanged(Z)V
    .locals 2

    .line 4973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendKeyguardBouncerChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4974
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x142

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 4975
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 4976
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendKeyguardReset()V
    .locals 1

    .line 4966
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x138

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendKeyguardStateUpdated(ZZZ)V
    .locals 3

    .line 5411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendKeyguardStateUpdated("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5414
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 5415
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 5417
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x15a

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5418
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "out of date keyguard state msg removed"

    .line 5419
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5421
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "showing"

    .line 5422
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "occluded"

    .line 5423
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "bouncerShowing"

    .line 5424
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string/jumbo p3, "timeStamp"

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5426
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 5427
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method setAssistantVisible(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1863
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    .line 1864
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method public setDialogStateForFace(Z)V
    .locals 2

    .line 4231
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    if-eq v0, p1, :cond_0

    .line 4233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDialogStateForFace() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->addLogInDebugLogStore(Ljava/lang/String;)V

    .line 4235
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    .line 4237
    :cond_0
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4238
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    :cond_1
    return-void
.end method

.method public setDialogStateForInDisplayFingerprint(Z)V
    .locals 2

    .line 4218
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    if-eq v0, p1, :cond_0

    .line 4220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDialogStateForInDisplayFingerprint() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->addLogInDebugLogStore(Ljava/lang/String;)V

    .line 4222
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    .line 4224
    :cond_0
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz p1, :cond_2

    :cond_1
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_2

    .line 4225
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4226
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_2
    return-void
.end method

.method public setDisableBiometricBySecurityDialog(Z)V
    .locals 2

    .line 5615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisableBIOMETRICBySecurityDialog( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFingerPrint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5616
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisabledBiometricBySecurityDialog:Z

    return-void
.end method

.method public setDismissActionExist(Z)V
    .locals 0

    .line 2914
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDismissActionExist:Z

    return-void
.end method

.method public setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V
    .locals 0

    .line 2906
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    return-void
.end method

.method public setFocusForInDisplayFingerprint(Z)V
    .locals 2

    .line 4243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusForInDisplayFingerprint : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFingerPrint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4244
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasFocus:Z

    .line 4245
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4246
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_0
    return-void
.end method

.method public setHasLockscreenWallpaper(Z)V
    .locals 1

    .line 4302
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 4303
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    if-eq p1, v0, :cond_0

    .line 4304
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    .line 4306
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$--KxstTs0NRu1pfOjoVkcrgFDw0;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$--KxstTs0NRu1pfOjoVkcrgFDw0;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public setIBAuthenticated(Z)V
    .locals 3

    .line 6885
    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIBAuthenticated(I)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 6886
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIBAuthenticated:Landroid/util/SparseBooleanArray;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz p1, :cond_0

    .line 6888
    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6889
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->INTELLIGENT_SCAN:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v1, v2}, Landroid/app/trust/TrustManager;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    .line 6894
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6895
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIntelligentScanStayOnLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lock stay is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " by IntelligentScan"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Keyguard_IB"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6898
    sget-object p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$na3M2J_4jU5oH8EuSMdTeqH135Y;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$na3M2J_4jU5oH8EuSMdTeqH135Y;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public setIrisAuthenticated(Z)V
    .locals 3

    .line 6625
    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIrisAuthenticated(I)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 6626
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIrisAuthenticated:Landroid/util/SparseBooleanArray;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz p1, :cond_0

    .line 6628
    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6629
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v1, v2}, Landroid/app/trust/TrustManager;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    .line 6633
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6634
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisStayOnLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lockstay is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " by Iris"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardIris"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6638
    sget-object p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$yvVkUvzE78W_4jKcLTixU0uCH9c;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$yvVkUvzE78W_4jKcLTixU0uCH9c;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public setIrisForceCancel(Z)V
    .locals 0

    .line 6553
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsForceCancelIris:Z

    return-void
.end method

.method public setIrisUnlockFailedState(Z)V
    .locals 0

    .line 6495
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisUnlockFailed:Z

    return-void
.end method

.method public setIrisViewType(I)V
    .locals 1

    .line 6499
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->setIrisViewType(I)V

    :cond_0
    return-void
.end method

.method public setKeyguardGoingAway(Z)V
    .locals 2

    .line 1132
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-eq v0, p1, :cond_0

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeyguardGoingAway( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    .line 1136
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x172

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setLockNotificationClicked(Z)V
    .locals 2

    .line 5784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLockNotificationClicked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5785
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockNotificationClicked:Z

    return-void
.end method

.method public setPanelExpandingStarted(Z)V
    .locals 2

    .line 4252
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4256
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPanelExpandingStarted:Z

    if-eq v0, p1, :cond_1

    .line 4257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPanelExpandingStarted() mIsPanelExpandingStarted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPanelExpandingStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPanelExpandingStarted:Z

    .line 4259
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_1
    return-void
.end method

.method public setProximityGuidePopupState(Z)V
    .locals 0

    .line 7971
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsGuidePopupShowing:Z

    return-void
.end method

.method public setSemFaceAuthenticated(Z)V
    .locals 3

    .line 5855
    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemFaceAuthenticated(I)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 5856
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserSemFaceAuthenticated:Landroid/util/SparseBooleanArray;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz p1, :cond_0

    .line 5858
    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5859
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v1, v2}, Landroid/app/trust/TrustManager;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    .line 5863
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lock stay is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " by Face"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardFace"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5866
    sget-object p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$nPfTLNqf7fjKBV4hwzEjCSVt3f4;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$nPfTLNqf7fjKBV4hwzEjCSVt3f4;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public setShortcutPreviewShowing(Z)V
    .locals 2

    .line 7982
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7986
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShortcutPreviewShowing:Z

    if-eq v0, p1, :cond_1

    .line 7987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShortcutPreviewShowing() mIsShortcutPreviewShowing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShortcutPreviewShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7988
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShortcutPreviewShowing:Z

    .line 7989
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_1
    return-void
.end method

.method public setSimpinSkipped(IZ)V
    .locals 2

    .line 5011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimpinSkipped : slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " skipped =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 5013
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearESimSkipped()V

    goto :goto_0

    .line 5015
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mESimSkipped:[Z

    aput-boolean p2, p0, p1

    :goto_0
    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 1

    .line 4935
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    .line 4937
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUpdateBiometricListeningState:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4939
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x175

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setUnlockingKeyguard(Z)V
    .locals 2

    .line 5592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUnlockingKeyguard( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5593
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    .line 5594
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    const-string v0, "KeyguardFingerPrint"

    const-string v1, "semRemoveMaskView()"

    .line 5595
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5596
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->semRemoveMaskView(Landroid/os/IBinder;)I

    const/4 v0, 0x0

    .line 5597
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    :cond_0
    if-eqz p1, :cond_1

    .line 5600
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x173

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public setupLocked()V
    .locals 8

    const-string v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "setupLocked"

    .line 3359
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 3360
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemReady:Z

    .line 3362
    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 3363
    const-class v2, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/UiOffloadThread;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 3365
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKidsModeRunning()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsKidsModeRunning:Z

    .line 3368
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 3370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process.myUserHandle().getIdentifier() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSecureLockState(I)V

    .line 3372
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricsOptionState(I)V

    const-string v3, "RemoteException! "

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 3376
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureLockChangedCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v5, v6, v4}, Lcom/android/internal/widget/ILockSettings;->setLockModeChangedCallback(Landroid/os/IRemoteCallback;Z)V

    .line 3377
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLockModeChangedCallback, userID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 3379
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsCallbackForUPSM:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsValueListForPSM:[Landroid/net/Uri;

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 3387
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 3392
    const-class v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplay:Landroid/view/Display;

    .line 3393
    const-class v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v5, v6}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 3396
    sget-boolean v5, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v5, :cond_1

    .line 3397
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mOneHandModeSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v1, v1, [Landroid/net/Uri;

    const-string v7, "any_screen_running"

    .line 3398
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v1, v4

    .line 3397
    invoke-virtual {v5, v6, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 3402
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/sensor/PickupController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/sensor/PickupController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/sensor/PickupController;->start()V

    .line 3403
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$16;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorListener:Lcom/android/systemui/sensor/SensorController$SensorListener;

    .line 3427
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/sensor/PickupController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/sensor/PickupController;

    move-result-object v1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorListener:Lcom/android/systemui/sensor/SensorController$SensorListener;

    invoke-virtual {v1, v4}, Lcom/android/systemui/sensor/PickupController;->registerListener(Lcom/android/systemui/sensor/SensorController$SensorListener;)V

    .line 3431
    const-class v1, Lcom/android/systemui/util/DebugLogStore;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DebugLogStore;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDebugLogStore:Lcom/android/systemui/util/DebugLogStore;

    if-nez v2, :cond_2

    .line 3437
    :try_start_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShellCommandCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v1, p0}, Lcom/android/internal/widget/ILockSettings;->setShellCommandCallback(Landroid/os/IRemoteCallback;)V

    const-string/jumbo p0, "setUnlockTestCallback"

    .line 3438
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 3440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public shouldBlockStatusBar()Z
    .locals 2

    .line 7826
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIM_PERM_DISABLED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 7827
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimDisabledPermanently()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 7831
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFMMLock:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCarrierLock:Z

    if-nez v0, :cond_2

    .line 7832
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLockEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAdminLock()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public showAlwaysOnNotification()V
    .locals 3

    .line 1442
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_WOF:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_SIDE:Z

    if-eqz v0, :cond_0

    .line 1443
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShownWofNotification()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KeyguardFingerPrint"

    const-string v1, "Unlocked by side fp sensor! It will be shown notification."

    .line 1446
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowAlwaysOnNotification:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1448
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->setShownWofNotification(I)V

    :cond_0
    return-void
.end method

.method public stopIrisCamera()V
    .locals 3

    .line 6259
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 6260
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPossibleToForceCancelIris()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KeyguardIris"

    const-string/jumbo v2, "stop Iris "

    .line 6261
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6262
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 6263
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIrisCancelSignal:Landroid/os/CancellationSignal;

    const/4 v0, 0x0

    .line 6264
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisReady:Z

    .line 6265
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisForceCancel(Z)V

    .line 6266
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisRunningState(I)V

    const/4 v0, -0x7

    const-string v1, ""

    .line 6267
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleIrisAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public stopListeningForFace()V
    .locals 3

    .line 4189
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceRunningState:I

    const-string v1, "KeyguardFace"

    if-nez v0, :cond_1

    .line 4190
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Z

    if-eqz v0, :cond_0

    .line 4191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t stop stopListeningForFace(), mSemFaceRunningState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceRunningState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "stopListeningForFace()"

    .line 4194
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4195
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_2

    .line 4197
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 4198
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    :cond_2
    const/4 v0, 0x0

    .line 4200
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceReady:Z

    .line 4201
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    return-void
.end method

.method public stopListeningForFingerprint()V
    .locals 4

    const-string v0, "KeyguardFingerPrint"

    const-string/jumbo v1, "stopListeningForFingerprint()"

    .line 4154
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 4157
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsNeedToUpdateFpInDisplayState:Z

    .line 4159
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_1

    .line 4161
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v1, 0x0

    .line 4162
    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 4167
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 4168
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_SIDE:Z

    if-eqz v1, :cond_2

    .line 4169
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutSkipFPResponse:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4170
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    const-string/jumbo p0, "skip FP response canceled by stopListeningForFingerprint"

    .line 4171
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public stopListeningForIB()V
    .locals 3

    .line 6875
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIBCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    const-string v1, "Keyguard_IB"

    const-string/jumbo v2, "stopListeningForIB()"

    .line 6877
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6878
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 6879
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIBCancelSignal:Landroid/os/CancellationSignal;

    const/4 v0, 0x0

    .line 6880
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIBRunningState(I)V

    :cond_0
    return-void
.end method

.method public updateAllBiometricsListeningState()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "updateAllBiometricsListeningState()"

    .line 5626
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5627
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Z

    if-eqz v0, :cond_0

    .line 5628
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 5630
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Z

    if-eqz v0, :cond_1

    .line 5631
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    :cond_1
    return-void
.end method

.method public updateBiometricsOptionState(I)V
    .locals 8

    .line 7747
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricType()I

    move-result v0

    .line 7748
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 7749
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x10

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 7750
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v6, 0x100

    invoke-virtual {v5, v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-ne v5, v2, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    .line 7751
    :goto_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v7, 0x1000

    invoke-virtual {v6, v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    if-ne v6, v2, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    .line 7752
    :goto_3
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricType:I

    if-ne v3, v0, :cond_4

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Z

    if-ne v3, v1, :cond_4

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsIris:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Z

    if-ne v3, v5, :cond_4

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsIB:Z

    if-eq v3, v2, :cond_5

    .line 7753
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateBiometricsOptionState() userId "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", BT:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricType:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", FP:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", IR:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsIris:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", FC:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", IB:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsIB:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7760
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricType:I

    .line 7761
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Z

    .line 7762
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsIris:Z

    .line 7763
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Z

    .line 7764
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsIB:Z

    const-string v0, "KeyguardUpdateMonitor"

    .line 7766
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7768
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->addLogInDebugLogStore(Ljava/lang/String;)V

    .line 7771
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyLockModeChanged()V

    :cond_5
    return-void
.end method

.method public updateCarrierTextInfo()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "updateCarrierTextInfo"

    .line 8257
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8260
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8261
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8264
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateFaceListeningState()V
    .locals 1

    .line 3533
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3534
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFace()V

    goto :goto_0

    .line 3536
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    :goto_0
    return-void
.end method

.method public updateFingerprintListeningState()V
    .locals 6

    .line 3463
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x150

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3466
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3467
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint()Z

    move-result v0

    .line 3468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFingerprintListeningState#mFingerprintRunningState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " shouldListenForFingerprint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardFingerPrint"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    .line 3475
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    if-eqz v0, :cond_3

    const-string v0, "semRemoveMaskView()"

    .line 3479
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->semRemoveMaskView(Landroid/os/IBinder;)I

    const/4 v0, 0x0

    .line 3481
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    .line 3483
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    goto/16 :goto_2

    :cond_4
    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 3486
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    if-nez v0, :cond_5

    .line 3489
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "semAddMaskView()"

    .line 3491
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semAddMaskView()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    .line 3495
    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFingerprint()V

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 3497
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 3498
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-eqz v0, :cond_8

    :cond_7
    move v3, v4

    .line 3499
    :cond_8
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpInDisplayState:I

    if-eq v0, v3, :cond_9

    .line 3500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFpInDisplayState is changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpInDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    iput v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpInDisplayState:I

    .line 3502
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpInDisplayState:I

    invoke-virtual {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager;->semSetScreenStatus(I)I

    :cond_9
    :goto_2
    return-void
.end method

.method public updateIBListeningState()V
    .locals 1

    .line 6666
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForIB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6667
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForIB()V

    goto :goto_0

    .line 6669
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    :goto_0
    return-void
.end method

.method public updateIrisListeningState()V
    .locals 1

    const/4 v0, 0x0

    .line 6023
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState(Z)V

    return-void
.end method

.method public updateIrisListeningState(Z)V
    .locals 1

    .line 6027
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForIris()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6028
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForIris(Z)V

    goto :goto_0

    .line 6030
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    :goto_0
    return-void
.end method

.method public updateRemoteLockInfo(Lcom/android/internal/widget/RemoteLockInfo;)V
    .locals 3

    const/4 v0, 0x0

    .line 7567
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7568
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RemoteLockInfo;

    iget v1, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    iget v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    if-ne v1, v2, :cond_0

    .line 7569
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7572
    :cond_1
    iget-boolean v0, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    if-eqz v0, :cond_2

    .line 7573
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7575
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateActiveRemoteLockIndex()V

    .line 7576
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x15c

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateSIPShownState(Z)V
    .locals 2

    .line 3086
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSIPShown:Z

    if-eq v0, p1, :cond_0

    .line 3087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSIPShownState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSIPShown:Z

    .line 3089
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3090
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_0
    return-void
.end method

.method public updateSecureLockState(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 7695
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    .line 7696
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v3

    .line 7697
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v4

    .line 7698
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockDirectionEnabled(I)Z

    move-result v5

    .line 7699
    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled(I)Z

    move-result v6

    .line 7700
    iget-object v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v7

    .line 7701
    iget-object v8, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v8

    .line 7702
    iget-object v9, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v9

    .line 7703
    iget-object v11, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptTimeout(I)J

    move-result-wide v11

    .line 7704
    iget-object v13, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v13, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v13

    .line 7705
    iget-object v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-wide/from16 v16, v13

    invoke-virtual {v15, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptTimeout(I)J

    move-result-wide v13

    .line 7707
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPatternLock:Z

    if-ne v15, v2, :cond_0

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPasswordLock:Z

    if-ne v15, v3, :cond_0

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFMMLock:Z

    if-ne v15, v4, :cond_0

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDirectionLock:Z

    if-ne v15, v5, :cond_0

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCarrierLock:Z

    if-ne v15, v6, :cond_0

    iget v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActivePasswordQuality:I

    if-ne v7, v15, :cond_0

    iget v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStoredPasswordQuality:I

    if-ne v8, v15, :cond_0

    move v15, v7

    move/from16 v18, v8

    iget-wide v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutAttemptDeadline:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    iget-wide v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutAttemptTimeout:J

    cmp-long v7, v7, v11

    if-nez v7, :cond_1

    iget-wide v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutBiometricAttemptDeadline:J

    cmp-long v7, v7, v16

    if-nez v7, :cond_1

    iget-wide v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutBiometricAttemptTimeout:J

    cmp-long v7, v7, v13

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_0
    move v15, v7

    move/from16 v18, v8

    .line 7712
    :cond_1
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateSecureLockState() userId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", PT:"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPatternLock:Z

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", PS:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPasswordLock:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", FM:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFMMLock:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", DR:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDirectionLock:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", CR:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCarrierLock:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", AP:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActivePasswordQuality:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v15

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", SP:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStoredPasswordQuality:I

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v18

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", AD:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v15, v5

    move/from16 v19, v6

    iget-wide v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutAttemptDeadline:J

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", AT:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutAttemptTimeout:J

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", BD:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutBiometricAttemptDeadline:J

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v16

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move/from16 p1, v15

    const-string v15, ", BT:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutBiometricAttemptTimeout:J

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7724
    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPatternLock:Z

    .line 7725
    iput-boolean v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPasswordLock:Z

    .line 7726
    iput-boolean v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFMMLock:Z

    move/from16 v2, p1

    .line 7727
    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDirectionLock:Z

    move/from16 v2, v19

    .line 7728
    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCarrierLock:Z

    .line 7729
    iput v8, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActivePasswordQuality:I

    move/from16 v2, v18

    .line 7730
    iput v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStoredPasswordQuality:I

    .line 7731
    iput-wide v9, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutAttemptDeadline:J

    .line 7732
    iput-wide v11, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutAttemptTimeout:J

    move-wide/from16 v2, v16

    .line 7733
    iput-wide v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutBiometricAttemptDeadline:J

    .line 7734
    iput-wide v13, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutBiometricAttemptTimeout:J

    .line 7736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSecure="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardUpdateMonitor"

    .line 7738
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7740
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->addLogInDebugLogStore(Ljava/lang/String;)V

    .line 7742
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyLockModeChanged()V

    :cond_2
    return-void
.end method

.method public updateSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 3

    .line 7619
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7620
    :goto_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSecured:Z

    if-eq v1, v0, :cond_1

    .line 7621
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSecured:Z

    .line 7622
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x164

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSecured:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7624
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, p1, :cond_2

    .line 7625
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 7626
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x165

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method updateTelephonyCapable(Z)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4535
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyCapable:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 4538
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyCapable:Z

    .line 4540
    new-instance p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$1vgoDPseQy9aEMLEMyuwwcLBWzs;

    invoke-direct {p1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$1vgoDPseQy9aEMLEMyuwwcLBWzs;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateUserUnlockNotification()V
    .locals 6

    .line 3046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateUserUnlockNotification(), isUserUnlocked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 3048
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNotificationManager:Landroid/app/NotificationManager;

    .line 3051
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsUserUnlocked:Z

    const/16 v1, 0x3e9

    if-nez v0, :cond_1

    .line 3052
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 3053
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_fbe_notification_header:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3054
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 3055
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->kg_fbe_notification_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3057
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->createChannels()V

    .line 3058
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v5, "fbe_channel_id"

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x1080a24

    .line 3060
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 3061
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 3062
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3063
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3064
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 3065
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 3067
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void
.end method
