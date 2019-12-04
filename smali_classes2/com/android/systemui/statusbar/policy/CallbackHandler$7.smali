.class Lcom/android/systemui/statusbar/policy/CallbackHandler$7;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setMPTCPIndicators(ZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$activityIcon:I

.field final synthetic val$gigaIcon:I

.field final synthetic val$typeIcon:I

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZIII)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$visible:Z

    iput p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$typeIcon:I

    iput p4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$gigaIcon:I

    iput p5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$activityIcon:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->access$000(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 249
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$visible:Z

    iget v3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$typeIcon:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$gigaIcon:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$activityIcon:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMPTCPIndicators(ZIII)V

    goto :goto_0

    :cond_0
    return-void
.end method
