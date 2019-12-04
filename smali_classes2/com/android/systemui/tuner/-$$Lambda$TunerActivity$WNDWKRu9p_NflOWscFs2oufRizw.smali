.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$TunerActivity$WNDWKRu9p_NflOWscFs2oufRizw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$TunerActivity$WNDWKRu9p_NflOWscFs2oufRizw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/tuner/-$$Lambda$TunerActivity$WNDWKRu9p_NflOWscFs2oufRizw;

    invoke-direct {v0}, Lcom/android/systemui/tuner/-$$Lambda$TunerActivity$WNDWKRu9p_NflOWscFs2oufRizw;-><init>()V

    sput-object v0, Lcom/android/systemui/tuner/-$$Lambda$TunerActivity$WNDWKRu9p_NflOWscFs2oufRizw;->INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$TunerActivity$WNDWKRu9p_NflOWscFs2oufRizw;

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

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p1}, Lcom/android/systemui/tuner/TunerActivity;->lambda$onDestroy$1(Lcom/android/systemui/keyguard/DisplayLifecycle;)V

    return-void
.end method
