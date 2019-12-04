.class Lcom/android/systemui/statusbar/policy/CallbackHandler$5;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setBtTetherIndicators(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$btTetherVisible:Z

.field final synthetic val$iconId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZI)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->val$btTetherVisible:Z

    iput p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->val$iconId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

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

    .line 220
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->val$btTetherVisible:Z

    iget v3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->val$iconId:I

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setBtTetherIndicators(ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method
