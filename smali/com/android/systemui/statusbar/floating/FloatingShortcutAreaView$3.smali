.class Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$3;
.super Ljava/lang/Object;
.source "FloatingShortcutAreaView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$3;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$3;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$502(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;Z)Z

    .line 211
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$3;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$200(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$3;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$502(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;Z)Z

    .line 205
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$3;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$200(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    return-void
.end method
