.class Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;
.super Ljava/lang/Object;
.source "ScreenControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controller/ScreenControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenShotRunnable"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/systemui/controller/ScreenControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controller/ScreenControllerImpl;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p3, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->mIntent:Landroid/content/Intent;

    .line 172
    iput-object p2, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;)Landroid/content/Intent;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;)Landroid/content/Context;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controller/ScreenControllerImpl;->access$000(Lcom/android/systemui/controller/ScreenControllerImpl;)I

    move-result v0

    const-string v1, "ScreenControllerImpl"

    const/16 v2, 0xf

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controller/ScreenControllerImpl;->access$100(Lcom/android/systemui/controller/ScreenControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waiting for a short time : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/controller/ScreenControllerImpl;->access$000(Lcom/android/systemui/controller/ScreenControllerImpl;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controller/ScreenControllerImpl;->access$200(Lcom/android/systemui/controller/ScreenControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    iget-object p0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/controller/ScreenControllerImpl;->access$008(Lcom/android/systemui/controller/ScreenControllerImpl;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "start screenshot"

    .line 182
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controller/ScreenControllerImpl;->access$200(Lcom/android/systemui/controller/ScreenControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable$1;-><init>(Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/controller/ScreenControllerImpl;->access$502(Lcom/android/systemui/controller/ScreenControllerImpl;Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;)Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    .line 190
    iget-object p0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/controller/ScreenControllerImpl;->access$002(Lcom/android/systemui/controller/ScreenControllerImpl;I)I

    :goto_0
    return-void
.end method
