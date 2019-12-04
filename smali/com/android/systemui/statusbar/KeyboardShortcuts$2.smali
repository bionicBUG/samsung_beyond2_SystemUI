.class Lcom/android/systemui/statusbar/KeyboardShortcuts$2;
.super Landroid/database/ContentObserver;
.source "KeyboardShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;Landroid/os/Handler;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->access$100(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 129
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->access$100(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/content/Context;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->show(Landroid/content/Context;I)V

    return-void
.end method
