.class Lcom/android/systemui/qs/tiles/LocationTile$3;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/LocationTile;->showLocationConsentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocationTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$3;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 212
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$3;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    .line 213
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile$3;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$202(Lcom/android/systemui/qs/tiles/LocationTile;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
