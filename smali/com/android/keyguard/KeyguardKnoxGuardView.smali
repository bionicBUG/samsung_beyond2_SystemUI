.class public Lcom/android/keyguard/KeyguardKnoxGuardView;
.super Lcom/android/keyguard/KeyguardSecAbsKeyInputView;
.source "KeyguardKnoxGuardView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static isTimerRunning:Z = false

.field private static numberOfAttemptsDone:I


# instance fields
.field private mBottomContainer:Landroid/widget/LinearLayout;

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private mCheckPasswordCallback:Landroid/os/IRemoteCallback;

.field private mCompanyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mDataButton:Lcom/android/systemui/widget/SystemUIButton;

.field private final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private mEmailContainer:Landroid/widget/RelativeLayout;

.field private mEmailHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mEmailSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private final mHandler:Landroid/os/Handler;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mPhoneContainer:Landroid/widget/RelativeLayout;

.field private mPhoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mPhoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mPinEditText:Landroid/widget/EditText;

.field private mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

.field private mSkipPin:Z

.field private mTopContainer:Landroid/widget/LinearLayout;

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWifiButton:Lcom/android/systemui/widget/SystemUIButton;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 102
    iput-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 103
    iput-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 104
    iput-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mSkipPin:Z

    .line 110
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardView$1;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 125
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardView$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardView$2;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mHandler:Landroid/os/Handler;

    .line 145
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardView$3;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mCheckPasswordCallback:Landroid/os/IRemoteCallback;

    .line 155
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 156
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 157
    const-class p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 158
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 159
    new-instance p1, Lcom/android/keyguard/KeyguardKnoxGuardView$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardView$4;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;Landroid/os/Handler;)V

    .line 172
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 175
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/android/keyguard/KeyguardKnoxGuardView$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardKnoxGuardView$5;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    .line 191
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardKnoxGuardView;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setKnoxGuardInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/os/Handler;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/widget/EditText;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1100()I
    .locals 1

    .line 73
    sget v0, Lcom/android/keyguard/KeyguardKnoxGuardView;->numberOfAttemptsDone:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUITextView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    return-object p0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0

    .line 73
    sput-boolean p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->isTimerRunning:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardKnoxGuardView;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->checkUnlockAttempts(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardKnoxGuardView;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPinErrorMessage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUIButton;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mDataButton:Lcom/android/systemui/widget/SystemUIButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUIButton;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mWifiButton:Lcom/android/systemui/widget/SystemUIButton;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mTopContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mBottomContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUITextView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mCompanyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    return-object p0
.end method

.method private static charSequenceToByteArray(Ljava/lang/CharSequence;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 579
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 580
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 581
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private checkUnlockAttempts(I)V
    .locals 7

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkUnlockAttempts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardKnoxGuardView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 437
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 441
    :try_start_0
    new-instance p1, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    const/4 v3, 0x3

    invoke-direct {p1, v3, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    invoke-virtual {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object p1

    .line 442
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-interface {v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed CIS LOCK clear!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 447
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    goto :goto_1

    .line 449
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    if-lez v1, :cond_2

    iget-wide v3, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    if-lez p1, :cond_2

    .line 453
    rem-int v0, p1, v1

    if-nez v0, :cond_2

    .line 454
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    .line 455
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setRemoteLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 456
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setFailedUnlockAttemptCount(II)I

    move-result p1

    sput p1, Lcom/android/keyguard/KeyguardKnoxGuardView;->numberOfAttemptsDone:I

    .line 457
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->handleAttemptLockout(J)V

    return-void

    .line 461
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->updateErrorMessage()V

    :goto_1
    return-void
.end method

.method private getFailedUnlockAttemptCount(I)I
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 553
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v1, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "remotelockscreen.failedunlockcount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    .line 513
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 512
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 515
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object p0
.end method

.method private getLong(Ljava/lang/String;JI)J
    .locals 0

    .line 558
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p2
.end method

.method private getRemoteLockoutAttemptDeadline(I)J
    .locals 8

    .line 527
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 529
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v1, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setLong(Ljava/lang/String;JI)V

    return-wide v2

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v2, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v6, v2

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 536
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v4, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v2, v4

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setLong(Ljava/lang/String;JI)V

    return-wide v2

    :cond_2
    return-wide v4
.end method

.method private resetPinErrorMessage()V
    .locals 1

    .line 688
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    sget-boolean v0, Lcom/android/keyguard/KeyguardKnoxGuardView;->isTimerRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void
.end method

.method private setDisplayCutout()V
    .locals 4

    .line 669
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_3

    .line 670
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 671
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050400

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 670
    invoke-static {v0, v1}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result v0

    .line 672
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_3

    if-lez v0, :cond_1

    .line 676
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 677
    :goto_0
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 679
    :cond_1
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 680
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->status_bar_padding_end:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 682
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method private setFailedUnlockAttemptCount(II)I
    .locals 3

    .line 544
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 546
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v1, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "remotelockscreen.failedunlockcount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setLong(Ljava/lang/String;JI)V

    return p2
.end method

.method private setKnoxGuardInfo()V
    .locals 10

    const-string v0, "KeyguardKnoxGuardView"

    const-string v1, "setKnoxGuardInfo"

    .line 320
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemoteLockInfo()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 322
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v1, :cond_0

    const-string p0, "mRemoteLockInfo is null"

    .line 323
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 328
    :cond_0
    iget-object v1, v1, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 329
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "mRemoteLockInfo.clientName is empty"

    .line 331
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "mRemoteLockInfo.clientName is null"

    .line 335
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    .line 338
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mCompanyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_3

    .line 339
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    .line 343
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 345
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v3, :cond_5

    .line 346
    new-instance v4, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v4}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 347
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const-string v2, "mRemoteLockInfo.message is null"

    .line 351
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v2, :cond_7

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPhoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPhoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v6, :cond_7

    .line 355
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 357
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPhoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 359
    :cond_6
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPhoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 360
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPhoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v7, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/systemui/R$string;->kg_remote_lock_accessibility_call:I

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v1, v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPhoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPhoneContainer:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$UK3ms7mk6zokHe-oGYWDja6QwXg;

    invoke-direct {v7, p0, v2}, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$UK3ms7mk6zokHe-oGYWDja6QwXg;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 376
    :cond_7
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPhoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v2, "mRemoteLockInfo.phoneNumber is null"

    .line 377
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    if-eqz v2, :cond_9

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mEmailSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mEmailHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v6, :cond_9

    .line 381
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 383
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mEmailContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 385
    :cond_8
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mEmailContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 386
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mEmailHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->kg_remote_lock_accessibility_email:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mEmailSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mEmailContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$_uEhGoNFhiz5yACcyTF7fLLT6vU;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$_uEhGoNFhiz5yACcyTF7fLLT6vU;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 399
    :cond_9
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mEmailContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v1, "mRemoteLockInfo.emailAddress is null"

    .line 400
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-boolean v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mSkipPin:Z

    .line 404
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->updateLayout()V

    return-void
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 0

    .line 566
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 568
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t write long "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardKnoxGuardView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setRemoteLockoutAttemptDeadline(I)J
    .locals 4

    .line 519
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 521
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v0, v2

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v3, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setLong(Ljava/lang/String;JI)V

    return-wide v0
.end method

.method private updateErrorMessage()V
    .locals 4

    .line 707
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getWrongPasswordStringId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 709
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 710
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardView$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardView$8;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateLayout()V
    .locals 2

    .line 692
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mSkipPin:Z

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 694
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_0

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 698
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPinErrorMessage()V

    :goto_0
    return-void
.end method

.method private updateNetworkSettingsButton()V
    .locals 7

    .line 719
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 720
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v1

    .line 721
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v2

    .line 722
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isNoSimState()Z

    move-result v3

    .line 723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNetworkSettingsButton wifi : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",  mobileData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",  wifiOnly : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",  noSimState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KeyguardKnoxGuardView"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mWifiButton:Lcom/android/systemui/widget/SystemUIButton;

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    invoke-virtual {v4, v0}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    .line 728
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mDataButton:Lcom/android/systemui/widget/SystemUIButton;

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :cond_2
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected getPasswordText()[B
    .locals 0

    .line 588
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method protected getPasswordTextViewId()I
    .locals 0

    .line 301
    sget p0, Lcom/android/systemui/R$id;->keyguard_knox_guard_pin_view:I

    return p0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWrongPasswordStringId()I
    .locals 0

    .line 306
    sget-boolean p0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz p0, :cond_0

    .line 307
    sget p0, Lcom/android/systemui/R$string;->kg_remote_lock_incorrect_pin:I

    return p0

    .line 309
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->kg_wrong_pin:I

    return p0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryEnabled(Z)V

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAttemptLockout() elapsedRealtimeDeadline: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardKnoxGuardView"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 470
    sput-boolean v2, Lcom/android/keyguard/KeyguardKnoxGuardView;->isTimerRunning:Z

    .line 471
    new-instance v2, Lcom/android/keyguard/KeyguardKnoxGuardView$7;

    sub-long v5, p1, v0

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/keyguard/KeyguardKnoxGuardView$7;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;JJ)V

    .line 507
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public synthetic lambda$onFinishInflate$0$KeyguardKnoxGuardView(Landroid/view/View;)V
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->onUserInput()V

    .line 221
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public synthetic lambda$onFinishInflate$1$KeyguardKnoxGuardView(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 225
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p3, 0x42

    if-eq p1, p3, :cond_1

    :cond_0
    const/4 p1, 0x6

    if-ne p2, p1, :cond_2

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->verifyPasswordAndUnlock()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$onFinishInflate$2$KeyguardKnoxGuardView(Landroid/view/View;)V
    .locals 1

    const-string p1, "KeyguardKnoxGuardView"

    const-string v0, "mWifiButton OnClick"

    .line 233
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method public synthetic lambda$onFinishInflate$3$KeyguardKnoxGuardView(Landroid/view/View;)V
    .locals 1

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDataButton OnClick SimState : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isNoSimState()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardKnoxGuardView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isNoSimState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->kg_knox_guard_no_sim_card_toast:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 241
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$setKnoxGuardInfo$4$KeyguardKnoxGuardView(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    const-string p2, "KeyguardKnoxGuardView"

    .line 363
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPinErrorMessage()V

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "tel"

    const/4 v2, 0x0

    .line 365
    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 366
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string p1, "click call button"

    .line 368
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find the component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$setKnoxGuardInfo$5$KeyguardKnoxGuardView(Landroid/view/View;)V
    .locals 2

    .line 389
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPinErrorMessage()V

    .line 390
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.kgclient.intent.action.SEND_FEEDBACK"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.kgclient"

    const-string v1, "com.samsung.android.kgclient.receiver.KGIntentReceiver"

    .line 391
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 392
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 393
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 395
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    return-void
.end method

.method public needsInput()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const-string v0, "KeyguardKnoxGuardView"

    const-string v1, "onApplyWindowInsets"

    .line 660
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 662
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 663
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setDisplayCutout()V

    .line 665
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 197
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onFinishInflate()V

    .line 199
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 201
    sget v0, Lcom/android/systemui/R$id;->keyguard_knox_guard_company_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mCompanyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 202
    sget v0, Lcom/android/systemui/R$id;->keyguard_knox_guard_lock_message:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 203
    sget v0, Lcom/android/systemui/R$id;->keyguard_knox_guard_pin_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    .line 204
    sget v0, Lcom/android/systemui/R$id;->keyguard_knox_pin_message:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 205
    sget v0, Lcom/android/systemui/R$id;->keyguard_wifi_on_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mWifiButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 206
    sget v0, Lcom/android/systemui/R$id;->keyguard_data_on_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mDataButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 207
    sget v0, Lcom/android/systemui/R$id;->phone_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPhoneContainer:Landroid/widget/RelativeLayout;

    .line 208
    sget v0, Lcom/android/systemui/R$id;->phone_image:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    .line 209
    sget v1, Lcom/android/systemui/R$id;->phone_header:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPhoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 210
    sget v1, Lcom/android/systemui/R$id;->phone_sub_text:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPhoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 211
    sget v1, Lcom/android/systemui/R$id;->email_container:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mEmailContainer:Landroid/widget/RelativeLayout;

    .line 212
    sget v1, Lcom/android/systemui/R$id;->email_image:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIImageView;

    .line 213
    sget v2, Lcom/android/systemui/R$id;->email_header:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mEmailHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 214
    sget v2, Lcom/android/systemui/R$id;->email_sub_text:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mEmailSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 215
    sget v2, Lcom/android/systemui/R$id;->carrier_text:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/CarrierText;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 216
    sget v2, Lcom/android/systemui/R$id;->top_container:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mTopContainer:Landroid/widget/LinearLayout;

    .line 217
    sget v2, Lcom/android/systemui/R$id;->bottom_container:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mBottomContainer:Landroid/widget/LinearLayout;

    .line 219
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$s-HrPrBZZuCBFFegK6Y88sMLa6s;

    invoke-direct {v3, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$s-HrPrBZZuCBFFegK6Y88sMLa6s;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$antCb7x_lOMOwQtb3mkGd_EyqGU;

    invoke-direct {v3, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$antCb7x_lOMOwQtb3mkGd_EyqGU;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 231
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->updateNetworkSettingsButton()V

    .line 232
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mWifiButton:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$8OJECpCujgRSQzrHPUpjNOlLEf8;

    invoke-direct {v3, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$8OJECpCujgRSQzrHPUpjNOlLEf8;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mDataButton:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$VRrJ_SvcyEoEBdUj0xM4sASZLqQ;

    invoke-direct {v3, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$VRrJ_SvcyEoEBdUj0xM4sASZLqQ;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    sget v2, Lcom/android/systemui/R$drawable;->kc_ic_call:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    sget v0, Lcom/android/systemui/R$drawable;->kc_ic_email:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPinErrorMessage()V

    .line 249
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setKnoxGuardInfo()V

    .line 250
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardView$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardView$6;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 316
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onPause()V

    return-void
.end method

.method protected onUserInput()V
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 653
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPinErrorMessage()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 287
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPinErrorMessage()V

    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 0

    .line 603
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected resetState()V
    .locals 4

    .line 291
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getRemoteLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 293
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getFailedUnlockAttemptCount(I)I

    move-result v2

    sput v2, Lcom/android/keyguard/KeyguardKnoxGuardView;->numberOfAttemptsDone:I

    .line 294
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->handleAttemptLockout(J)V

    :cond_0
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 0

    .line 598
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 0

    .line 593
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setClickable(Z)V

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 7

    const-string v0, "KeyguardKnoxGuardView"

    const-string/jumbo v1, "verifyPasswordAndUnlock()"

    .line 408
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getPasswordText()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 410
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    .line 411
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPinErrorMessage()V

    .line 413
    array-length v3, v1

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-gt v3, v4, :cond_1

    .line 416
    array-length v0, v1

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getWrongPasswordStringId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 420
    :cond_0
    invoke-virtual {p0, v5, v5}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPasswordText(ZZ)V

    .line 421
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    return-void

    .line 426
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    .line 427
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mCheckPasswordCallback:Landroid/os/IRemoteCallback;

    .line 426
    invoke-interface {v2, v4, v1, v3, v6}, Lcom/android/internal/widget/ILockSettings;->checkRemoteLockPassword(I[BILandroid/os/IRemoteCallback;)V

    .line 428
    invoke-virtual {p0, v5, v5}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPasswordText(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Can\'t connect KNOX_GUARD"

    .line 430
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
