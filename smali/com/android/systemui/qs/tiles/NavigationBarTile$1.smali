.class Lcom/android/systemui/qs/tiles/NavigationBarTile$1;
.super Ljava/lang/Object;
.source "NavigationBarTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/NavigationBarTile;->showOneHandModePopup(Landroid/content/DialogInterface$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NavigationBarTile;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$1;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 233
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.settings.ONEHAND_OPERATION_SETTING"

    .line 234
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 235
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, ":settings:fragment_args_key"

    const-string v1, "gesture_type"

    .line 237
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ":settings:show_fragment_args"

    .line 238
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 239
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$1;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$100(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method
