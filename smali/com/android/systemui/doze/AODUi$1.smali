.class Lcom/android/systemui/doze/AODUi$1;
.super Ljava/lang/Object;
.source "AODUi.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/AODUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/AODUi;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/AODUi;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/android/systemui/doze/AODUi$1;->this$0:Lcom/android/systemui/doze/AODUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartedWakingUp()V
    .locals 1

    .line 21
    iget-object p0, p0, Lcom/android/systemui/doze/AODUi$1;->this$0:Lcom/android/systemui/doze/AODUi;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeUi;->mNeedScreenOff:Z

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeUi;->updateAnimateScreenOff()V

    return-void
.end method
