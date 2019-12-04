.class final Lcom/android/systemui/util/UiThreadMonitor$updateLooperMsgLog$1;
.super Ljava/lang/Object;
.source "UiThreadMonitor.kt"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/UiThreadMonitor;->updateLooperMsgLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/util/UiThreadMonitor$updateLooperMsgLog$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/UiThreadMonitor$updateLooperMsgLog$1;

    invoke-direct {v0}, Lcom/android/systemui/util/UiThreadMonitor$updateLooperMsgLog$1;-><init>()V

    sput-object v0, Lcom/android/systemui/util/UiThreadMonitor$updateLooperMsgLog$1;->INSTANCE:Lcom/android/systemui/util/UiThreadMonitor$updateLooperMsgLog$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final println(Ljava/lang/String;)V
    .locals 0

    const-string p0, "UiThreadMonitor"

    .line 210
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
