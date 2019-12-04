.class public final Lcom/android/systemui/util/UiThreadMonitor$Companion;
.super Ljava/lang/Object;
.source "UiThreadMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/UiThreadMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/util/UiThreadMonitor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/android/systemui/util/UiThreadMonitor;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 277
    sget-object p0, Lcom/android/systemui/util/UiThreadMonitor;->instance:Lcom/android/systemui/util/UiThreadMonitor;

    return-object p0
.end method
