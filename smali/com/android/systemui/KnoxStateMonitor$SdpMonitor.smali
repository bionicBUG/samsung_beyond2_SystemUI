.class Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;
.super Ljava/lang/Object;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/KnoxStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 2366
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private registerCallback()V
    .locals 0

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 2370
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;->registerCallback()V

    return-void
.end method

.method public isSdpSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
