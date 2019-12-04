.class public final synthetic Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$mw-Icz9hxHBzcoxGQt0x8hYM-7k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$mw-Icz9hxHBzcoxGQt0x8hYM-7k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$mw-Icz9hxHBzcoxGQt0x8hYM-7k;

    invoke-direct {v0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$mw-Icz9hxHBzcoxGQt0x8hYM-7k;-><init>()V

    sput-object v0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$mw-Icz9hxHBzcoxGQt0x8hYM-7k;->INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$mw-Icz9hxHBzcoxGQt0x8hYM-7k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->lambda$updateVisualCueIcon$3(Ljava/lang/Throwable;)V

    return-void
.end method
