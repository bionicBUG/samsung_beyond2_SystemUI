.class Lcom/android/systemui/statusbar/policy/CallbackHandler$4;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$activityIcon:I

.field final synthetic val$roamingIcon:I

.field final synthetic val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field final synthetic val$statusType:I

.field final synthetic val$subId:I

.field final synthetic val$typeContentDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIILjava/lang/String;I)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;->val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;->val$statusType:I

    iput p4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;->val$activityIcon:I

    iput p5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;->val$roamingIcon:I

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;->val$typeContentDescription:Ljava/lang/String;

    iput p7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;->val$subId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

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

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 205
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;->val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;->val$statusType:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;->val$activityIcon:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;->val$roamingIcon:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;->val$typeContentDescription:Ljava/lang/String;

    iget v8, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;->val$subId:I

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
