.class public Lcom/android/keyguard/KeyguardUCMPinView;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputView;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;,
        Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;,
        Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;,
        Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;
    }
.end annotation


# static fields
.field private static sVendorName:Ljava/lang/String;

.field private static final syncObj:Ljava/lang/Object;

.field private static unlockOngoing:Z


# instance fields
.field private mAgentID:Ljava/lang/String;

.field private mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

.field private mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

.field private mError:I

.field private mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

.field private mMISCInfo:Ljava/lang/String;

.field private mPinMaxLength:I

.field private mPinMinLength:I

.field private mPinText:Ljava/lang/String;

.field private mPukMaxLength:I

.field private mPukMinLength:I

.field private mPukSupported:Z

.field private mPukText:Ljava/lang/String;

.field private mRemainingAttempts:I

.field private final mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

.field private mStatus:I

.field private mUCMAgent:Landroid/widget/TextView;

.field private mUCMMiscTagValue:Landroid/widget/TextView;

.field private mUnlockProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->syncObj:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 69
    sput-boolean v0, Lcom/android/keyguard/KeyguardUCMPinView;->unlockOngoing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardUCMPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 55
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    const/4 p2, 0x0

    .line 56
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukSupported:Z

    .line 57
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mMISCInfo:Ljava/lang/String;

    .line 58
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    .line 59
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMinLength:I

    .line 60
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMaxLength:I

    .line 61
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMinLength:I

    .line 62
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMaxLength:I

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    .line 64
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mError:I

    .line 65
    new-instance p2, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    invoke-direct {p2, p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$1;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    .line 77
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->checkUCMKeyguardStatus()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/keyguard/KeyguardUCMPinView;->sVendorName:Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getVendorID()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardUCMPinView;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->startProgress(Z)V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/android/keyguard/KeyguardUCMPinView;->unlockOngoing:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    .line 43
    sput-boolean p0, Lcom/android/keyguard/KeyguardUCMPinView;->unlockOngoing:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;)Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    return-object p1
.end method

.method static synthetic access$1200(I)Landroid/os/Bundle;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->generatePassword(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->verifyPUK(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;)Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/app/ProgressDialog;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/keyguard/KeyguardUCMPinView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->getErrorMessage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->setmessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardUCMPinView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    return p0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMMiscTagValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardUCMPinView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    return p0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->getRemainingCount(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardUCMPinView;[BI)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->checkPassword([BI)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardUCMPinView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukSupported:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mMISCInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardUCMPinView;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->checkPuk()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardUCMPinView;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->checkPin()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardUCMPinView;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->confirmPin()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/android/keyguard/KeyguardUCMPinView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->verifyPUKAndUnlock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardUCMPinView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mError:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardUCMPinView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->stopProgress()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardUCMPinView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getAgentInfoAndUpdateStatus()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->syncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;)Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;)[I
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->verifyPIN(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method private checkPassword([BI)V
    .locals 2

    .line 930
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 931
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$ofnQEdZXbqYx85rGBNmVZnfh7J0;

    invoke-direct {v1, p0, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$ofnQEdZXbqYx85rGBNmVZnfh7J0;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;I)V

    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;[BILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method private checkPin()Z
    .locals 1

    .line 678
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getPasswordTextByString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinText:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method private checkPuk()Z
    .locals 1

    .line 663
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getPasswordTextByString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukText:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method private checkUCMKeyguardStatus()Ljava/lang/String;
    .locals 2

    const-string p0, "com.samsung.ucs.ucsservice"

    .line 198
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "KeyguardUCMPinView"

    const-string v1, "failed to get UCM service"

    .line 201
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 205
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 206
    invoke-interface {p0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 208
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    const-string v1, ""

    .line 211
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "none"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method private confirmPin()Z
    .locals 2

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "confirmPin called"

    .line 683
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getPasswordTextByString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static generatePassword(I)Landroid/os/Bundle;
    .locals 3

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "generatePassword called"

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/16 v2, 0x83

    if-eq p0, v2, :cond_0

    const-string p0, "Do not need to get password"

    .line 220
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string p0, "com.samsung.ucs.ucsservice"

    .line 223
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 227
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->generateKeyguardPassword(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 229
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p0, "mUcmBinder == null"

    .line 232
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method private declared-synchronized getAgentInfoAndUpdateStatus()V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardUCMPinView"

    const-string v1, "getAgentInfoAndUpdateStatus called"

    .line 342
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.ucs.ucsservice"

    .line 343
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "failed to get UCM service"

    .line 345
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    .line 349
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "failed to get getStatus"

    .line 352
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v3, "errorresponse"

    const/4 v4, 0x0

    .line 356
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v5, 0xe

    if-ne v3, v5, :cond_4

    const-string v3, "KeyguardUCMPinView"

    const-string v6, "Boot init condition"

    .line 358
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-interface {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->updateAgentList()V

    move-object v3, v2

    move v2, v4

    :goto_0
    const/16 v6, 0xa

    if-ge v2, v6, :cond_5

    .line 361
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v6, "errorresponse"

    .line 363
    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "KeyguardUCMPinView"

    const-string v7, "UcmAgentService.ERROR_NO_PLUGIN_AGENT_FOUND error"

    .line 367
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v6, 0x3e8

    .line 374
    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 376
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string v0, "KeyguardUCMPinView"

    const-string v1, "failed to get getStatus"

    .line 369
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 370
    monitor-exit p0

    return-void

    :cond_4
    move-object v3, v2

    :cond_5
    :goto_1
    :try_start_5
    const-string/jumbo v0, "state"

    const/4 v1, -0x1

    .line 382
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const-string v0, "miscInfo"

    const-string v1, ""

    .line 383
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mMISCInfo:Ljava/lang/String;

    const-string v0, "minPinLength"

    .line 384
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMinLength:I

    const-string v0, "maxPinLength"

    .line 385
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMaxLength:I

    const-string v0, "minPukLength"

    .line 386
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMinLength:I

    const-string v0, "maxPukLength"

    .line 387
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMaxLength:I

    const-string v0, "remainCnt"

    .line 388
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    const-string v0, "errorresponse"

    .line 389
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mError:I

    const-string v0, "KeyguardUCMPinView"

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KeyguardUCMPinView"

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pin puk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KeyguardUCMPinView"

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "misc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mMISCInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KeyguardUCMPinView"

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pin remain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KeyguardUCMPinView"

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mError:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 396
    :try_start_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 398
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getCSUri()Ljava/lang/String;
    .locals 3

    .line 192
    sget-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->sVendorName:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCSUri returns : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardUCMPinView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getErrorMessage(I)Ljava/lang/String;
    .locals 7

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "0x%08X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    const/high16 v6, 0x8000000

    if-ge v6, p1, :cond_0

    const/high16 v6, 0x8010000

    if-le v6, p1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 1035
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/keyguard/R$string;->kg_ucm_smartcard_error:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1038
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/keyguard/R$string;->kg_ucm_unknown_error:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1032
    :sswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/keyguard/R$string;->kg_ucm_smartcard_error:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1030
    :pswitch_0
    :sswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/keyguard/R$string;->kg_ucm_communication_error:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1003
    :pswitch_1
    :sswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/keyguard/R$string;->kg_ucm_internal_error:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_2
        0x1fff -> :sswitch_2
        0x1000100 -> :sswitch_1
        0x1000200 -> :sswitch_1
        0x1000300 -> :sswitch_1
        0x1000400 -> :sswitch_1
        0x2000201 -> :sswitch_1
        0x8000000 -> :sswitch_0
        0x9000000 -> :sswitch_2
        0xc000100 -> :sswitch_2
        0xc000200 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x2000101
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2000301
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2000401
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2000501
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3000000
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getRemainingCount(I)Ljava/lang/String;
    .locals 4

    .line 925
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/keyguard/R$plurals;->kg_attempt_left:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStatusAndShowingDialog()V
    .locals 2

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "getStatusAndShowingDialog"

    .line 571
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    sget-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    if-nez v1, :cond_0

    .line 575
    new-instance v1, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    .line 576
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 578
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 2

    const-string p0, "com.samsung.ucs.ucsservice"

    .line 117
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-nez p0, :cond_0

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "failed to get UCM service"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method private getUnlockProgressDialog(Z)Landroid/app/Dialog;
    .locals 2

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "getUnlockProgressDialog called"

    .line 552
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 554
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    .line 556
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 557
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_ucm_loading:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 559
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 560
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_ucm_unlocking:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 562
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 563
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 564
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Window;

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 567
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move-object p0, p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method private getVendorID()V
    .locals 4

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "getVendorID() called"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.ucs.ucsservice"

    .line 96
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "failed to get UCM service"

    .line 98
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "failed to get agentInfo"

    .line 105
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "id"

    const-string v3, ""

    .line 108
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    const-string v2, "isPUKSupported"

    const/4 v3, 0x0

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukSupported:Z

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAgentID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPukSupported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukSupported:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 112
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setmessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-nez v0, :cond_0

    .line 1044
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 1046
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz p0, :cond_1

    .line 1048
    invoke-interface {p0, p1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private startProgress(Z)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    .line 83
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    return-void
.end method

.method private stopProgress()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    return-void
.end method

.method private verifyPIN(Ljava/lang/String;)[I
    .locals 6

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPIN called"

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 239
    fill-array-data v1, :array_0

    const-string v2, "com.samsung.ucs.ucsservice"

    .line 244
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "failed to get UCM service"

    .line 246
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 250
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, p1, v4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v2, "state"

    const/4 v3, -0x1

    .line 251
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const-string v2, "remainCnt"

    .line 252
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    const-string v2, "errorresponse"

    .line 253
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remainCnt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const/16 v3, 0x83

    if-ne v2, v3, :cond_1

    const-string v2, "PIN verification succeed"

    .line 259
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "PIN verification failed"

    .line 261
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_0
    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    aput v0, v1, v5

    const/4 v0, 0x1

    .line 265
    iget p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    aput p0, v1, v0

    const/4 p0, 0x2

    aput p1, v1, p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 270
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private verifyPINAndUnlock(Ljava/lang/String;)V
    .locals 2

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPINAndUnlock called"

    .line 611
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 624
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 625
    sput-boolean v0, Lcom/android/keyguard/KeyguardUCMPinView;->unlockOngoing:Z

    const/4 v0, 0x0

    .line 626
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 627
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    if-nez v0, :cond_0

    .line 628
    new-instance v0, Lcom/android/keyguard/KeyguardUCMPinView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView$1;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    .line 648
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private verifyPUK(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPUK called"

    .line 280
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 281
    fill-array-data v1, :array_0

    .line 287
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_4

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v2, "com.samsung.ucs.ucsservice"

    .line 295
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "failed to get UCM service"

    .line 297
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput v5, v1, v4

    return-object v1

    .line 310
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-interface {v2, v3, p1, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "state"

    .line 312
    invoke-virtual {p1, p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const-string p2, "remainCnt"

    .line 313
    invoke-virtual {p1, p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    const-string p2, "errorresponse"

    .line 314
    invoke-virtual {p1, p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 315
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remainCnt : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget p2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const/16 v2, 0x83

    if-eq p2, v2, :cond_3

    const/16 v2, 0x84

    if-eq p2, v2, :cond_2

    const-string p2, "PUK verification failed : BLOCKED"

    .line 327
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p2, "PUK verification succeed : LOCKED"

    .line 321
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p2, "PUK verification succeed : UNLOCKED"

    .line 324
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_0
    iget p2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    aput p2, v1, v4

    const/4 p2, 0x1

    .line 332
    iget p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    aput p0, v1, p2

    const/4 p0, 0x2

    aput p1, v1, p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 336
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-object v1

    :cond_4
    :goto_2
    aput v5, v1, v4

    return-object v1

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private verifyPUKAndUnlock()V
    .locals 3

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPUKAndUnlock called"

    .line 895
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 896
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 897
    sput-boolean v0, Lcom/android/keyguard/KeyguardUCMPinView;->unlockOngoing:Z

    const/4 v0, 0x0

    .line 898
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 899
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    if-nez v0, :cond_0

    .line 900
    new-instance v0, Lcom/android/keyguard/KeyguardUCMPinView$2;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinText:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardUCMPinView$2;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    .line 919
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 0

    .line 149
    sget p0, Lcom/android/keyguard/R$id;->ucmPinEntry:I

    return p0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getSecurityViewId()I
    .locals 0

    .line 1054
    sget p0, Lcom/android/keyguard/R$id;->keyguard_ucm_pin_view:I

    return p0
.end method

.method public synthetic lambda$checkPassword$0$KeyguardUCMPinView(IZI)V
    .locals 1

    const/4 v0, 0x0

    .line 939
    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v0, 0x1

    .line 940
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->onPasswordChecked(IZIZ)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 167
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onDetachedFromWindow()V

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "onDetachedFromWindow called"

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 154
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onFinishInflate()V

    .line 155
    sget v0, Lcom/android/keyguard/R$id;->ucm_misctag:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMMiscTagValue:Landroid/widget/TextView;

    .line 156
    sget v0, Lcom/android/keyguard/R$id;->ucm_csname:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishInflate() called : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUCMPinView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 159
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 2

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPasswordChecked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "KeyguardUCMPinView"

    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 948
    iget-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p2, p1, p4, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 949
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0, p4, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_0

    .line 951
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/keyguard/R$string;->kg_ucm_password_not_matching:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->setmessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "onPause called"

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 184
    sput-boolean v0, Lcom/android/keyguard/KeyguardUCMPinView;->unlockOngoing:Z

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 2

    .line 125
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetState()V

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "resetState called"

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getVendorID()V

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getStatusAndShowingDialog()V

    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startAppearAnimation()V
    .locals 1

    const-string p0, "KeyguardUCMPinView"

    const-string/jumbo v0, "startAppearAnimation called"

    .line 879
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 0

    const-string p0, "KeyguardUCMPinView"

    const-string/jumbo p1, "startDisappearAnimation called"

    .line 885
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPasswordAndUnlock override called"

    .line 583
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getPasswordTextByString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 590
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 593
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->getState()I

    move-result v2

    const/4 v3, -0x1

    const-string/jumbo v4, "unknown status nothings to do"

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    .line 605
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 599
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->verifyPUKAndUpdateUI()V

    goto :goto_0

    .line 596
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUCMPinView;->verifyPINAndUnlock(Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_1
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
