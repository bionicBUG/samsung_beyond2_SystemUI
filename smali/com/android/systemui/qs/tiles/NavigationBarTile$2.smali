.class Lcom/android/systemui/qs/tiles/NavigationBarTile$2;
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

    .line 242
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$2;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 244
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method