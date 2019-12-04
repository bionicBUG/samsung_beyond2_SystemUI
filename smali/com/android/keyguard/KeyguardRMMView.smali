.class public Lcom/android/keyguard/KeyguardRMMView;
.super Lcom/android/keyguard/KeyguardSecPINView;
.source "KeyguardRMMView.java"


# instance fields
.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private final mCheckPasswordCallback:Landroid/os/IRemoteCallback;

.field private mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

.field private mClientContact:Lcom/android/systemui/widget/SystemUITextView;

.field private mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

.field private mClientName:Ljava/lang/String;

.field private mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

.field private mContactArea:Landroid/view/ViewGroup;

.field private mCurrentOrientation:I

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private final mHandler:Landroid/os/Handler;

.field private mIsVoiceCapacity:Z

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mMessageArea:Landroid/widget/LinearLayout;

.field private mMessageAreaSpace:Landroid/view/View;

.field private mPhoneNumber:Ljava/lang/String;

.field private mRMMContainer:Landroid/view/ViewGroup;

.field private mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardRMMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 69
    iput-object p2, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 70
    iput-object p2, p0, Lcom/android/keyguard/KeyguardRMMView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mIsVoiceCapacity:Z

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    .line 81
    iput-object p2, p0, Lcom/android/keyguard/KeyguardRMMView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 87
    new-instance p2, Lcom/android/keyguard/KeyguardRMMView$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/android/keyguard/KeyguardRMMView$1;-><init>(Lcom/android/keyguard/KeyguardRMMView;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardRMMView;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance p2, Lcom/android/keyguard/KeyguardRMMView$2;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardRMMView$2;-><init>(Lcom/android/keyguard/KeyguardRMMView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardRMMView;->mCheckPasswordCallback:Landroid/os/IRemoteCallback;

    .line 113
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 114
    new-instance p1, Lcom/android/keyguard/KeyguardRMMView$3;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardRMMView$3;-><init>(Lcom/android/keyguard/KeyguardRMMView;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardRMMView;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardRMMView;->checkUnlockAttempts(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardRMMView;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardRMMView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->setRMMInfo()V

    return-void
.end method

.method private checkUnlockAttempts(I)V
    .locals 6

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkUnlockAttempts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardRMMView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 281
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    if-nez p1, :cond_1

    .line 285
    :try_start_0
    new-instance p1, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    invoke-virtual {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object p1

    .line 286
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-interface {v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed CIS LOCK clear!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 291
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    goto :goto_1

    .line 293
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    if-lez v1, :cond_2

    iget-wide v2, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    if-lez p1, :cond_2

    .line 297
    rem-int/2addr p1, v1

    if-nez p1, :cond_2

    .line 298
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardRMMView;->setRemoteLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 299
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardRMMView;->handleAttemptLockout(J)V

    return-void

    .line 303
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getWrongPasswordStringId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    .line 304
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {p0}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    :goto_1
    return-void
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    .line 338
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 337
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 340
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object p0
.end method

.method private getLong(Ljava/lang/String;JI)J
    .locals 0

    .line 370
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

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

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 354
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v1, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/keyguard/KeyguardRMMView;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/keyguard/KeyguardRMMView;->setLong(Ljava/lang/String;JI)V

    return-wide v2

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v2, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v6, v2

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 361
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v4, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v2, v4

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/keyguard/KeyguardRMMView;->setLong(Ljava/lang/String;JI)V

    return-wide v2

    :cond_2
    return-wide v4
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 0

    .line 378
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 380
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t write long "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardRMMView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setRMMInfo()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemoteLockInfo()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    const-string v1, "KeyguardRMMView"

    if-nez v0, :cond_0

    const-string p0, "mRemoteLockInfo is null"

    .line 207
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 210
    :cond_0
    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 211
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\r\\n|\\r|\\n"

    const-string v3, " "

    .line 212
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_2

    .line 214
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, "mRemoteLockInfo.message is null"

    .line 216
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 219
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientName:Ljava/lang/String;

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 221
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mPhoneNumber:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_5

    .line 223
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const-string v0, "mRemoteLockInfo.phoneNumber is null"

    .line 225
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    if-eqz v0, :cond_7

    .line 229
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mIsVoiceCapacity:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardRMMView$yDHUfr7tEIcwMQRPInPlRk4u_io;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardRMMView$yDHUfr7tEIcwMQRPInPlRk4u_io;-><init>(Lcom/android/keyguard/KeyguardRMMView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 245
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    goto :goto_2

    .line 247
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 248
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method private setRemoteLockoutAttemptDeadline(I)J
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 346
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v0, v2

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v3, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/keyguard/KeyguardRMMView;->setLong(Ljava/lang/String;JI)V

    return-wide v0
.end method

.method private updateLayout()V
    .locals 9

    .line 385
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageArea:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mRMMContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mContactArea:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v3, :cond_1

    .line 388
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 389
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 390
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 391
    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 393
    iget-object v6, p0, Lcom/android/keyguard/KeyguardRMMView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 394
    sget v6, Lcom/android/keyguard/R$dimen;->kg_dex_message_area_padding_side:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 395
    sget v6, Lcom/android/keyguard/R$dimen;->kg_dex_message_area_padding_side:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 396
    sget v6, Lcom/android/keyguard/R$dimen;->kg_dex_fmm_contact_area_side_margin:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 397
    sget v6, Lcom/android/keyguard/R$dimen;->kg_dex_fmm_contact_area_side_margin:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 398
    iget-object v6, p0, Lcom/android/keyguard/KeyguardRMMView;->mRMMContainer:Landroid/view/ViewGroup;

    sget v7, Lcom/android/keyguard/R$dimen;->kg_dex_fmm_container_top_bottom:I

    .line 399
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcom/android/keyguard/R$dimen;->kg_dex_fmm_container_padding_bottom:I

    .line 400
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 398
    invoke-virtual {v6, v2, v7, v2, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 401
    sget v6, Lcom/android/keyguard/R$dimen;->kg_dex_fmm_title_margin_bottom:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 402
    sget v6, Lcom/android/keyguard/R$dimen;->kg_dex_fmm_message_margin_bottom:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 404
    :cond_0
    sget v6, Lcom/android/keyguard/R$dimen;->kg_fmm_message_area_margin_side:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 405
    sget v6, Lcom/android/keyguard/R$dimen;->kg_fmm_message_area_margin_side:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 406
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 407
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 408
    sget v6, Lcom/android/keyguard/R$dimen;->kg_fmm_title_margin_bottom:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 409
    sget v6, Lcom/android/keyguard/R$dimen;->kg_fmm_message_margin_bottom:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 410
    iget-object v6, p0, Lcom/android/keyguard/KeyguardRMMView;->mRMMContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 412
    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    :cond_1
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mContactArea:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageAreaSpace:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v3, :cond_4

    .line 420
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 421
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 422
    iget v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 423
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 424
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageAreaSpace:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, -0x1

    .line 425
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 427
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 428
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageAreaSpace:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, -0x2

    .line 429
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 430
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 431
    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 432
    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    sget v5, Lcom/android/keyguard/R$dimen;->kg_fmm_owner_message_max_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 435
    sget v4, Lcom/android/keyguard/R$dimen;->kg_fmm_owner_phone_num_end_margin:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 436
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_8

    .line 441
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 442
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050400

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 441
    invoke-static {v0, v1}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result v0

    .line 443
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_8

    if-lez v0, :cond_6

    .line 447
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_2

    :cond_5
    move v3, v0

    .line 448
    :goto_2
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_7

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3

    .line 450
    :cond_6
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 451
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/keyguard/R$dimen;->status_bar_padding_end:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 453
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0, v3, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 0

    .line 192
    sget p0, Lcom/android/keyguard/R$id;->rmmEntry:I

    return p0
.end method

.method protected getSecurityViewId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWrongPasswordStringId()I
    .locals 0

    .line 197
    sget-boolean p0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz p0, :cond_0

    .line 198
    sget p0, Lcom/android/keyguard/R$string;->kg_incorrect_pin:I

    return p0

    .line 200
    :cond_0
    sget p0, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    return p0
.end method

.method protected handleAttemptLockout(J)V
    .locals 10

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setPasswordEntryEnabled(Z)V

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAttemptLockout() elapsedRealtimeDeadline: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardRMMView"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v2, Lcom/android/keyguard/KeyguardRMMView$4;

    sub-long v6, p1, v0

    const-wide/16 v8, 0x3e8

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/keyguard/KeyguardRMMView$4;-><init>(Lcom/android/keyguard/KeyguardRMMView;JJ)V

    .line 332
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public synthetic lambda$onFinishInflate$0$KeyguardRMMView(Landroid/view/View;)V
    .locals 0

    .line 148
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 149
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->verifyPasswordAndUnlock()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setRMMInfo$1$KeyguardRMMView(Landroid/view/View;)V
    .locals 4

    const-string p1, "KeyguardRMMView"

    .line 234
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mPhoneNumber:Ljava/lang/String;

    const-string/jumbo v2, "tel"

    const/4 v3, 0x0

    .line 235
    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string v1, "click call button"

    .line 238
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find the component "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const-string v0, "KeyguardRMMView"

    const-string v1, "onApplyWindowInsets"

    .line 460
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 462
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 463
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->updateLayout()V

    .line 465
    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 167
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 168
    iget v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    .line 169
    iput p1, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    .line 170
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->updateLayout()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 124
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mIsVoiceCapacity:Z

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 126
    sget v0, Lcom/android/keyguard/R$id;->keyguard_rmm_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

    .line 127
    sget v0, Lcom/android/keyguard/R$id;->keyguard_rmm_message:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 128
    sget v0, Lcom/android/keyguard/R$id;->keyguard_rmm_contact_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    .line 129
    sget v0, Lcom/android/keyguard/R$id;->keyguard_rmm_contact_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 130
    sget v0, Lcom/android/keyguard/R$id;->keyguard_rmm_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRMMContainer:Landroid/view/ViewGroup;

    .line 131
    sget v0, Lcom/android/keyguard/R$id;->rmm_contact_area:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mContactArea:Landroid/view/ViewGroup;

    .line 132
    sget v0, Lcom/android/keyguard/R$id;->rmm_message_area:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageArea:Landroid/widget/LinearLayout;

    .line 133
    sget v0, Lcom/android/keyguard/R$id;->rmm_message_area_space:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageAreaSpace:Landroid/view/View;

    .line 134
    sget v0, Lcom/android/keyguard/R$id;->carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 136
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPINView;->onFinishInflate()V

    .line 138
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->setRMMInfo()V

    .line 139
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    .line 140
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->updateLayout()V

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 145
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardRMMView$HWRoB2n8ohOHl0qKja9Okmqa7KY;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardRMMView$HWRoB2n8ohOHl0qKja9Okmqa7KY;-><init>(Lcom/android/keyguard/KeyguardRMMView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 159
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 158
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 162
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_rmm_lock_instructions:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientName:Ljava/lang/String;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 161
    invoke-interface {p1, p0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected resetState()V
    .locals 5

    .line 175
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPINView;->resetState()V

    .line 176
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardRMMView;->getRemoteLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 179
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardRMMView;->handleAttemptLockout(J)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 182
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_rmm_lock_instructions:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientName:Ljava/lang/String;

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 181
    invoke-interface {v0, p0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 186
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x10402de

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-interface {v0, p0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 6

    const-string v0, "KeyguardRMMView"

    const-string/jumbo v1, "verifyPasswordAndUnlock()"

    .line 254
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getPasswordText()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 256
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 258
    array-length v3, v1

    const/4 v4, 0x3

    if-gt v3, v4, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getWrongPasswordStringId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    const/4 v0, 0x1

    .line 263
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    .line 264
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 265
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    return-void

    .line 270
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    const/4 v4, 0x2

    .line 271
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMView;->mCheckPasswordCallback:Landroid/os/IRemoteCallback;

    .line 270
    invoke-interface {v3, v4, v1, v5, p0}, Lcom/android/internal/widget/ILockSettings;->checkRemoteLockPassword(I[BILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Can\'t connect RMM_LOCK"

    .line 273
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_0
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method
