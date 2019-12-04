.class Lcom/android/systemui/util/DesktopManager$1$1;
.super Ljava/lang/Object;
.source "DesktopManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/DesktopManager$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/util/DesktopManager$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/DesktopManager$1;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager$1$1;->this$1:Lcom/android/systemui/util/DesktopManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "DesktopManager"

    const-string v1, "SystemUIDesktop is died"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$1$1;->this$1:Lcom/android/systemui/util/DesktopManager$1;

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/util/DesktopManager;->access$002(Lcom/android/systemui/util/DesktopManager;Lcom/android/internal/desktop/IDesktopBar;)Lcom/android/internal/desktop/IDesktopBar;

    return-void
.end method
