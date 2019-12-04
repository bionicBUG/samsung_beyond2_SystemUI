.class public final synthetic Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionView$owyEEbEf0Ku6B_TOzFQqeHOC62c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionView$owyEEbEf0Ku6B_TOzFQqeHOC62c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionView$owyEEbEf0Ku6B_TOzFQqeHOC62c;

    invoke-direct {v0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionView$owyEEbEf0Ku6B_TOzFQqeHOC62c;-><init>()V

    sput-object v0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionView$owyEEbEf0Ku6B_TOzFQqeHOC62c;->INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionView$owyEEbEf0Ku6B_TOzFQqeHOC62c;

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

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->lambda$updateVisualCueIcon$2(Ljava/lang/Throwable;)V

    return-void
.end method
