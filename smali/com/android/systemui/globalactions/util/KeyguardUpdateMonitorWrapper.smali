.class public Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorWrapper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;->mContext:Landroid/content/Context;

    .line 13
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public setDialogStateForInDisplayFingerprint(Z)V
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDialogStateForInDisplayFingerprint(Z)V

    return-void
.end method
