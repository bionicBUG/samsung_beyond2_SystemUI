.class public final synthetic Lcom/android/keyguard/punchhole/-$$Lambda$KeyguardPunchHoleVIView$8ZCHZQfqeeOKhSVCVLs9l5dTkTg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/-$$Lambda$KeyguardPunchHoleVIView$8ZCHZQfqeeOKhSVCVLs9l5dTkTg;->f$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iput-boolean p2, p0, Lcom/android/keyguard/punchhole/-$$Lambda$KeyguardPunchHoleVIView$8ZCHZQfqeeOKhSVCVLs9l5dTkTg;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/punchhole/-$$Lambda$KeyguardPunchHoleVIView$8ZCHZQfqeeOKhSVCVLs9l5dTkTg;->f$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-boolean p0, p0, Lcom/android/keyguard/punchhole/-$$Lambda$KeyguardPunchHoleVIView$8ZCHZQfqeeOKhSVCVLs9l5dTkTg;->f$1:Z

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0, p0, p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->lambda$prepareVI$1$KeyguardPunchHoleVIView(ZLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
