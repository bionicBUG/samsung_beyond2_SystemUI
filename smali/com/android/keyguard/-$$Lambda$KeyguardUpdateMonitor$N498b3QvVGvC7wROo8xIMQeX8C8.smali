.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$N498b3QvVGvC7wROo8xIMQeX8C8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Z

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$N498b3QvVGvC7wROo8xIMQeX8C8;->f$0:I

    iput-boolean p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$N498b3QvVGvC7wROo8xIMQeX8C8;->f$1:Z

    iput p3, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$N498b3QvVGvC7wROo8xIMQeX8C8;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$N498b3QvVGvC7wROo8xIMQeX8C8;->f$0:I

    iget-boolean v1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$N498b3QvVGvC7wROo8xIMQeX8C8;->f$1:Z

    iget p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$N498b3QvVGvC7wROo8xIMQeX8C8;->f$2:I

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$onTrustChanged$0(IZILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
