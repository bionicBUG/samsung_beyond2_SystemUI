.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$IeajXDqqb9BzDLFPwHLioz2TRuw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:I

.field private final synthetic f$2:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method public synthetic constructor <init>(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$IeajXDqqb9BzDLFPwHLioz2TRuw;->f$0:I

    iput p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$IeajXDqqb9BzDLFPwHLioz2TRuw;->f$1:I

    iput-object p3, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$IeajXDqqb9BzDLFPwHLioz2TRuw;->f$2:Lcom/android/internal/telephony/IccCardConstants$State;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$IeajXDqqb9BzDLFPwHLioz2TRuw;->f$0:I

    iget v1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$IeajXDqqb9BzDLFPwHLioz2TRuw;->f$1:I

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$IeajXDqqb9BzDLFPwHLioz2TRuw;->f$2:Lcom/android/internal/telephony/IccCardConstants$State;

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleSimStateChange$42(IILcom/android/internal/telephony/IccCardConstants$State;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
