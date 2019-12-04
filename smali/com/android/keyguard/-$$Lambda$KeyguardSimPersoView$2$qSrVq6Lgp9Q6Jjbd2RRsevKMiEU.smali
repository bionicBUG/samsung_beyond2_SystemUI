.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardSimPersoView$2$qSrVq6Lgp9Q6Jjbd2RRsevKMiEU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardSimPersoView$2;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPersoView$2;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSimPersoView$2$qSrVq6Lgp9Q6Jjbd2RRsevKMiEU;->f$0:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iput-boolean p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSimPersoView$2$qSrVq6Lgp9Q6Jjbd2RRsevKMiEU;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSimPersoView$2$qSrVq6Lgp9Q6Jjbd2RRsevKMiEU;->f$0:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iget-boolean p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSimPersoView$2$qSrVq6Lgp9Q6Jjbd2RRsevKMiEU;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSimPersoView$2;->lambda$onSimCheckResponse$0$KeyguardSimPersoView$2(Z)V

    return-void
.end method
