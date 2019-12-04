.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$asgTAs2Gw44kdQoMA4YvBnNJvc8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$asgTAs2Gw44kdQoMA4YvBnNJvc8;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$asgTAs2Gw44kdQoMA4YvBnNJvc8;->f$0:I

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleIrisAuthenticationSucceeded$58(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
