.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$v7dC-Xfb0DUlZflCRjkVEaJTVNU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$v7dC-Xfb0DUlZflCRjkVEaJTVNU;->f$0:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$v7dC-Xfb0DUlZflCRjkVEaJTVNU;->f$0:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleSecurityViewChanged$74(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
