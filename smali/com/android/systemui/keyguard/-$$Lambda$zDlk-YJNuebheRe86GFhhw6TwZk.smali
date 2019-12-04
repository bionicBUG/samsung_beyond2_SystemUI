.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$zDlk-YJNuebheRe86GFhhw6TwZk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$zDlk-YJNuebheRe86GFhhw6TwZk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$zDlk-YJNuebheRe86GFhhw6TwZk;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/-$$Lambda$zDlk-YJNuebheRe86GFhhw6TwZk;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/-$$Lambda$zDlk-YJNuebheRe86GFhhw6TwZk;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$zDlk-YJNuebheRe86GFhhw6TwZk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-interface {p1}, Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;->onScreenInternalTurningOff()V

    return-void
.end method
