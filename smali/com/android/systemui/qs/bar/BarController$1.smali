.class Lcom/android/systemui/qs/bar/BarController$1;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Lcom/android/systemui/qs/bar/BarItem$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/BarController;->addAllBarItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/BarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/BarController;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBarHeightChanged()V
    .locals 2

    const-string v0, "QSBarController"

    const-string v1, "onBarHeightChanged"

    .line 189
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/BarController;->access$000(Lcom/android/systemui/qs/bar/BarController;)V

    .line 191
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/BarController;->access$100(Lcom/android/systemui/qs/bar/BarController;)Lcom/android/systemui/qs/bar/BarController$BarItemCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/qs/bar/BarController$BarItemCallback;->onBarHeightChanged()V

    return-void
.end method

.method public onBarTypeChanged()V
    .locals 2

    const-string v0, "QSBarController"

    const-string v1, "onBarTypeChanged"

    .line 203
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/BarController;->access$000(Lcom/android/systemui/qs/bar/BarController;)V

    .line 205
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/BarController;->access$100(Lcom/android/systemui/qs/bar/BarController;)Lcom/android/systemui/qs/bar/BarController$BarItemCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/qs/bar/BarController$BarItemCallback;->onBarTypeChanged()V

    return-void
.end method

.method public onBarVisibilityChanged()V
    .locals 2

    const-string v0, "QSBarController"

    const-string v1, "onBarVisibilityChanged"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/BarController;->access$000(Lcom/android/systemui/qs/bar/BarController;)V

    .line 198
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/BarController;->access$100(Lcom/android/systemui/qs/bar/BarController;)Lcom/android/systemui/qs/bar/BarController$BarItemCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/qs/bar/BarController$BarItemCallback;->onBarVisibilityChanged()V

    return-void
.end method
