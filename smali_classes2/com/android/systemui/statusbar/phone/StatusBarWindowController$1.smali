.class Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;
.super Landroid/os/Handler;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->updateUserActivityTimeout(Z)V

    :goto_1
    return-void
.end method
