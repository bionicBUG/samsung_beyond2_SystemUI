.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$3EuDdVTe6fG9gvxwnc7rSIlwKSc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Z

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$3EuDdVTe6fG9gvxwnc7rSIlwKSc;->f$0:Z

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$3EuDdVTe6fG9gvxwnc7rSIlwKSc;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$3EuDdVTe6fG9gvxwnc7rSIlwKSc;->f$0:Z

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$3EuDdVTe6fG9gvxwnc7rSIlwKSc;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$updateActivityLockScreenState$5(ZZ)V

    return-void
.end method
