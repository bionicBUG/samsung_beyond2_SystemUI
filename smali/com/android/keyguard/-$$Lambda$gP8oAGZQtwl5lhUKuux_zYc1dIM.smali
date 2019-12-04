.class public final synthetic Lcom/android/keyguard/-$$Lambda$gP8oAGZQtwl5lhUKuux_zYc1dIM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/-$$Lambda$gP8oAGZQtwl5lhUKuux_zYc1dIM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/-$$Lambda$gP8oAGZQtwl5lhUKuux_zYc1dIM;

    invoke-direct {v0}, Lcom/android/keyguard/-$$Lambda$gP8oAGZQtwl5lhUKuux_zYc1dIM;-><init>()V

    sput-object v0, Lcom/android/keyguard/-$$Lambda$gP8oAGZQtwl5lhUKuux_zYc1dIM;->INSTANCE:Lcom/android/keyguard/-$$Lambda$gP8oAGZQtwl5lhUKuux_zYc1dIM;

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

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onOpenThemeReApply()V

    return-void
.end method
