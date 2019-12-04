.class Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;
.super Ljava/lang/Object;
.source "KeyguardDirectionLockView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountIndex:I

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method private next()V
    .locals 10

    .line 886
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3702(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3700(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    goto :goto_0

    .line 898
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    aget-object v4, v1, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    .line 899
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object v7, p0

    .line 898
    invoke-virtual/range {v3 .. v9}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "KeyguardDirectionLock"

    const-string v1, "AccountManagerFuture() run: "

    .line 910
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 913
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v2, "intent"

    .line 914
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 915
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1, v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3702(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p1, "AuthenticatorException occurred"

    .line 926
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p1, "IOException occurred"

    .line 923
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p1, "OperationCanceledException occurred"

    .line 920
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    :cond_0
    :goto_0
    iget p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    .line 929
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->next()V

    return-void

    .line 928
    :goto_1
    iget v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    .line 929
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->next()V

    throw p1
.end method
