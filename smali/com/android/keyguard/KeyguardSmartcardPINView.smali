.class public Lcom/android/keyguard/KeyguardSmartcardPINView;
.super Lcom/android/keyguard/KeyguardSecPINView;
.source "KeyguardSmartcardPINView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;
    }
.end annotation


# static fields
.field private static mCurrent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardSmartcardPINView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mEntry:Ljava/lang/String;

.field private mSmartcardAuthProgress:Z

.field private mVerifyPasswordWithCACTask:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSmartcardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "KeyguardSmartcardPINView"

    .line 53
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 54
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    const/4 p2, 0x0

    .line 55
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KeyguardSmartcardPINView "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/android/keyguard/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardSmartcardPINView;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSmartcardPINView;ZLjava/lang/String;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSmartcardPINView;->verifyPasswordAndUnlock(ZLjava/lang/String;I)V

    return-void
.end method

.method private verifyPasswordAndUnlock(ZLjava/lang/String;I)V
    .locals 4

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyPasswordAndUnlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardSmartcardPINView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyPasswordAndUnlock : KeygueardSmartcardPINView object"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 252
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v3, :cond_0

    .line 253
    invoke-virtual {v3, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo p1, "verifyPasswordAndUnlock: with mPendingLockCheck"

    .line 257
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance p3, Lcom/android/keyguard/-$$Lambda$KeyguardSmartcardPINView$baQDf47X5p7NMEHPwV9P-mTxuHc;

    invoke-direct {p3, p0, v1}, Lcom/android/keyguard/-$$Lambda$KeyguardSmartcardPINView$baQDf47X5p7NMEHPwV9P-mTxuHc;-><init>(Lcom/android/keyguard/KeyguardSmartcardPINView;I)V

    invoke-static {p1, p2, v1, p3}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x3

    if-le p1, p2, :cond_2

    sget p1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_invalid_pin:I

    if-ne p3, p1, :cond_2

    const/4 p1, 0x1

    .line 266
    invoke-virtual {p0, v1, v0, p3, p1}, Lcom/android/keyguard/KeyguardSmartcardPINView;->onPasswordChecked(IZIZ)V

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {p0, v1, v0, p3, v0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->onPasswordChecked(IZIZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 0

    .line 105
    sget p0, Lcom/android/keyguard/R$id;->pinEntry:I

    return p0
.end method

.method protected getSecurityViewId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWrongPasswordStringId()I
    .locals 0

    .line 126
    sget-boolean p0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz p0, :cond_0

    .line 127
    sget p0, Lcom/android/keyguard/R$string;->kg_incorrect_pin:I

    return p0

    .line 129
    :cond_0
    sget p0, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    return p0
.end method

.method public synthetic lambda$verifyPasswordAndUnlock$0$KeyguardSmartcardPINView(IZI)V
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChecked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSmartcardPINView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v0, 0x1

    .line 263
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->onPasswordChecked(IZIZ)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const-string v0, "KeyguardSmartcardPINView"

    const-string v1, "onFinishInflate "

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPINView;->onFinishInflate()V

    .line 116
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_check_pin:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setPasswordEntryEnabled(Z)V

    .line 121
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 3

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPasswordChecked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSmartcardPINView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 277
    iget-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p2, p1, v2, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 278
    iget-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p2, v2, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_2

    .line 282
    iget-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p2, p1, v0, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 283
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result p2

    .line 285
    rem-int/lit8 p3, p2, 0x5

    if-nez p3, :cond_1

    .line 286
    iget-object p3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p1

    .line 287
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->handleAttemptLockout(J)V

    .line 289
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->getWrongPasswordStringId()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_0

    .line 291
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {p1, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    .line 294
    :goto_0
    invoke-virtual {p0, v2, v2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    const-string/jumbo p1, "verifyPasswordAndUnlock before setText to empty"

    .line 295
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 296
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    .line 297
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getKeepScreenOn()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 3

    const-string v0, "KeyguardSmartcardPINView"

    const-string v1, "onPause "

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 82
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mVerifyPasswordWithCACTask:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method

.method public onResume(I)V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume mSmartcardAuthProgress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSmartcardPINView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-eqz v0, :cond_0

    const-string p1, "onResume if loop. mSmartcardAuthProgress : true"

    .line 94
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v0, Lcom/android/keyguard/R$string;->lockscreen_smartcard_check_pin:I

    invoke-interface {p1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setPasswordEntryEnabled(Z)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onResume(I)V

    .line 99
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget p1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_instruction:I

    invoke-interface {p0, p1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    :goto_0
    return-void
.end method

.method protected resetState()V
    .locals 2

    const-string v0, "KeyguardSmartcardPINView"

    const-string v1, "resetState "

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    :cond_0
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 3

    const-string v0, "KeyguardSmartcardPINView"

    const-string/jumbo v1, "verifyPasswordAndUnlock: "

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getPasswordTextByString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "Using Smartcard(CAC) authentication: "

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;-><init>(Lcom/android/keyguard/KeyguardSmartcardPINView;Lcom/android/keyguard/KeyguardSmartcardPINView$1;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mVerifyPasswordWithCACTask:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mVerifyPasswordWithCACTask:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
