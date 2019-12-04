.class public Lcom/android/systemui/popup/util/PopupUIUtilFactory;
.super Ljava/lang/Object;
.source "PopupUIUtilFactory.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

.field private mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field private mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

.field private mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

.field private mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

.field private mUtils:Lcom/android/systemui/popup/util/PopupUIUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDisplayManagerWrapper()Lcom/android/systemui/popup/util/DisplayManagerWrapper;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/util/DisplayManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    return-object p0
.end method

.method public getIntentWrapper()Lcom/android/systemui/popup/util/PopupUIIntentWrapper;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    iget-object v1, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    return-object p0
.end method

.method public getKeyguardUpdateMonitorWrapper()Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    iget-object v1, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    return-object p0
.end method

.method public getLogWrapper()Lcom/android/systemui/popup/util/PopupUILogWrapper;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/android/systemui/popup/util/PopupUILogWrapper;

    invoke-direct {v0}, Lcom/android/systemui/popup/util/PopupUILogWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    return-object p0
.end method

.method public getToastWrapper()Lcom/android/systemui/popup/util/PopupUIToastWrapper;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    iget-object v1, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/util/PopupUIToastWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    return-object p0
.end method

.method public getUtils()Lcom/android/systemui/popup/util/PopupUIUtil;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mUtils:Lcom/android/systemui/popup/util/PopupUIUtil;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/android/systemui/popup/util/PopupUIUtil;

    invoke-direct {v0}, Lcom/android/systemui/popup/util/PopupUIUtil;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mUtils:Lcom/android/systemui/popup/util/PopupUIUtil;

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mUtils:Lcom/android/systemui/popup/util/PopupUIUtil;

    return-object p0
.end method
