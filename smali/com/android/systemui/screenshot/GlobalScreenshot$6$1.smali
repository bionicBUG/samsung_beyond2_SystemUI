.class Lcom/android/systemui/screenshot/GlobalScreenshot$6$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot$6;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$6;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot$6;)V
    .locals 0

    .line 1596
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1599
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->val$finisher:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Z)V

    return-void
.end method
