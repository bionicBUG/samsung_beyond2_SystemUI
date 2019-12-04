.class Lcom/android/systemui/appdock/TabletActivityStarter$1;
.super Ljava/lang/Object;
.source "TabletActivityStarter.java"

# interfaces
.implements Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/TabletActivityStarter;->getActivityLaunchOptions(I)Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/TabletActivityStarter;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/TabletActivityStarter;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/appdock/TabletActivityStarter$1;->this$0:Lcom/android/systemui/appdock/TabletActivityStarter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 0

    .line 78
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    return-void
.end method

.method public onAnimationStart([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 0

    .line 72
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 73
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method
